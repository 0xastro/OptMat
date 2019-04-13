## Data Fitting: Norm1, NormInf, and Euclidean Norm Solutions
<p align="center">
  <img src="https://github.com/astro7x/OptMat/blob/master/imgs/fitting.jpg?raw=true"/>
</p>



## SVM Optimal Solution
<p align="center">
  <img src="https://github.com/astro7x/OptMat/blob/master/imgs/svm1.jpg?raw=true"/>
</p>


## Unconstrained with Gradient 
<p align="center">
  <img src="https://github.com/astro7x/OptMat/blob/master/imgs/grad.jpg?raw=true"/>
</p>

> we nee to minimize the function f(x) over the half line (x+td) [LINE SEARCH]

> Always take a direction which is opposite to the gradient

<p align="center">
  <img src="https://github.com/astro7x/OptMat/blob/master/imgs/grad-2.jpg?raw=true"/>
</p>

### Run the gradient method for solving the following problems
#### [prob: 1]

- code: gradient_Unconstrained.m

<p align="center">
  <img src="https://github.com/astro7x/OptMat/blob/master/imgs/grad-3.jpg?raw=true"/>
</p>

#### [prob: 2]
- code: gradient_conjugate.m

##### solve the same previous problem by running gradient conjugate mehod 

#### [prob: 3]
- code: gradient_UnconstrainedFitting.m

Consider the following data fitting problem: given the experimental data in fitting.txt, find the best approximating polynomial of degree 3 w.r.t. the Euclidean norm.
Solve the problem by means of the gradient method starting from:

<a href="https://www.codecogs.com/eqnedit.php?latex=x_{0}&space;=&space;0.&space;[Use&space;\parallel&space;\bigtriangledown&space;f(x)\parallel&space;<&space;10^{-3}&space;]&space;\rightarrow&space;stoppingCriterion]" target="_blank"><img src="https://latex.codecogs.com/gif.latex?x_{0}&space;=&space;0.&space;[Use&space;\parallel&space;\bigtriangledown&space;f(x)\parallel&space;<&space;10^{-3}&space;]&space;\rightarrow&space;stoppingCriterion]" title="x_{0} = 0. [Use \parallel \bigtriangledown f(x)\parallel < 10^{-3} ] \rightarrow stoppingCriterion]" /></a>


#### [prob: 4]

##### Solve the problem With the Armijo inexact line search
- code: gradient_Armijo.m

<p align="center">
  <img width= "600" src="https://github.com/astro7x/OptMat/blob/master/imgs/prob3.png?raw=true"/>
</p>


#### [prob: 5]
##### Solve the same previous problem With the Newton Method

<p align="center">
  <img width= "600" src="https://github.com/astro7x/OptMat/blob/master/imgs/newton.png?raw=true"/>
</p>


