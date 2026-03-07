require "webrick/httpserver"

module Anomaly
  module WEBrickConnectionResetPatch
    def run(sock)
      while true
        req = create_request(@config)
        res = create_response(@config)
        server = self
        begin
          timeout = @config[:RequestTimeout]
          while timeout > 0
            break if sock.to_io.wait_readable(0.5)
            break if @status != :Running
            timeout -= 0.5
          end
          raise WEBrick::HTTPStatus::EOFError if timeout <= 0 || @status != :Running
          raise WEBrick::HTTPStatus::EOFError if sock.eof?

          req.parse(sock)
          res.request_method = req.request_method
          res.request_uri = req.request_uri
          res.request_http_version = req.http_version
          res.keep_alive = req.keep_alive?
          server = lookup_server(req) || self

          if (callback = server[:RequestCallback])
            callback.call(req, res)
          elsif (callback = server[:RequestHandler])
            @logger.warn(":RequestHandler is deprecated, please use :RequestCallback")
            callback.call(req, res)
          end

          server.service(req, res)
        rescue WEBrick::HTTPStatus::EOFError, WEBrick::HTTPStatus::RequestTimeout
          res.set_error($!)
        rescue Errno::ECONNRESET, Errno::EPIPE, Errno::ECONNABORTED
          # Browsers can drop keep-alive sockets during LiveReload cycles.
          break
        rescue WEBrick::HTTPStatus::Error
          @logger.error($!.message)
          res.set_error($!)
        rescue WEBrick::HTTPStatus::Status
          res.status = $!.code
        rescue StandardError
          @logger.error($!)
          res.set_error($!, true)
        ensure
          if req.request_line
            req.fixup if req.keep_alive? && res.keep_alive?
            res.send_response(sock)
            server.access_log(@config, req, res)
          end
        end

        break if @http_version < "1.1"
        break unless req.keep_alive?
        break unless res.keep_alive?
      end
    end
  end
end

WEBrick::HTTPServer.prepend(Anomaly::WEBrickConnectionResetPatch)
