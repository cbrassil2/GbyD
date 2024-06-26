# GbyD
Grade by Demographics Report

This R Markdown file is a user-friendly may to convert a data file of individual student grades and demographics into a report designed to enable instructors to self-refelect on how course letter grades differ by demographics. View an example report using synthetic data at https://cbrassil2.github.io/GbyD/Grades_by_Demographics

While the R code is provided for advanced users, the expectation is that most users will manipulate their data file to achieve the customization of the report for their institution. The code is designed to be robust to variation in the data file, and a few options can be be adjusted to change how the report processes the data and displays the output. See details below.

The report includes some introductory framing for instructors to consider. Then student success data, such as DFW rates is displayed by each demographic summed across semesters, by combinations of demographics, and across time. Integrated into each section are guiding questions for self-reflection and for use by groups of instructors in teams or learning communities. Finally, resources are provided for changing classes including links to books, articles, online repositories, and free online courses. 

To create your own reports you will need access to student level data, in which each line of the file is a student grade in a particular course along with the demographic information you wish to analyze. Second, download and install RStudio and the R Markdown file on this site. Steps are detailed here.

-   Download and install RStudio at https://posit.co/download/rstudio-desktop/
-   Format a csv data file in which each row is an individual student enrolled in a single class. You can follow the format in [data_sim.csv](data_sim.csv)  
-   Click the Knit button to create a report in an HTML format. The will create a single file that can be shared (for example via email) with others as appropriate. The html file is the most user-friendly format becuase the figures have mouse-over features that allows instructors to easily seek deeper information within the figure. 



The code is setup to work with a file called data_sim.csv. You will need to change the name of your data file to data_sim.csv for the program to generate a report.

The code expects columns which provide demographic information with four exceptions:
1. The name of the course which can be called "course", "Course", "class", or "Class"
2. The course term which can be called "term", "Term", "AMIS", or "Amis_Term_Code"
3. The grade given which must be called "grade", "Grade", "Letter_Grade", or "letter_grade"
4. The semester of the course which must be called "semester", "Semester", "year_and_semester" or "Year_and_Semester"

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
