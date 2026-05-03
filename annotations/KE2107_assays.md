# Measurement Assays for KE2107 — Hypomyelination

**KE2107** is a tissue-level key event defined by a pathological reduction in the extent, thickness, or completeness of CNS myelin sheaths.  

**Primary measurable quantities:**
- Myelin sheath thickness relative to axon diameter (**g-ratio**)
- Myelin protein abundance
- Myelin ultrastructure
- White matter signal intensity

---

## Tier 1 — Electron Microscopy (gold standard quantitative)

Transmission electron microscopy (**TEM**) with g-ratio analysis is the definitive assay.

- Myelinated axons are imaged in cross-section (spinal cord, optic nerve, corpus callosum)
- **g-ratio** = inner axon diameter ÷ total fibre diameter (including myelin)
- Normal CNS g-ratio: ~0.77  
- Hypomyelination: statistically significant increase in g-ratio  

**Sampling standard:**
- 100–200 axons per animal  
- ≥3 animals  

**References:** Wahl 2014, Bercury 2014  

**Complementary TEM metrics:**
- Myelin periodicity (~12 nm for compact CNS myelin)
- % unmyelinated axons above calibre threshold (~0.2 µm)
- Compact vs non-compact myelin (qualitative)

---

## Tier 2 — Immunofluorescence / Immunohistochemistry

Myelin protein staining in tissue sections (cryosections or vibratome sections):

| Marker | Reports | Notes |
|--------|--------|------|
| **MBP** | Compact myelin, overall density | Most used; correlates with TEM g-ratio |
| **PLP1** | Compact CNS myelin | Co-labels with MBP; excludes PNS |
| **MAG** | Periaxonal membrane, non-compact | Sensitive early marker |
| **MOG** | Outermost myelin lamella | Late-stage compaction |
| **CNPase** | Non-compact myelin (loops) | Labels wrapping processes |

**Quantification:**
- Automated image analysis (ImageJ/FIJI or HALO)
- Integrated MBP fluorescence intensity normalized to white matter area
- Confocal imaging enables internode length measurement

---

## Tier 3 — Western Blot / ELISA

Quantitative measurement of myelin proteins:
- MBP
- PLP1
- CNPase
- MAG

**Normalization:**
- Total protein (BCA)
- OL-lineage housekeeping reference

**Example finding (Bercury 2014):**
- ~50% reduction in myelin RNAs at P14
- Nearly absent MBP protein at P29

---

## Tier 4 — RT-qPCR

Gene expression analysis of:
- *Mbp*
- *Plp1*
- *Mag*
- *Mog*
- *Cnp*

**Advantages:**
- High sensitivity (early-stage detection)
- High-throughput compatible

**Use case:**
- Environmental chemical screening (Cohn 2024)

---

## Tier 5 — Neuroimaging (translational / in vivo)

MRI-based readouts (rodents and humans):

- **DTI (Diffusion Tensor Imaging):**
  - ↓ Fractional anisotropy (FA)
  - ↑ Mean diffusivity (MD)

- **MTR (Magnetisation Transfer Ratio):**
  - Decreased in hypomyelination

- **MWF (Myelin Water Fraction):**
  - Reduced (specific to myelin water)

- **T2-weighted MRI:**
  - Persistently high signal in white matter during development

---

## Tier 6 — Electrophysiology

- Nerve conduction velocity (**NCV**) ↓
- Loss of saltatory conduction
- Compound action potential (**CAP**) recordings (optic nerve ex vivo)

Used in combination with TEM (e.g., Shiverer mouse model)

---

## Tier 7 — Human organoid / in vitro

- 3D cortical organoids stained for **MBP**
- Quantified via automated confocal imaging
- Output: MBP⁺ territory fraction

**Application:**
- Human-relevant screening (Cohn 2024)

---

# Biological Triples for KE2107

KE2107 is a tissue-level key event defined by reduced formation or maintenance of CNS myelin sheaths.

---

## Status of Existing Registry Terms

| Needed term | Ontology ID | Status |
|------------|------------|--------|
| myelin sheath (object) | GO:0043209 | ABSENT |
| axon (object) | GO:0030424 | ABSENT |
| white matter (object) | UBERON:0002316 | ABSENT |
| myelination (process) | GO:0042552 | ABSENT |
| axon ensheathment (process) | GO:0008366 | ABSENT |
| CNS myelination (process) | GO:0022010 | ABSENT |
| brain (object) | UBERON:0000955 | Present |
| anatomical structure morphogenesis (process) | GO:0009653 | Present |
| anatomical structure development (process) | GO:0048856 | Present |
| demyelination (process) | MP:0000921 | Present (wrong direction) |

---

## Triples using EXISTING registry terms

### Triple 1 — Structural morphogenesis of the brain

**brain | anatomical structure morphogenesis | decreased**

| Field | Value |
|------|------|
| object | brain (UBERON:0000955) |
| UUID | aeb877ab-5997-41b3-8842-a3bdcc9d56f7 |
| process | anatomical structure morphogenesis (GO:0009653) |
| UUID | c37ec787-98e3-491d-ad5b-0aaf57365c5d |
| action | decreased |
| UUID | 7e963729-bf54-4fed-8720-f211828b7039 |

---

### Triple 2 — Nervous system development

**nervous system | anatomical structure development | decreased**

| Field | Value |
|------|------|
| object | nervous system (UBERON:0001016) |
| UUID | 82bceac3-d2c1-4f85-9ea9-cd75090e1e59 |
| process | anatomical structure development (GO:0048856) |
| UUID | 6bb3e523-b08b-4974-afc9-f39542e3408d |
| action | decreased |
| UUID | 7e963729-bf54-4fed-8720-f211828b7039 |

---

## Triples requiring NEW dictionary entries

### Triple 3 — Core structural event

**myelin sheath | myelination | decreased**

| Field | Value |
|------|------|
| object | myelin sheath (NEW → GO:0043209) |
| process | myelination (NEW → GO:0042552) |
| action | decreased (existing UUID) |

---

### Triple 4 — Axon ensheathment

**axon | axon ensheathment | decreased**

| Field | Value |
|------|------|
| object | axon (NEW → GO:0030424) |
| process | axon ensheathment (NEW → GO:0008366) |
| action | decreased (existing UUID) |

---

### Triple 5 — White matter structural deficit

**white matter | anatomical structure morphogenesis | decreased**

| Field | Value |
|------|------|
| object | white matter (NEW → UBERON:0002316) |
| process | anatomical structure morphogenesis (GO:0009653) |
| action | decreased (existing UUID) |