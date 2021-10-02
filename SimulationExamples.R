
#######################################################

## Specify the working directory:
setwd("C:/ ... ")

## Import the R functions:
source( "multMLE.MPT.txt" )
source( "multMLE.DT.txt" )
source( "InitialPooledTesting.txt" )
source( "TwoStageHierPooling.txt" )

#######################################################

## We herein show simulation examples to illustrate our 
## R functions that can calculate the maximum likelihood estimates 
## from pooled (group) testing data. We consider low-prevalence 
## diseases (e.g., chlamydia and gonorrhea) where pooling is useful. 

## Simulation configurations:
psz <- 5           # Pool size
N <- 1000          # Sample size
Se <- c(.95, .99)  # Sensitivities for diseases 1 & 2       
Sp <- c(.95, .99)  # Specificities for diseases 1 & 2 

# True parameter to be estimated (co-infection probabilites)
p <- c(0.85, 0.07, 0.05, 0.03)


##========== Initial Pooled Testing ==========#

## Simulating data:
set.seed(123)
mpt <- gt.mpt(p=p,N=N,psz=psz,Se=Se,Sp=Sp)
M <- colSums( mpt$Zmul )

## Estimation based on the work in Li et al. (2017):
res1 <- mult.mle.mpt(multData=M,psz=psz,Se=Se,Sp=Sp,covariance=TRUE)

print( res1 )

## $param
## [1] 0.84932645 0.08155183 0.05521984 0.01390187

## $covariance
##               [,1]          [,2]          [,3]
## [1,]  2.175047e-04 -1.462123e-04 -9.388685e-05
## [2,] -1.462123e-04  1.532123e-04  3.002627e-05
## [3,] -9.388685e-05  3.002627e-05  1.030300e-04

## $std.err
## [1] 0.014748040 0.012377897 0.010150372 0.007321286

## $summary
##           Disease.1   Disease.2
## Estimate 0.09545371 0.069121716
## Std.Err  0.01152220 0.008848296


##========== Two-Stage Hierarchical Testing ==========#

## Simulating data:
set.seed(123)
h2d <- hier.alg.data(p=p,N=N,c.s=c(psz,1),Se=Se,Sp=Sp)
h2d.Yt <- h2d$Ytmat
h2d.Yt[ ,c(1,2)] <- 0

param0 <- rep(.25, 4)  # Initial value of the param

## Estimation based on the work in Tebbs et al. (2013):
res2 <- mult.mle.dt(p0=param0,Ytmat=h2d.Yt,Zmat=h2d$Zmat,G=3000,a=1000,tol=10^(-3),covariance=TRUE )
                         
print( res2 )

## $param
## [1] 0.8487080 0.0792350 0.0563485 0.0157085

## $covariance
##               [,1]          [,2]          [,3]
## [1,]  1.286700e-04 -6.753280e-05 -4.784769e-05
## [2,] -6.753280e-05  7.326994e-05 -4.490042e-06
## [3,] -4.784769e-05 -4.490042e-06  5.322131e-05

## $std.err
## [1] 0.011343281 0.008559786 0.007295294 0.003926857

## $summary
##            Disease.1   Disease.2
## Estimate 0.094943500 0.072057000
## Std.Err  0.009284178 0.008177674

