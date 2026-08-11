---
layout: post
title:  "Sovereign Substrates"
subtitle: "Enterprise AI Success Depends on Pre-Inference Architecture, Not Cheaper Models."
author: Yasser
categories: [ Thesis ]
tags: [ AI Strategy ]
card_pill: "AI Strategy"
image: assets/images/sdo.jpg
published: true
---

<p>AI adoption in the enterprise has been slow, expensive and inconsistent.</p>
<p>Despite significant financial commitment, several organizations have reported exhausting their AI budgets earlier than anticipated, and having to place caps on expenses mid-year without concrete results.</p>

<p>The reasons are many and they point to the organization and not the technology. Enterprise finance needs predictability in costs, and a way to understand ROI.<br>
There are operational mismatches as organizations tend to work in vertical silos whereas AI operates best with lateral access to understand and access cross-functional workflows and data. Metrics for measuring success vary, internal expertise is unevenly distributed, vendor lock-in and data protection risks are real, and with geopolitical entanglement endorsed at the governmental level, there are policy and access risks.</p>

<p>At a higher level there are governance, ownership and budgetary concerns, and this is before model selection, routing and varying API costs.</p>

<p>These bottlenecks are <u>pre-inference</u>; before an AI model is called.</p>

<span class="list-header">Cheaper models are not the solution</span>

<p>If financial costs were the only obstacle, the availability of excellent and cheaper OSS models from Chinese labs Z.ai, Tencent, Deepseek, Minimax, and Kimi would have circumvented the problem and the current landscape would look very different.<br>Lower costs, though desirable and advantageous, haven't proven to be the key that unlocks scale in the enterprise.</p>

<h4 class="section-header">The Missing Foundation</h4>

<p>AI, despite being intelligent, multimodal technology capable of reasoning isn't plug-and-play because it requires inputs and context, permissions and provenance, and clear security and governance controls.</p>

<p>The ecosystem required to make AI work inside the enterprise requires a significant architectural change; a sovereign, pre-inference, model-agnostic layer inside the organizational boundary which augments existing infrastructure, assets and workflows, while protecting proprietary data and processes.</p>

<p>Context is continuously produced by legacy applications, which means either updating those apps, or adding a reliable data conversion layer to their output, <i>so that a machine-readable substrate becomes the organic byproduct of everyday use</i>.</p>
<p>Starting with this, the substrate can be extensible but requires at least three additional layers:</p>
<ul class="custom-bullets">
<li>A canonical layer to establish <u>organizational state</u> (what is true now), and <u>memory</u> (what has been learned) including <u>context</u> (what is relevant to the task) and <u>provenance</u> (where it came from)</li> 
<li>A governance layer for policy, identity and permissions</li>
<li>An execution layer for model routers, agent runtime and tools etc.</li>
</ul>


