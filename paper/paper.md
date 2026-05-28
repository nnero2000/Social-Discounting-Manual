---
title: "An Open-Source Educational Toolkit for Administering and Analyzing Social
  Discounting Tasks"
tags:
- social discounting
- behavioral economics
- prosocial behavior
- computational modeling
- manual
date: "20 May 2026"
affiliations:
- name: Department of Psychology, Georgetown University
  index: 1
authors:
- name: Naomi Nero
  orcid: "0009-0004-7941-1482"
  affiliation: 1
- name: Abigail A. Marsh
  orcid: "0000-0001-5635-181X"
  affiliation: 1
bibliography: paper.bib
---

# Summary
We present an open-source, educational toolkit designed to support instruction, implementation, and reproducible analysis of the Social Discounting Task [@jones2006a; @jones2009a] and a recently developed Social Discounting Task Short Form [@amormino2025a; @amormino2026a]. The Social Discounting Task is a well-validated behavioral task that assesses prosocial decision-making [@sharp2012a]. In this task, participants make choices involving real or hypothetical monetary rewards, deciding to keep an amount of money for themself (selfish decision) or share money (generous decision) with individuals of varying social distance. Therefore, the task quantifies how individuals value others’ outcomes relative to their own as a function of social distance through a hyperbolic model, providing a behavioral index of generosity and social valuation [@rhoads2023a]. The Social Discounting Task has been widely used to study individual differences in prosocial behavior, antisocial behavior, and personality traits such as psychopathic traits [@amormino2025a; @malesza2021a; @nero2025a; @romanowich2021a; @sharp2012a].

The repository provides a complete end-to-end workflow for implementing and analyzing both versions of the task, including a conceptual manual, Qualtrics survey templates, and a fully reproducible R-based analysis pipeline with practice datasets. Specifically, the repository includes (1) a detailed manual in document and HTML formats, (2) Qualtrics templates for standardized data collection, and (3) a modular R Markdown script that scaffolds learners through the analytic workflow from raw data import to estimation of social discounting parameters. Together, these components support standardized implementation of the Social Discounting Task across studies while reducing methodological heterogeneity and increasing reproducibility.

# Statement of Need
Although the task is well validated and has demonstrated robust associations with prosocial and antisocial behavior [@amormino2025a; @malesza2021a; @nero2025a; @rhoads2023a; @romanowich2021a; @sharp2012a], implementation varies substantially across studies. These differences include how responses are coded, how indifference points are calculated, and how key outcome variables, such as discounting parameters, are computed. As a result, there is substantial heterogeneity in task structure, survey implementation, and downstream analytic pipelines, which can limit comparability across studies.

In addition, a shorter version of the task has recently been developed [@amormino2025a; @amormino2026a], reducing participant burden while preserving the underlying construct. However, the introduction of multiple task versions further increases the need for standardized implementation and analysis procedures that ensure consistency across studies and facilitate cumulative research. Despite the widespread use of both versions of the task, there is currently no widely adopted, open-source resource that integrates standardized data collection tools, a reproducible analysis pipeline, and clear instructional guidance for implementation and analysis. This repository addresses these limitations by providing a unified and reproducible workflow through an open-source Social Discounting Task Toolkit that standardizes and provides resources for task administration and data analysis across the original and short-form versions. 

# Target Audience and Learning Goals
This toolkit is designed for researchers, instructors, and students working in behavioral science, psychology, neuroscience, and behavioral economics. In particular, it is intended for:

* Researchers implementing the Social Discounting Task in empirical studies 
* Undergraduate and graduate students learning experimental design or behavioral decision-making 
* Instructors teaching methods courses in psychology, neuroscience, or behavioral economics 
* Computational social scientists interested in modeling prosocial decision-making 

The materials assume only basic familiarity with experimental research design. While prior experience with R is helpful, the included R Markdown script is designed to be accessible for users with limited programming experience, providing step-by-step instructions and annotated code. Similarly, the Qualtrics templates are structured to be directly importable into Qualtrics without modification, enabling users to deploy the task in online studies with minimal setup. The materials are designed to be adaptable for both research and instructional contexts, including training in behavioral economics, computational modeling, and experimental psychology. After completing the module, learners will have engaged with the full research pipeline and be able to:

* Implement the Social Discounting Task and Social Discounting Task Short Form in Qualtrics
*	Import and preprocess behavioral task data in R
*	Compute indifference points and interpret social discounting metrics
*	Estimate hyperbolic discounting functions
*	Generate reproducible visualizations

# Content
The repository includes four modular instructional components that together provide a complete learning workflow for teaching, implementing, and analyzing the Social Discounting Task and the Social Discounting Task Short-Form. First, the manual provides conceptual background on social discounting. It outlines the structure of the original task developed by Jones and Rachlin [@jones2006a], in which participants make repeated binary choices between selfish and prosocial monetary allocations across graded social distances, as well as the Short Form, which reduces decision burden while preserving the underlying construct. The manual also provides a step-by-step guide for task administration, data cleaning, data analysis, and troubleshooting for computational modeling. The steps outlined in this manual accompany the R markdown script.

Second, the repository includes Qualtrics survey templates for both versions of the task. These templates contain standardized item wording, response structures, and variable names aligned with the R analysis pipeline. Users can upload these templates directly into Qualtrics to ensure consistent data collection across studies. 
Third, the repository provides an R Markdown script that guides users through the full analytic workflow. This includes data preprocessing, computation of indifference points for social distances, estimation of discounting functions through hyperbolic modeling, extraction of social discounting metrics (AUC and logk), and visualization. The script is fully annotated and designed as a reproducible computational learning environment in which users can execute, inspect, and modify each analytic step. 
Fourth, the repository includes practice datasets for both the original and short-form tasks, allowing users to test the pipeline without collecting new data. These datasets mirror real study data collected via the Qualtrics templates and are used throughout the R Markdown script to demonstrate each analytic step. Together, these components provide a standardized toolkit for implementing and analyzing social discounting data across both research and teaching contexts. 

# Conclusion
By integrating conceptual guidance, standardized data collection tools, and reproducible analysis scripts, this repository provides a flexible resource for both research and instructional use in social decision-making. As an open educational and research resource, the toolkit is intended to lower barriers to computational training in behavioral science while promoting reproducible research practices for the Social Discounting Task. We anticipate that this toolkit will be useful for researchers implementing the Social Discounting Task in empirical studies, as well as instructors teaching behavioral economics, decision science, or quantitative research methods. The materials are also intended to support trainees learning how to implement and analyze behavioral tasks in R and Qualtrics. More broadly, this project contributes to efforts to improve standardization and accessibility in psychological and behavioral science by providing a reusable infrastructure for a widely used measure of prosocial decision-making.

# References
