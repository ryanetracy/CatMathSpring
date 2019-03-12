setwd("~/Documents/Class/CatMathSpring/Matthew/Math/Math_InClass/Math_InClass_directory")
library('ProjectTemplate')
load.project()

for (dataset in project.info$data)
{
  message(paste('Showing top 5 rows of', dataset))
  print(head(get(dataset)))
}

# 03/12

#Simulating to assess the expected value. When does the Central Limit Theorem 
#fail?


##Cauchy Distribution---a "bell" curve with no expected value

# thin line is the cauchy distribution?
y = seq(-3.4, 3.4, by = 0.001)
plot(y,dnorm(y))
lines(y,dcauchy(y))


#standard Gaussian

yn = matrix(rnorm(100000),byrow=TRUE,ncol=100)
ynmean = apply(yn,1,mean)
ynsd = apply(yn,1,sd)
boxplot(ynmean)        #mean behaves as expected
boxplot(ynsd)          #sd behaves as expected
ynmedian = apply(yn,1,median)
boxplot(ynmedian)     #median 
densityplot(~ynmean)
densityplot(~ynmedian)
#overlay
est = c(rep("mean",1000),rep("median",1000))
densityplot(~c(ynmean,ynmedian),group=est,auto.key=TRUE,xlab="")



#standard Cauchy

yc = matrix(rcauchy(100000),byrow=TRUE,ncol=100)
ycmean = apply(yc,1,mean)
ycsd = apply(yc,1,sd)
boxplot(ycmean)        #mean is crazy
boxplot(ycsd)          #sd is crazy
ycmedian = apply(yc,1,median)
boxplot(ycmedian)     #median is OK (it's the MLE)
densityplot(~ycmean)
densityplot(~ycmedian)

