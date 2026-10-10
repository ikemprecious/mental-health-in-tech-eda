# Mental Health in Tech Industry – Exploratory Data Analysis

## Project Overview

This project explores the **Mental Health in Tech Industry** dataset through Exploratory Data Analysis (EDA). The aim is to identify patterns in mental health outcomes and examine how they relate to the sociodemographic and employment characteristics of survey respondents.

The project covers data preparation, exploratory analysis, statistical calculations, and data visualisation.

## Objectives

- Explore the sociodemographic characteristics of survey respondents.
- Examine the distribution of reported mental health conditions.
- Analyse patterns across demographic and employment-related variables.
- Calculate the prevalence of selected mental health conditions.
- Calculate and interpret 95% confidence intervals for prevalence estimates.
- Identify missing values, inconsistencies, and potential outliers.
- Assess potential sampling bias and limitations within the dataset.

## Dataset

The dataset contains **4,218 survey respondents** and responses covering various sociodemographic and employment-related characteristics.

Key variables analysed include:

- Age
- Gender
- Race
- Employment Status
- Occupation
- Country of Residence
- Work Mode
- Company Size
- Diagnosed Conditions
- Suspected Conditions

The final dataset was created by combining three tables:

- `Answer`
- `Question`
- `Survey`

SQL was used to extract, join, and prepare the data before conducting the analysis.

## Data Cleaning

Several data-cleaning steps were performed to prepare the dataset for analysis:

- Standardised categorical variables such as **Gender** and **Country of Residence**.
- Identified and handled missing and Null values.
- Standardised country names, including combining variations such as **"United States"** and **"United States of America"**.
- Converted selected variables to appropriate data types.
- Identified potential outliers.
- Reviewed `-1` values and excluded them from analyses where they did not represent meaningful values.

These steps helped improve the consistency and reliability of the dataset.

## Exploratory Data Analysis

The analysis examined the distribution of respondents across:

- Age groups
- Gender
- Race
- Country of Residence
- Employment Status
- Occupation
- Work Mode
- Company Size

Visualisations and grouped analysis were used to identify patterns and differences across these characteristics.

## Mental Health Prevalence

The prevalence of three mental health conditions was calculated among the **453 respondents with a known diagnosis**.

| Mental Illness | Number Diagnosed | Prevalence | 95% Confidence Interval |
|---|---:|---:|---:|
| Mood Disorders | 301 | 66.45% | 62.10% – 70.79% |
| Anxiety & Related Disorders | 107 | 23.62% | 19.71% – 27.53% |
| PTSD | 45 | 9.93% | 7.18% – 12.69% |

Mood Disorders had the highest prevalence, followed by Anxiety & Related Disorders and PTSD.

The confidence intervals were calculated using the **normal approximation** and provide a range of plausible values for the population prevalence based on the sample.

## Key Findings

- **Mood Disorders** were the most frequently reported condition among respondents with a known diagnosis.
- **Anxiety & Related Disorders** were the second most prevalent condition.
- **PTSD** had the lowest prevalence among the three conditions analysed.
- Several demographic variables contained substantial missing data.
- The sample showed uneven representation across countries and demographic groups.
- The findings may therefore be affected by **sampling bias** and should not necessarily be generalised to the wider technology workforce.

## Tools & Technologies

- **Python**
- **Pandas** – data manipulation and analysis
- **NumPy** – numerical calculations
- **Matplotlib** – data visualisation
- **Seaborn** – statistical visualisation
- **SQL / SQLite** – data extraction and transformation
- **Jupyter Notebook** – analysis environment

## Limitations

- Several variables contain missing or incomplete responses.
- Some mental health conditions have relatively small numbers of observations.
- The sample may not be representative of the wider technology workforce.
- Uneven representation across countries and demographic groups may introduce sampling bias.
- The analysis identifies patterns and associations but does not establish causation.

## Conclusion

Overall, the analysis provides insight into the mental health characteristics of the surveyed respondents and highlights differences across demographic and employment-related factors.

The prevalence analysis showed that **Mood Disorders were considerably more prevalent than Anxiety & Related Disorders and PTSD** within the analysed sample.

The project also demonstrates the importance of **data cleaning, exploratory analysis, statistical interpretation, and visualisation** when working with real-world survey data.

## Future Improvements

Future analysis could be improved by:

- Including additional mental health conditions and demographic variables.
- Investigating relationships between mental health and factors such as age, gender, occupation, and work mode.
- Applying additional statistical tests to assess whether observed differences are statistically significant.
- Using alternative confidence interval methods, such as the **Wilson interval**.
- Working with a larger and more representative sample.
