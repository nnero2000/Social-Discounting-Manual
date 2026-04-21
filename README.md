# Social Discounting Task: Data Collection & Analysis Toolkit

This repository provides resources for administering, processing, and analyzing data from the **Social Discounting Task** and the **Social Discounting Task Short Form**.

It is designed to support **transparent, reproducible behavioral research** by integrating task materials, data pipelines, and detailed documentation in one place.

---

## Overview

This repository accompanies a comprehensive manual that includes:

- Conceptual background on the Social Discounting Task  
  *(Jones & Rachlin, 2006, 2009)*  
- Description of task structure and administration  
- Step-by-step guidance for:
  - Data cleaning  
  - Indifference point estimation (long form)  
  - Analysis and visualization  

In addition to the original task, this repository includes materials for the **Social Discounting Task Short Form** *(Amormino et al., 2025, 2026)*, including task implementation and analytic procedures.

The manual is intended to be used alongside the provided **R Markdown script**, which walks users through the full data processing pipeline for both task versions.

---
## Repository Structure

### 📁 Data Collection

Tools for administering the tasks and collecting data.

**Qualtrics Templates**
- `Qualtrics_SD_Long.qsf` – Original Social Discounting Task  
- `Qualtrics_SD_Short.qsf` – Social Discounting Task Short Form  
- Pre-configured with correct item and question names  
- Compatible with the analysis pipeline  

**Shiny Apps (R-based data collection)**
- `Long_SD_ShinyApp` – Long-form task  
- `Short_SD_ShinyApp` – Short-form task  
- Allow direct data collection within R  

**Output Format**
- All tools generate `.csv` files  
- Outputs are already formatted for compatibility with the analysis script  

---

### 📁 R Scripts

- R Markdown script for:
  - Data cleaning  
  - Data preparation  
  - Indifference point estimation (long form)  
  - Direct value extraction (short form)  
  - Model fitting (e.g., log(k), AUC)  
  - Visualization  
- Covers both:
  - Social Discounting Task (long form)  
  - Social Discounting Task Short Form  

---

### 📁 Social Discounting Manual

- PDF manual containing:
  - Conceptual overview  
  - Task design and structure  
  - Data cleaning procedures  
  - Analysis workflows  
  - Visualization guidelines  

- Designed to be used alongside the R Markdown script  

- 🌐 HTML version available via GitHub Pages:  
  *(Insert your GitHub Pages link here)*  

---
[View Social Discounting Manual](https://nnero2000.github.io/Social-Discounting-Manual/Manual/Social%20Discounting%20Manual.html)
