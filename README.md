# Data Analytics portfolio

# Project 1

**Title:** [Healthcare Exploratory Dashboard](https://github.com/Jumoke-Lucas/Olajumoke.github.io/blob/main/healthcare_prediction_data.xlsx)

**Tools Used:** Microsoft Excel (Pivot table, Powere query editor, slicers, conditional formatting, text box)

**Project description:** Conducted a comprehensive exploratory analysis of a large scale healthcard dataset. This project features an interactive dashboard that allows users explore healthcard data across multiple dimensions.
The dashboard includes the following features:

Interactive slicers to filter by blood type, medical condition and gender. 

Heatmaps showing the correlation between medical conditions and clood type as well as admission type and test results. 

Dynamic charts updating automatically with filter selections.

Key analysis performed : 
1. Patient demographic analysis :
- Analysed age distribution for different medical conditions
- Identified the most common medical conditions
- Identified gender distribution for different medical conditions 
2. Clinical analysis :
- Investigated correlation between blood types and medical conditions
- Investigated correlation between admission type and test results
- Identified medications that are frequantly prescribed for different conditions
- Investigated the percentage of patients per normal, abnormal and inconclusive test results.
  
3. Hospital operations analysis:
- Identified hospitlas handling most urgent and emergency cases
- Identified doctores with the highest patient load

4. Billing analysis:
- Identified conditions that generate the highest billing amounts
- Compared billing across insurance providers

**Key findings:**
- No significant association was found between blood type and specific medical conditions based on Chi square analysis
- Certain hospitals showed higher concentrations of emergency and urgent cases suggesting specialist facilities
- No significant association was found between admission type and test results based on Chi square analysis
- Individuals 60+ are more likely to be admitted for different medical conditions due to old age

This analysis provides actionable insights into patient demographics, clinical outcomes and hospital operations.

**Dashboard Overview:**
![Healthcare](Healthcare.png)



# Project 2 

**Title:** SQL Data Query and Data Manipulation language - Football players data 

**SQL Code:** [Football players data](https://github.com/Jumoke-Lucas/Olajumoke.github.io/blob/main/Football_data.sql)

**SQL Skills Used:** 
- Data Retrieval (SELECT): Queried and extracted specific player information including name, age, position, college, team, height, and weight from the database
- Data Aggregation (SUM, COUNT, AVG, MAX, MIN): Calculated average heights per position, counted players by experience level, found tallest/shortest players per college, and computed position-level weight averages
- Data Filtering (WHERE, BETWEEN, IN, AND, LIKE): Applied filters to isolate players by team, position, college, age, experience level, weight thresholds, and height range
- Data Cleaning: Removed blank columns, replaced NULL values, ensured absence of duplicates
- Data Source Specification (FROM) : Used in sourcing data from table within the database
- Window Functions (OVER, PARTITION BY, ROW_NUMBER, RANK, AVG): Ranked players by weight and age within partitions, computed rolling team averages for height and weight comparisons
- CTEs (Common Table Expressions): Used to simplify complex data. Used WITH clauses to stage ranked, filtered, and aggregated subsets before final selection
- String Parsing (LEFT, RIGHT, LEN, CHARINDEX, TRY_CAST): Converted height stored as feet-inches text format into numeric inches for mathematical calculations
- ALTER TABLE: Added a permanent computed (Height_inches) column to avoid repeated height conversion syntax

**Project Description:** 
This project involved an end-to-end SQL analysis of football players dataset using SQL Server Management Studio (SSMS). The analysis began with removing unnecessary columns, handling NULL values, and duplicate checks to ensure data intergrity. Analytical queries were then written to explore player attributes across teams, positions, colleges, and experience levels. Advanced techniques including window functions, CTEs, and string parsing were applied to answer complex business questions such as identifying the heaviest player per position, finding players above their team’s average height, and calculating position distribution percentages per team. A computed column (Height_inches) was permanently added to the table to avoid repeated height conversion across queries.


**Technology used:** SQL server(SSMS)