<svg viewBox="0 0 800 580" xmlns="http://www.w3.org/2000/svg">
  <title>The sovereign substrate stack: external data flows through ingestion and conversion into a canonical machine-readable substrate, then governance, then the execution layer</title>
  <defs>
    <marker id="arrow" viewBox="0 0 10 10" refX="8" refY="5" markerWidth="7" markerHeight="7" orient="auto">
      <path d="M 0 0 L 10 5 L 0 10 z" fill="#CBAF69" />
    </marker>
  </defs>

  <!-- Background -->
  <rect width="800" height="580" fill="#fcfcfc" />

  <!-- External Data (outside the organizational boundary) -->
  <rect x="260" y="24" width="280" height="44" fill="#ffffff" stroke="#dcdcdc" stroke-width="1" stroke-dasharray="5 4" />
  <text x="400" y="51" font-family="Poppins, sans-serif" font-size="16" text-anchor="middle" font-weight="300" fill="#3E3E3E">External Data</text>

  <line x1="400" y1="68" x2="400" y2="92" stroke="#CBAF69" stroke-width="1.5" marker-end="url(#arrow)" />

  <!-- Ingestion & Conversion -->
  <rect x="260" y="96" width="280" height="44" fill="#f9f9f9" stroke="#eaeaea" stroke-width="1" />
  <text x="400" y="123" font-family="Poppins, sans-serif" font-size="16" text-anchor="middle" font-weight="300" fill="#3E3E3E">Ingestion &amp; Conversion</text>

  <line x1="400" y1="140" x2="400" y2="164" stroke="#CBAF69" stroke-width="1.5" marker-end="url(#arrow)" />

  <!-- Canonical Machine-Readable Substrate -->
  <rect x="100" y="168" width="600" height="130" fill="#f9f9f9" stroke="#CBAF69" stroke-width="1" />
  <text x="400" y="197" font-family="Poppins, sans-serif" font-size="17" text-anchor="middle" font-weight="300" fill="#BCA060">Canonical Machine-Readable Substrate</text>

  <rect x="130" y="212" width="170" height="68" fill="#ffffff" stroke="#CBAF69" stroke-width="1" />
  <text x="215" y="240" font-family="Poppins, sans-serif" font-size="14" text-anchor="middle" font-weight="300" fill="#3E3E3E">State</text>
  <text x="215" y="261" font-family="Poppins, sans-serif" font-size="14" text-anchor="middle" font-weight="300" fill="#3E3E3E">Knowledge</text>

  <rect x="315" y="212" width="170" height="68" fill="#ffffff" stroke="#CBAF69" stroke-width="1" />
  <text x="400" y="240" font-family="Poppins, sans-serif" font-size="14" text-anchor="middle" font-weight="300" fill="#3E3E3E">Memory</text>
  <text x="400" y="261" font-family="Poppins, sans-serif" font-size="14" text-anchor="middle" font-weight="300" fill="#3E3E3E">Context</text>

  <rect x="500" y="212" width="170" height="68" fill="#ffffff" stroke="#CBAF69" stroke-width="1" />
  <text x="585" y="240" font-family="Poppins, sans-serif" font-size="14" text-anchor="middle" font-weight="300" fill="#3E3E3E">Provenance</text>


  <line x1="400" y1="298" x2="400" y2="322" stroke="#CBAF69" stroke-width="1.5" marker-end="url(#arrow)" />

  <!-- Governance -->
  <rect x="100" y="326" width="600" height="100" fill="#f9f9f9" stroke="#eaeaea" stroke-width="1" />
  <text x="400" y="355" font-family="Poppins, sans-serif" font-size="17" text-anchor="middle" font-weight="300" fill="#BCA060">Governance</text>

  <rect x="130" y="368" width="126" height="44" fill="#ffffff" stroke="#eaeaea" stroke-width="1" />
  <text x="193" y="395" font-family="Poppins, sans-serif" font-size="14" text-anchor="middle" font-weight="300" fill="#3E3E3E">Authority</text>

  <rect x="268" y="368" width="126" height="44" fill="#ffffff" stroke="#eaeaea" stroke-width="1" />
  <text x="331" y="395" font-family="Poppins, sans-serif" font-size="14" text-anchor="middle" font-weight="300" fill="#3E3E3E">Policy</text>

  <rect x="406" y="368" width="126" height="44" fill="#ffffff" stroke="#eaeaea" stroke-width="1" />
  <text x="469" y="395" font-family="Poppins, sans-serif" font-size="14" text-anchor="middle" font-weight="300" fill="#3E3E3E">Identity</text>

  <rect x="544" y="368" width="126" height="44" fill="#ffffff" stroke="#eaeaea" stroke-width="1" />
  <text x="607" y="395" font-family="Poppins, sans-serif" font-size="14" text-anchor="middle" font-weight="300" fill="#3E3E3E">Permissions</text>

  <line x1="400" y1="426" x2="400" y2="450" stroke="#CBAF69" stroke-width="1.5" marker-end="url(#arrow)" />

  <!-- Execution Layer -->
  <rect x="100" y="454" width="600" height="100" fill="#f9f9f9" stroke="#eaeaea" stroke-width="1" />
  <text x="400" y="483" font-family="Poppins, sans-serif" font-size="17" text-anchor="middle" font-weight="300" fill="#BCA060">Execution Layer</text>

  <rect x="130" y="496" width="170" height="44" fill="#ffffff" stroke="#eaeaea" stroke-width="1" />
  <text x="215" y="523" font-family="Poppins, sans-serif" font-size="14" text-anchor="middle" font-weight="300" fill="#3E3E3E">Agent Runtime</text>

  <rect x="315" y="496" width="170" height="44" fill="#ffffff" stroke="#eaeaea" stroke-width="1" />
  <text x="400" y="523" font-family="Poppins, sans-serif" font-size="14" text-anchor="middle" font-weight="300" fill="#3E3E3E">Model Router</text>

  <rect x="500" y="496" width="170" height="44" fill="#ffffff" stroke="#eaeaea" stroke-width="1" />
  <text x="585" y="523" font-family="Poppins, sans-serif" font-size="14" text-anchor="middle" font-weight="300" fill="#3E3E3E">Tool Interfaces</text>
