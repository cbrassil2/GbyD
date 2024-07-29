# GbyD
**Grade by Demographics Report**

This R Markdown file is a user-friendly way to convert a data file of individual student grades and demographics into a guided report designed to enable instructors to self-refelect on how course letter grades differ by demographics. View an example report using synthetic data at https://cbrassil2.github.io/GbyD/Grades_by_Demographics

The report includes some introductory framing for instructors to consider. DFW rates are displayed by each demographic summed across semesters, by combinations of demographics, and across time. Integrated into each section are guiding questions for self-reflection. Finally, resources are provided for change including links to books, articles, online repositories, and free online courses. 

**Quick Start**

-   Download and install R and RStudio at https://posit.co/download/rstudio-desktop/
-   Download the R Markdown file [Grades_by_Demographics.Rmd](Grades_by_Demographics.Rmd) and place into a folder of your choice.
-   Format a csv data file in which each row is an individual student enrolled in a single class. You can follow the format in [data_grade_demographics.csv](data_grade_demographics.csv). This file can be used the next steps to practice  setting up the code.
    -  Critically, you need the columns with the following titles:
        -  course - you can use any name or code that is understandable to your institutional audience.
        -  grade - course letter grades, +/- is optional, will ignore anything outside of A+ through F or W.
        -  semester - ideally coded as season and year or month and year, for example "Fall 2023" or "August 2023". You can also code as academic years, for example "2022-23".
    - Include other columns named however you want it labelled in the report (for example with a capital letter). Similarly, entries for that column should be formatted as you want them displayed in the report (for example "Female" or "F"). You can use any spreadsheet program to format or rename these as desired. If your data is in Excel format, save it as a csv file.
    -  Place your data file in the same folder as the Grades_by_Demographics.Rmd file.
-   Open RStudio, and within RStudio open the file Grades_by_Demographics.Rmd
-   Modify the line early in the Grades_by_Demographics.Rmd file by changing ds <- read_csv("data_sim.csv") to the name of your file instead of data_sim.csv.
-   Click the **Knit** button at the top to create a report in an HTML format. The will create a single file that can be shared (for example via email) with others as appropriate. The html file is the most user-friendly format becuase the figures have mouse-over features that allows instructors to easily seek deeper information within the figures. 

**Modifying the Report**

The expectation is that most users will simply manipulate their data file to achieve the customization of the report for their institution. This can be done in Excel or equivalent spreasheet software. For example, add or remove courses to the data file that you want included. Change the names of column headers to change how they are displayed in the report. Use find/replace in your spreadsheet software to change how categories are displayed in the report.

The code is designed to be robust to variation in the data file; it wil accomodate variation in capitlization and naming conventions. As well, it will accomodate a series of semester naming conventions. A few options can be be adjusted to change how the report processes the data and displays the output. This are located at the bottom of the first chunk of code in Grades_by_Demographics.Rmd. All options have default values, so these can be explored at a later point your process.

**Options** can be adjusted in the code for this report that do the following:
-  Adjust the minimum threshold for required for a demographic factor to be shown. In the code, this is called "threshold".
-  When a threshold is not met either aggregate the whole demographic factor or just remove the single category which did not meet the threshold. Removing teh single category allows other demographic values to be shown, but makes it less obvious that some demographic categories are being hidden from view. In the code, this is called "censor_by_removal".
-  Hide or show NA values. This will remove stray NA values broadly defined, but if empty cells represent a meaningfull demographic category, you can turn this off. In the code this is called "hide_NA".
-  Display just DFW rates or display success rates (1-DFW) along with the the GPA of students who had A, B, or C grades. While DFW rates are the most common metric to analyze, this traditional analysi can be complimented by analyzing demographic differences among students that achieved a C or higher grade, labelled here as GPA excluding DF. When the GPA excluding DF is shown, the DFW rates are flipped to becuase success rates, i.e. 1-DFW so that that the Success axis and the GPA axis are aligned. In the code this is called "show_GPA_excluding_DF".
-  Download [Batch_Script_for_Grades_by_Demographics.R](Batch_Script_for_Grades_by_Demographics,R) and [Batch_Course_Codes.csv](Batch_Course_Codes.csv) to render batches of reports automatically for sets of courses, individually or in groups, as defined in the csv file. In the csv file, list the prefix or prefixes for courses to be included in the report. For example "Chem" will create a report that includes all Chem courses.

**Example Use Case Studies***

Reports that sum together sets of courses can be created by replacing the course name in the data_grade_demographics.csv with the appropriate level or roll-up. For example, replacing courses codes such as CHEM 101, CHEM 102, and CHEM 201 with CHEM would roll-up all of those courses into a single line. Alternatively, one could replace CHEM 101 and CHEM 102 with CHEM 1XX and CHEM 201 with CHEM 2XX. That would produce a report showing levels of courses with the subject instead of individual courses within the subject.

**Contact Information**

For questions contact [Chad Brassil](mailto:cbrassil@unl.edu), University of Nebraska-Lincoln. 
Funding provided by the HHMI IE3 program.
