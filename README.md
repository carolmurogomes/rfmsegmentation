# Customer Segmentation & Marketing Analytics | dunnhumby

### RFM Analysis · K-Means Clustering · R Shiny Dashboard

## Project Overview

This project explores customer purchasing behavior using the **dunnhumby retail dataset**, applying data analytics and unsupervised machine learning techniques to identify meaningful customer segments.

The objective is to transform transactional retail data into actionable marketing insights, supporting customer segmentation, purchasing behavior analysis, and data-driven marketing strategies.

The project is developed primarily in **R**, following a structured analytical workflow from data preparation to interactive visualization.

**Project Status:** In Development 🚧

## Project Objectives

- Clean, validate, and explore retail transaction data.
- Investigate customer purchasing patterns and spending behavior.
- Perform **RFM (Recency, Frequency, Monetary) Analysis** to evaluate customer engagement and value.
- Apply **K-Means Clustering** to identify customer segments based on behavioral characteristics.
- Evaluate clustering results using appropriate statistical methods.
- Develop the first version of an interactive **R Shiny Dashboard** to communicate analytical findings.

## Technologies & Libraries

| Category | Tools & Libraries |
|---|---|
| Programming Language | R |
| Development Environment | RStudio |
| Data Manipulation | tidyverse, dplyr, janitor |
| Exploratory Data Analysis | ggplot2, skimr |
| RFM Analysis | dplyr, lubridate |
| Clustering & Evaluation | stats, cluster, factoextra |
| Dashboard Development | Shiny |
| Version Control | Git & GitHub |

## Project Structure

The project is organized into independent R scripts to improve code readability, maintainability, and reproducibility.

```text
dunnhumby-marketing-analysis/
│
├── data/
│   ├── raw/
│   └── processed/
│
├── R/
│   ├── 00_setup.R
│   ├── 01_import_cleaning.R
│   ├── 02_eda.R
│   ├── 03_rfm_analysis.R
│   └── 04_clustering.R
│
├── dashboard/
│   └── app.R
│
├── .gitignore
└── README.md
```

*Note: This structure represents the planned project organization and may evolve during development.*

## Analytical Workflow

### 01. Data Import & Cleaning
Import CSV files, inspect dataset structures, handle missing values and duplicates, standardize variables, and prepare transactional data for analysis.

### 02. Exploratory Data Analysis (EDA)
Explore purchasing patterns, transaction distributions, customer spending behavior, and relevant descriptive statistics through visualizations.

### 03. RFM Analysis
Calculate customer-level metrics:

- **Recency:** Time elapsed since the customer's last purchase.
- **Frequency:** Number of purchases within the observation period.
- **Monetary:** Total monetary value of customer purchases.

Use these metrics to investigate customer engagement and purchasing behavior.

### 04. Customer Clustering
Apply K-Means Clustering to behavioral variables and investigate the resulting customer segments.

Evaluate cluster configurations using methods such as the Elbow Method and Silhouette Analysis.

### 05. Interactive Dashboard
Develop the first version of an R Shiny application to present customer segmentation results, RFM metrics, and interactive data visualizations.

## Getting Started

### Requirements

- R
- RStudio
- Required R packages

### Installation

Clone the repository and open the project in RStudio.

Run the package setup script:

```r
source("R/00_setup.R")
```

The setup script is intended to check and install the required packages.

The analytical scripts will be developed and executed according to the project's workflow.

## Dataset

**Source:** dunnhumby — Retail Customer Transaction Data

The project uses retail transaction data for educational purposes and portfolio development.

Dataset access instructions and any applicable licensing or redistribution conditions will be documented as the project progresses.

## Expected Deliverables

- Cleaned and validated analytical datasets.
- Exploratory analysis and supporting visualizations.
- Customer-level RFM metrics.
- Evaluated customer clustering results.
- Interactive R Shiny Dashboard — Version 1.
- Reproducible R scripts documenting the analytical workflow.

## Future Development

Potential extensions include additional behavioral segmentation variables, further clustering experiments, and expanded dashboard functionality.

These extensions will be evaluated after completion of the first version.

## Author

**Carolina Muro Gomes**

Data Analytics | Data Science Student

*Developed as an independent marketing analytics and customer segmentation portfolio project.*