</svg>

<h4 class="section-header">Why This Design</h4>

<p>The criterion outlined a year ago in <a href="https://thinking.anomaly.ae/Agents-of-chaos/" style="color: #BCA060; text-decoration: none; border-bottom: 1px solid #eaeaea;" target="_blank">Agents of Chaos</a> is more obvious today.</p>

<p>"Maintaining stateful interactions and memory adds complexity and most companies aren’t ready to invest in the infrastructure needed for real agent-like systems when the technology arc hasn’t reached maturity. Even in the B2B context, it is a reenactment of the Cloud-based vs on-prem debate as organisations require personalisation - knowing their structures, workflows, repositories - for the technology to be truly effective, and this has security and dependency implications."</p>

<p>This encapsulates the struggle enterprises have with integrating AI today: vendor dependency, governance and policy, memory and context, and data security.<br>As posited, coding agents have continued to improve, arguably more than expected, and the conclusion that true agency requires personalization still holds.<br>In enterprise terms, personalization is a durable, governed understanding of owned and protected data, structures, workflows and repositories.</p>

<p>Separating knowledge from governance, policy and execution gives organizations control over context, identity and proprietary data prior to inference. Additionally, prefixing data conversion pipelines ensures that used data is current, and that incremental integration efforts minimize friction.</p>


<h4 class="section-header">Sovereign Does Not Mean Self-Built</h4>

<p>This is likely to operate best as a composable substrate with a mixture of internal and external tools. The effort to build everything in-house would be cost-prohibitive even if it were possible. No organization, even the most sophisticated tools, is capable of creating, maintaining and operating all of its software without diluting its focus.</p>

<p>Sovereignty here means absolute control with interchangeable components making up the less important parts of the stack, while its core is owned and doesn't require the organization to be beholden to any specific vendor for its operations and growth. Most importantly perhaps, the substrate illustrated above lets most human capital continue doing what it does without having to relearn or upskill, while simultaneously infusing the organization with the intelligence and efficiencies of AI.</p>

> A composable sovereign substrate is the architectural requirement for seamless AI integration in the enterprise.


<h4 class="section-header">Anomaly's Stance: Composable Proof-of-Concept</h4>

<p>We believe AI fundamentally changes the operation, value and capability of software, and this requires a new architecture for human-software interaction.</p>

<p>As inference costs collapse, capability standardizes and intelligence converges at comparable levels, the catalyst differentiating performance for the enterprise class will be the substrate and not the model. Building this infrastructure inside the organizational boundary is strategically more sound and sustainable than chasing models and re-platforming annually, while being vulnerable to variable costs and data leakage.</p>

<p>To illustrate this principle, we’ve built a narrow, composable component that can slot into any organization's data conversion layer. <a href="https://www.skygate.network" style="color: #BCA060; text-decoration: none; border-bottom: 1px solid #eaeaea;" target="_blank">Skygate</a> is a candidate intelligence data platform to help organizations create structured, machine-readable candidate objects.</p>

