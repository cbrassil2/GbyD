
#Ensure working directory is the same as this file
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

#load table of majors and associated subjects
bcc <- read.csv("Batch_Course_Codes.csv")

#create a function that will modify the params list for course_prefix and rename the output file
render_one <- function(course_prefix_input) {
  rmarkdown::render( 'Grades_by_Demographics.Rmd',
                     params = list(course_prefix = trimws(strsplit(course_prefix_input, ",")[[1]])),
                     output_file = paste0(paste(trimws(strsplit(course_prefix_input, ",")[[1]]),collapse="-"),'_Grades_by_Demographics.html'),
                     envir = parent.frame()
  )
}

#render a single one
#bcc[6,]
#render_one(bcc[6,2])

#loop through all of the rows in Batch_Course_Codes and render all reports
for (i in 1:nrow(bcc))render_one(bcc[i,2])


