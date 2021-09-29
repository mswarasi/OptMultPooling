This repository contains R programs of the working paper, "Optimizing pooled testing for determining prevalence and/or identifying infected." Our goal is to examine the optimal pooling strategies with multiple (correlated) infections. Particularly, we intend to determine the pool size that (a) maximizes the estimation efficiency (precision), (b) maximizes the screening efficiency, or (c) offers the best cost-effective estimation as a compromise between optimal estimation and optimal testing. Another goal is to develop user-friendly R programs that practitioners can easily use.

We consider two types of pooling data: initial pooled test and two-stage hierarchical testing. Under both pooling protocols, we use a duplex discriminatory assay that provides diagnostic outcomes for two infections such as chlamydia and gonorrhea. Our approach involves calculating the maximum likelihood estimates of the multinomial disease prevalence parameter p=(p00, p10, p01, p11) based on the methods in Tebbs et al. (2013) and Li et al. (2017).


Files uploaded are:

1). multMLE.MPT.txt -- Main R funciton that calculates the maximum likelihood estimates from initial pooled responses (Li et al., 2017);

2). multMLE.DT.txt -- Main R funciton that calculates the maximum likelihood estimates from two-stage hierarchical pooling (Tebbs et al., 2013);

3). InitialPooledTesting.txt -- Function to simulate initial pooled responses;

4). HierPoolingData.txt -- Function to simulate two-stage hierarchical pooling data;

5). covtwodisgen.dll -- Used in multMLE.DT.txt;

6). gbbstwodisgen.dll -- Used in multMLE.DT.txt



References
1. Hungerford, L., Warasi, M., and Lahmers, K. (2021+). Optimizing pooled testing for determining prevalence and/or identifying infected. In preparation.
2. Tebbs, J., McMahan, C., and Bilder, C. (2013). Two-stage hierarchical group testing for multiple infections with application to the Infertility Prevention Project. _Biometrics_, **69**, 1064-1073.
3. Li, Q., Liu, A., and Xiong, W. (2017). D-optimality of group testing for joint estimation of correlated rare diseases with misclassification. _Statistica Sinica_, **27**, 823-838.

