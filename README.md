# New York City 311 Analysis
#### Project 3: Team #3

## Overview
This repository contains the code for Project #3, where we analyzed data from the 311 service line in New York State for the first quarter of the current year (2024). We performed this analysis using Python with the Pandas library and PostgreSQL as our database. We sourced our data from Open Data and NewYorkCity.gov. These sources are ideal because they are updated daily, ensuring the most accurate data possible.


### Directory Structure

#### NYC 311 Written Analysis.docx
A Microsoft Word file containing answers to the project’s goals: 

- How has the flow of incidents been during the first quarter (January-March) of this year?
- What are the top 10 complaints in NYC for this first quarter, and how have they fluctuated?
- What is the average response time per complaint during this period?
- Which borough received the highest volume of 311 calls, and what were the top calls in each borough?
- Which agencies are the busiest and are they working effectively? How does this relate to the previous analysis? What is the trash situation in NYC?

#### Data Ethics
The data we used was from New York City’s Open Data 311 which does not give out any names, gender, or information of the person that is calling. It gives out the relative location and the complaint type. This ensures that no private information or data is given to the general public, and keeps those that call the 311 line a sense of comfort. Since this data is able and meant to be used for public access, no ethics are involved, as all important and private data is not shown, and only general information relating to the call is released. This ensures proper collection of data and security.
#### Resources
This directory contains:

- CSV files (agencies.csv, boroughs.csv, complaints.csv) used to create our PostgreSQL database.
- A JSON file (nyc-311-public-api (1).json) providing an in-depth view of the APIs from NewYorkCity.gov.
- An Excel file (311_ServiceRequest_2010-Present_DataDictionary_Updated_2023.xlsx) with metadata from the Open Data sources.
> [!NOTE]
> When you run this code, another file called nyc311_merged_df.csv will be generated. This file was also used in the load part of our ETL workflow but was not included due to its large size (400 MB) and GitHub’s file size limit of 100 MB..

#### Libraries Used
- Plotly.js: For creating dynamic and interactive visualizations.
- Numpy: For data manipulation during CSV creation.
- Pandas: For performing our analysis.
- Matplotlib: For creating visualizations.
- Json & Requests: For requesting data from NYC.gov and working with the API related to trash in NYC.
- Sodapy: A new library used to fetch data from Socrata, a government server site that Open Data uses to publish data.

#### Private_info
This directory contains examples of private information such as API keys, tokens, and passwords, which are included in the .gitignore file. Please set up the following files with the given names to provide credentials:

- config.py:
  
Python
Copy code
```
api_key = '<SOME_VALUE>'
fromdate = '1/1/2020'
todate = '2/1/2020'
```
[NYC 311 API Documentation](https://api-portal.nyc.gov/product#product=NYC-311-Public-Developers)

- opendata_config.py
  
Python
Copy code
```
token311 = '<TOKEN VALUE>'
username = '<SOME VALUE>'
password = '<SOME VALUE>'
```
[Socrata API Documentation](https://dev.socrata.com/foundry/data.cityofnewyork.us/erm2-nwe9)

#### sql
This directory contains:
ERD.png: The Entity-Relationship Diagram created with the QuickDBD tool.
sqlquery.sql: The schema used to import data into PostgreSQL.

#### NYC311 Project Proposal.docx
A Microsoft Word file that contains the initial proposal for this project.

#### nyc_311.ipynb
A Jupyter Notebook file where we perform our ETL workflow and analysis.

#### nyc_311_pppt.pdf
A PowerPoint file containing our presentation.

#### Sources
- QuickDBD.
- 311 Service Requests from 2010 to Present
[Link](https://data.cityofnewyork.us/Social-Services/311-Service-Requests-from-2010-to-Present/erm2-nwe9/about_data)
- NYC 311 Public API Documentation
[Link](https://api-portal.nyc.gov/api-details#api=nyc-311-public-api&operation=api-GetAssets-get)
  

#### Team Members & Responsabilities
- [x] Yesmelin Perdomo: ETL workflow, PPT presentation, nyc_311.ipynb analysis, setup with Sodapy, README file.
- [x] Amanda Lor: ETL workflow, nyc_311.ipynb analysis, setup with Sodapy, proposal, README file.
- [x] Alyssa Jones: ETL workflow, nyc_311.ipynb analysis, setup with Sodapy, written analysis (including introduction and conclusion), README file.
- [x] Asmae Bouazzaoui: Introduction (slide)
- [x] Daniel Gomes: Highest Resolution Rate Per Borough