<svg viewBox="0 0 800 200" xmlns="http://www.w3.org/2000/svg">
  <title>A PDF or DOCX resume is converted into a structured candidate object, which powers search, comparison, profiles, matching, exports, API access, branded resumes and rendered forms</title>
  <defs>
    <marker id="flow-arrow" viewBox="0 0 10 10" refX="8" refY="5" markerWidth="7" markerHeight="7" orient="auto">
      <path d="M 0 0 L 10 5 L 0 10 z" fill="#CBAF69" />
    </marker>
  </defs>

  <!-- Background -->
  <rect width="800" height="200" fill="#fcfcfc" />

  <!-- Input -->
  <rect x="30" y="70" width="170" height="56" fill="#ffffff" stroke="#dcdcdc" stroke-width="1" stroke-dasharray="5 4" />
  <text x="115" y="103" font-family="Poppins, sans-serif" font-size="13" text-anchor="middle" font-weight="300" fill="#3E3E3E">PDF / DOCX Resume</text>

  <line x1="200" y1="98" x2="236" y2="98" stroke="#CBAF69" stroke-width="1.5" marker-end="url(#flow-arrow)" />

  <!-- Structured Candidate Object -->
  <rect x="240" y="64" width="200" height="68" fill="#f9f9f9" stroke="#CBAF69" stroke-width="1" />
  <text x="340" y="94" font-family="Poppins, sans-serif" font-size="14" text-anchor="middle" font-weight="300" fill="#BCA060">Structured</text>
  <text x="340" y="114" font-family="Poppins, sans-serif" font-size="14" text-anchor="middle" font-weight="300" fill="#BCA060">Candidate Object</text>

  <line x1="440" y1="98" x2="476" y2="98" stroke="#CBAF69" stroke-width="1.5" marker-end="url(#flow-arrow)" />

  <!-- Outputs -->
  <g font-family="Poppins, sans-serif" font-size="13" font-weight="300" fill="#3E3E3E" text-anchor="middle">
    <rect x="480" y="22" width="140" height="32" fill="#ffffff" stroke="#eaeaea" stroke-width="1" />
    <text x="550" y="43">Search</text>

    <rect x="630" y="22" width="140" height="32" fill="#ffffff" stroke="#eaeaea" stroke-width="1" />
    <text x="700" y="43">Comparison</text>

    <rect x="480" y="62" width="140" height="32" fill="#ffffff" stroke="#eaeaea" stroke-width="1" />
    <text x="550" y="83">Profiles</text>

    <rect x="630" y="62" width="140" height="32" fill="#ffffff" stroke="#eaeaea" stroke-width="1" />
    <text x="700" y="83">Matching</text>

    <rect x="480" y="102" width="140" height="32" fill="#ffffff" stroke="#eaeaea" stroke-width="1" />
    <text x="550" y="123">Exports</text>

    <rect x="630" y="102" width="140" height="32" fill="#ffffff" stroke="#eaeaea" stroke-width="1" />
    <text x="700" y="123">API</text>

    <rect x="480" y="142" width="140" height="32" fill="#ffffff" stroke="#eaeaea" stroke-width="1" />
    <text x="550" y="163">Branded Resumes</text>

    <rect x="630" y="142" width="140" height="32" fill="#ffffff" stroke="#eaeaea" stroke-width="1" />
    <text x="700" y="163">Rendered Forms</text>
  </g>
</svg>

<p>Skygate dissolves talent data to make it polymorphic: information imbued with meaning and structure, separated from its original form, machine-operable, and recomposable into whatever output that context demands.</p>

<p>Recruitment firms and large employers can turn resumes and hiring documents into structured, reusable data that can power existing systems and the next generation of AI-ready and operated applications, while keeping data and workflows private, remaining model-agnostic and increasing productivity.</p>


<p>It is upon a foundation with similar traits that hybrid human/machine corporate systems and structures will likely be built.</p>


