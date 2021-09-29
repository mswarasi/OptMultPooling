This repository contains R programs of the working paper, "Optimizing pooled testing for determining prevalence and/or identifying infected." Our goal is to examine the optimal pooling strategies with multiple (correlated) infections. Particularly, we intend to determine the pool sizes that (a) maximizes the estimation efficiency (prevision), (b) reduces the number of tests expendend, and (c) identifying the cost-effective settings by which one can make a compromise between the best estimation and best screening. 

Our approach involves calculating the maximum likelihood estimates of the multinomial disease prevalence parameter p=(p00, p10, p01, p11), which we accomplish based on the methods in Tebbs et al. (2013) and Li et al. (2017).

Files that we have uploaded:

1). multMLE.MPT.txt -- Main R funciton that calculates the maximum likelihood estimates from initial pooled responses (Li et al., 2017).

2). multMLE.DT.txt -- Main R funciton that calculates the maximum likelihood estimates from two-stage hierarchical pooling (Tebbs et al., 2013).

3). InitialPooledTesting.txt -- Function to simulate initial pooled responses.

4). HierPoolingData.txt -- Function to simulate two-stage hierarchical pooling data.

5). covtwodisgen.dll -- Used in multMLE.DT.txt

6). gbbstwodisgen.dll -- Used in multMLE.DT.txt


References
1. Hungerford, L., Warasi, M., and Lahmers, K. (2021+). Optimizing pooled testing for determining prevalence and/or identifying infected. In preparation.
2. Tebbs, J., McMahan, C., and Bilder, C. (2013). Two-stage hierarchical group testing for multiple infections with application to the Infertility Prevention Project. _Biometrics_ **69**, 1064--1073.

