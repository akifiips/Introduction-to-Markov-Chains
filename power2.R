P <- matrix(c(0.4, 0.3, 0.3,
              0.5, 0.3, 0.2,
              0.2, 0.3, 0.5), nrow = 3, byrow = T)

pi_0 <- c(1/3, 1/3, 1/3)

n <- 1000

pi_current <- pi_0

for (i in 1:n) {
  pi_next <- pi_current %*% P
  pi_current <- pi_next
}

pi_steady <- pi_current / sum(pi_current)
print(pi_steady)