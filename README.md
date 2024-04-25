# GbyD
Grade by Demographics Report

This R script is designed to be user-friendly allowing instructors to survey student grades with respect to demographic categories like gender, generation, or race/ethnicity.

You will need to download the programming language R and the program RStudio in order to use this RMarkdown (.rmd) file.
Go to this link to download R and RStudio: https://posit.co/download/rstudio-desktop/

RMarkdown allows you to work with code in R and in Markdown which is another simple programming language.

You can run chunks of R code individually or click the Knit button to create a report in an HTML format.

The code will install four R packages that are required to run this script if they are not already present on your machine: tidyverse, gt, ggiraph, and scales.

The code is setup to work with a file called data_sim.csv. You will need to change the name of your data file to data_sim.csv for the program to generate a report.

The code expects columns which provide demographic information with four exceptions:
1. The name of the course which can be called "course", "Course", "class", or "Class"
2. The course term which can be called "term", "Term", "AMIS", or "Amis_Term_Code"
3. The grade given which must be called "grade", "Grade", "Letter_Grade", or "letter_grade"
4. The semester of the course which must be called "semester", "Semester", "year_and_semester" or "Year_and_semester"

The columns for course and grade are required for the report to generate correctly!

The code isolates all demographic categories which are not in the exceptions list above.
The code expects letter grades which it converts into a number. A Withdrawal is converts to NaN which means "Not a Number"

The user is required to specify which course the report will be for by changing the variable "inputCourse" to the desired course.
The user can also change the value of the variable "threshold" which is the limit for how small a demographic group can be before it will be removed from the report for privacy concerns.
If any categories are dropped due to have fewer students than the threshold a message appears informing the viewer which columns have been dropped.

The code uses the gt package to generate tables and ggiraph to generate interactive visualizations which the user can mouseover for more information.

The size of the x-axis is determined by the maximum DFW percentage.
Factoring is used to ensure that the largest circles are behind smaller ones.
A menu displays on the lefthand side which gives the user the ability to click on all available tables and visualizations.

All possible combinations of demographic categories are presented for consideration of how intersectionality plays a role in student success.
Categories are dropped if they contain fewer than the number of students determined by the threshold variable.
