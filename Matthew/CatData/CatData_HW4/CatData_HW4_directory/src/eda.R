setwd("~/Documents/Class/CatMathSpring/Matthew/CatData/CatData_HW4/CatData_HW4_directory")
library('ProjectTemplate')
load.project()

for (dataset in project.info$data)
{
  message(paste('Showing top 5 rows of', dataset))
  print(head(get(dataset)))
}
