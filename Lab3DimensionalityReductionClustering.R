
n=100
# Set the random seed
set.seed(260923)

# Generate unique student IDs
student_ids <- seq(1, n)

# Simulate student engagement
student_engagement <- rnorm(n, mean = 50, sd = 10)

# Simulate student performance
student_performance <- rnorm(n, mean = 60, sd = 15)

# Simulate student GPA
student_gpa <- rnorm(n, mean = 3, sd = 0.4)

# Combine the data into a data frame
student_features <- data.frame(
  student_id = student_ids,
  student_engagement = student_engagement,
  student_performance = student_performance,
  student_gpa = student_gpa
)


# Scale the data
scaled_features <- as.data.frame(scale(student_features[, c("student_engagement", "student_performance", "student_gpa")]))

# Perform PCA
pca <- prcomp(scaled_features)

# Retain a certain number of components ( 2 components)
pca_result <- pca$x[, 1:2]

# Perform clustering using K-means ( 3 clusters)
cluster_result <- kmeans(pca_result, centers = 3)

cluster_result

# Append clustering result to the original data frame
student_features$cluster <- cluster_result$cluster
# View top few rows



head(student_features)
# Load the ggplot2 library for visualization
library(ggplot2)

# Create a scatter plot of the first two principal components, colored by cluster
ggplot(pca_result, aes(x = PC1, y = PC2, color = factor(cluster_result$cluster))) +
  geom_point() +
  ggtitle("K-means Clusters with PCA") +
  xlab("Principal Component 1") +
  ylab("Principal Component 2") +
  theme_minimal()
# # Create a scatter plot of the first two principal components, colored by cluster
# ggplot(pca_result, aes(x = PC2, y = PC3, color = factor(cluster_result$cluster))) +
#   geom_point() +
#   ggtitle("K-means Clusters with PCA") +
#   xlab("Principal Component 2") +
#   ylab("Principal Component 3") +
#   theme_minimal()
# 
# # Create a scatter plot of the first two principal components, colored by cluster
# ggplot(pca_result, aes(x = PC1, y = PC3, color = factor(cluster_result$cluster))) +
#   geom_point() +
#   ggtitle("K-means Clusters with PCA") +
#   xlab("Principal Component 1") +
#   ylab("Principal Component 3") +
#   theme_minimal()