# ETL-Project
## Extract, Transform, Load Project
## Team members: Nathan Potter and Leanne Porter

---
### Task

This is a team project where we are required to complete the __Extract, Transform, Load__ process.
At least 2 data sources need to be used and API's can be used to extract the data.

A final report describing the following needs to be submitted:

__Extract__: your original data sources and how the data was formatted (CSV, JSON, pgAdmin 4, etc).
__Transform__: what data cleaning or transformation was required.
__Load__: the final database, tables/collections, and why this was chosen.

---
### Method

The basic outline/scenario for this project is outlined below:

This project created a database for interrogating information about Australia’s mobile blackspots and the populations of those areas.
The project was designed around an imaginary scenario where a new Federal Telecommunications Minister wants to know where all the current mobile backspots are around Australia as well as what are the key characteristics of the populations in those areas.

To deliver the database, the project team undertook three steps.

Firstly, data was extracted from different sources. Secondly, the data was transformed to ensure it was consistent and usable, and the data was segmented by creating tables in accordance with a specially designed database. Finally, the database was designed and the tables were loaded into it.

For more information regarding the ETL process. Please refer to the project report located in the main branch of this repository.


---
### Result

During the transform and loading sections, tables were created successfully in PostgreSQL and dataframes created via Pandas were successfully imported directly into the database.

Joins can be completed without error.

<img src="https://user-images.githubusercontent.com/82348616/127962887-2907c683-2b95-46b3-99a0-cff7f4de3fb8.PNG" width="100">

---
### Sources

The datasources used in the report can be found below:
Blackspot data: https://data.gov.au/data/dataset/community-reports-of-poor-or-no-mobile-coverage/resource/c6b211ad-3aa2-4f53-8427-01b52a6433a7?inner_span=True
Population data: https://www.abs.gov.au/statistics/people/population/regional-population/2018-19#data-download

---
### Files
In the main branch in this repository there is the ETL Project Report in PDF format and a folder containing the code used to complete the project.
Please note: The code requires links to csv's that are not located on the main branch. For code to run correctly the csv files will need to be extracted from the branch titled "Nathan". This project did not require the code to be included in submission.


