set.seed(777)
n = 100000

# Initialize the matrix to store states
matx <- matrix(NA, nrow = n+1, ncol = 1)

matx[1, 1] <- "S1"
matx[2, 1] <- sample(c("S1", "S2", "S3", "S4"), 1, prob = c(0.6, 0.3, 0, 0.1))




# Simulation loop
for (i in 2:n) {
  if (matx[i, 1] == "S1") {
    matx[i+1, 1] <- sample(c("S1", "S2", "S3", "S4"), 1, prob = c(0.6, 0.3, 0, 0.1))
  } else if (matx[i, 1] == "S2") {
    matx[i+1, 1] <- sample(c("S1", "S2", "S3", "S4"), 1, prob = c(0.2, 0.3, 0.3, 0.2))
  } else if (matx[i, 1] == "S3") {
    matx[i+1, 1] <- sample(c("S1", "S2", "S3", "S4"), 1, prob = c(0, 0, 0.6, 0.4))
  } else {
    matx[i+1, 1] <- sample(c("S1", "S2", "S3", "S4"), 1, prob = c(0, 0, 0, 1))
  }
}

# Print the first few states to check the output
head(matx)

# Count the occurrences of each state
state_counts <- table(matx)

# Calculate the proportions of each state
state_proportions <- state_counts / sum(state_counts)

rounded_proportions <- round(state_proportions, 1)
print(rounded_proportions)

