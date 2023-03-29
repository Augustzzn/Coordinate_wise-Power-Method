# Coordinate_wise-Power-Method

As the core of search engine, the problem of web page ranking has attracted extensive attention of researchers. Google proposed the PageRank algorithm to solve the problem of web page ranking, and used the power method to calculate the PageRank vector. However, when the damping factor is close to 1, the convergence speed of the power method continues to decrease, so some acceleration techniques are constantly proposed.

Thus, we proposes the coordinate power method that iterates by coordinate, in which only one coordinate is selected to be updated in each iteration. In iterative process, the algorithm computes residuals 𝑟 = 𝑧 − 𝜃𝑥, 𝑧 = 𝐴𝑥 and 𝜃 indicates the Rayleigh quotient. Each step updates the coordinate that maximize the absolute value of the residual component in the previous step, until the norm of the residual is less than the stopping accuracy. 

Then numerical experiments are done on two test matrices, and verifies the superiority of the coordinate power method over the traditional power method in the numerical performance. When the damping factor is close to 1, the coordinate power method performs better, the calculation time and the number of multiplications with vectors is reduced and less than traditional power method.
