# AOP Wiki KER Challenge: AI-Extracted XML Repository

This repository hosts structured XML data for **Key Event Relationships (KERs)** related to oligodendrocyte differentiation and myelination. 

**Note on Purpose:** The primary output of this project is the **machine-readable XML data** generated directly from scientific literature using Large Language Models (LLMs). The XSLT visualization is provided solely as a tool to facilitate human validation of the AI's extraction accuracy.


## 🏆 Challenge Outcome
This work is a contribution to the project:
**[AI4AOP](https://tinyurl.com/bdhubmme)**
Managed by the **European Commission's Joint Research Centre (JRC)** and **[SCAHT](https://www.scaht.org/en/)**, this initiative explores how artificial intelligence can accelerate the development and characterization of Adverse Outcome Pathways to support non-animal testing strategies.


## 🌐 Live Visualization
The XML files in this repository are styled using XSLT to be human-readable. View the styled landing page here:
**[https://ideaconsult.github.io/aopwiki_challenge/](https://ideaconsult.github.io/aopwiki_challenge/)**

---

## 🧬 Biological Context
The repository focuses on a specific AOP segment concerning developmental neurotoxicity:

1. **KER 1977 → 2116**: [Disruption of sodium channel gating kinetics] to [Decreased, oligodendrocyte differentiation].
   - **Weight of Evidence**: Low-to-Moderate.
   - **Key Insight**: Explores how altered neuronal firing patterns impact activity-dependent signaling required for OPC maturation.

2. **KER 2116 → 2107**: [Decreased, oligodendrocyte differentiation] to [Hypomyelination].
   - **Weight of Evidence**: High.
   - **Key Insight**: A direct mechanistic link where the failure of OPCs to mature results in an obligatory reduction of CNS myelin.

---

## 🛠 Technical Implementation
This project uses "Browser-Side Transformation" to display XML data:

- **XML**: Validated against the `aop-xml` namespace (`http://www.aopkb.org/aop-xml`).
- **XSLT (`ker.xsl`)**: A stylesheet that transforms raw XML into a clean, responsive HTML format with highlighted evidence levels and citations.
- **GitHub Pages**: Used to host files as a web server, bypassing browser security restrictions for local XSL transformations.

---

## 🔗 Related Resources
* **[AOPMapper](https://aop.adma.ai)**: Advanced mapping and visualization tool for Adverse Outcome Pathways.
* **[AOP Wiki](https://aopwiki.org)**: The central repository for AOP knowledge.
* **[AI4AOP](https://tinyurl.com/bdhubmme)**: Boosting the Adverse Outcome Pathway Framework with AI.

---
*Created for the AOP Wiki KER Challenge (2026).*
