set.seed(777)
n = 100000

# Initialize the matrix to store states
matx <- matrix(NA, nrow = n+1, ncol = 1)
matx[1, 1] <- sample(c("A", "B", "C"), 1, prob = c(1/3, 1/3, 1/3))

# Simulation loop
for (i in 1:n) {
  if (matx[i, 1] == "A") {
    matx[i+1, 1] <- sample(c("A", "B", "C"), 1, prob = c(0.4, 0.3, 0.3))
  } else if (matx[i, 1] == "B") {
    matx[i+1, 1] <- sample(c("A", "B", "C"), 1, prob = c(0.5, 0.3, 0.2))
  } else {
    matx[i+1, 1] <- sample(c("A", "B", "C"), 1, prob = c(0.2, 0.3, 0.5))
  }
}

# Print the first few states to check the output
head(matx)

# Count the occurrences of each state
state_counts <- table(matx)

# Calculate the proportions of each state
state_proportions <- state_counts / sum(state_counts)

#print the proportions
print(state_proportions)
