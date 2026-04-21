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
## Repository Folder Structure

### Social Discounting Manual

- PDF manual containing:
  - Conceptual overview  
  - Task design and structure  
  - Data cleaning procedures  
  - Analysis workflows  
  - Visualization guidelines  

- Designed to be used alongside the R Markdown script  

- 🌐 HTML version available via GitHub Pages:  
  [View Social Discounting Manual](https://nnero2000.github.io/Social-Discounting-Manual/Manual/Social%20Discounting%20Manual.html)

### Data Collection

Tools for administering the tasks and collecting data that are pre-configured with correct item and question names, generating a csv file for compatibility with the R Markdown Analysis Script.

**Qualtrics Templates**
- `Qualtrics_SD_Long.qsf` – Original Social Discounting Task  
- `Qualtrics_SD_Short.qsf` – Social Discounting Task Short Form   

**Shiny Apps (R-based data collection)**
- `Long_SD_ShinyApp` – Long-form task  
- `Short_SD_ShinyApp` – Short-form task   

---

### R Scripts

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

## Getting Started

1. **Choose a data collection method**
   - Upload a Qualtrics `.qsf` file, **or**
   - Run a Shiny app in R  

2. **Collect data**
   - Export or save data as `.csv`  

3. **Run the analysis pipeline**
   - Open the R Markdown script in the `R Scripts` folder  
   - Follow step-by-step instructions  

4. **Consult the manual**
   - Use the PDF or HTML version for detailed explanations and methodology  

---
## Citation

If you use these materials, please use the following citations:

**Manual, R Markdown Script, Data collection templates**

**The Social Discounting Task**
Jones, B., & Rachlin, H. (2006). Social Discounting. Psychological Science, 17(4), 283–286.
Jones, B., & Rachlin, H. (2009). Delay, Probability, and Social Discounting in A Public Goods Game. Journal of the Experimental Analysis of Behavior, 91(1), 61–73. https://doi.org/10.1901/jeab.2009.91-61

**The Social Discounting Short-Form**
Amormino, P., Gao, J., Li, P., Induni, S., Amar, S., Balabanis, K., Burt, A., Dockray, K., Doherty, H., Dube, N., Janney, L., Kales, E., King, I., Kronthal, E., Lee, B., Regan, E., Romero, I., Jones, B. A., Seaman, K. L., & Marsh, A. A. (2025). Social discounting and anti-/pro-sociality: A meta-analysis and (short-form) replication. Personality and Individual Differences, 247, 113447. https://doi.org/10.1016/j.paid.2025.113447


---

## License

*(Add your license here, e.g., MIT, CC-BY, etc.)*  

---

## Contact

For questions, issues, or contributions, please open an issue on this repository.
Correspondence concerning this manual should be addressed to Naomi Nero, Department of Psychology, Georgetown University, White Gravenor Hall, Washington, DC 20057, United States. Email: nn444@georgetown.edu 
