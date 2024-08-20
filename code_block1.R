# Define the transition matrix P
P <- matrix(c(0.6, 0.3, 0, 0.1,  # From Healthy
              0.2, 0.3, 0.3, 0.2, # From Disease
              0, 0, 0.6, 0.4,     # From Disability
              0, 0, 0, 1),        # From Death
            nrow=4, byrow=TRUE)

# Initial distribution vector (all in Healthy state)
pi_0 <- c(1, 0, 0, 0)

# Set the number of iterations
n <- 100

# Initialize the current distribution as pi_0
pi_current <- pi_0

# Power method iteration
for (i in 1:n) {
  pi_next <- pi_current %*% P
  pi_current <- pi_next
}

# Normalize the distribution to ensure it sums to 1 (optional)
pi_steady <- pi_current / sum(pi_current)

# Print the steady-state distribution
print(pi_steady)