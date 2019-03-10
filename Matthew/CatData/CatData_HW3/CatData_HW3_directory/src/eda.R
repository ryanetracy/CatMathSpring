setwd("~/Documents/Class/CatMathSpring/Matthew/CatData/CatData_HW3/CatData_HW3_directory")
library('ProjectTemplate')
load.project()

for (dataset in project.info$data)
{
  message(paste('Showing top 5 rows of', dataset))
  print(head(get(dataset)))
}
