#library(BSDA)
set.seed(234) # to get the same results

# Generate sample data from normal distribution (Average interaction with learning materials seconds per day)

cohort1<- rnorm(n=22, mean = 57, sd=30)


#perform one sample z-test
z.test(cohort1, mu=100, sigma.x=30)
