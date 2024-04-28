# Dimensionality-Reduction-and-Clustering

## Title: Lab 3 Case Study: Unsupervised Learning in Learning Analytics

# Lab 3 Case Study Analysis: Dimensionality reduction and clustering

## Simulated Data:

I first simulated data with three main features for 100 students (Unique Student IDs)

- Student_Engagement
- Student_Performance
- GPA

Scaled these features. The purpose of scaling the data is to ensure that all features have the same scale and are centered around zero.

Combined these features to have a dataframe 

Here is the sample output of the top 6 rows

| student_id | student_engagement | student_performance | student_gpa | cluster |
|------------|--------------------|---------------------|-------------|---------|
| 1          | 35.47855           | 50.52231            | 3.013657    | 2       |
| 2          | 51.79512           | 58.88396            | 3.348817    | 1       |
| 3          | 62.41012           | 40.56755            | 2.728112    | 3       |
| 4          | 35.20679           | 62.46033            | 3.576468    | 2       |
| 5          | 59.37552           | 54.69326            | 3.031107    | 3       |
| 6          | 57.00109           | 54.09745            | 2.251470    | 3       |

I first tried to retain all the features for clustering i.e. PC1, 2 and 3 and through scatterplots tried to see if the model is performing well using all 3 factors.

[2Clusters.png](https://github.com/mallelaindira/Dimensionality-Reduction-and-Clustering/blob/main/2Clusters.png)
[3Clusters.png](https://github.com/mallelaindira/Dimensionality-Reduction-and-Clustering/blob/main/3Clusters.png)
[4Clusters.png](https://github.com/mallelaindira/Dimensionality-Reduction-and-Clustering/blob/main/4Clusters.png)

While PC1 and 2 provided clear possibility for clustering the data into 3 clusters, the combination of PC2, PC3 and PC1 and PC3 could not result in possibility for clustering into 3.

[2Clusters.png](https://github.com/mallelaindira/Dimensionality-Reduction-and-Clustering/blob/main/2Clusters.png)
[2Clusters.png](https://github.com/mallelaindira/Dimensionality-Reduction-and-Clustering/blob/main/2Clusters.png)
[2Clusters.png](https://github.com/mallelaindira/Dimensionality-Reduction-and-Clustering/blob/main/2Clusters.png)
Hence I opted to go for 2 features’ selection instead of 3.

Also, I tried to have 2 and 4 clusters.

Images are attached here.

With two clusters the visual inspection of PC1 and PC2 appears to be possibe.
But with 4 clusters the demarcation does not appear to be optimum.

Hence I chose to go with two principle components and 3 clusters to have optimum number of clusters.

## References:

C. Boutsidis, A. Zouzias, M. W. Mahoney and P. Drineas, "Randomized Dimensionality Reduction for $k$ -Means Clustering," in IEEE Transactions on Information Theory, vol. 61, no. 2, pp. 1045-1062, Feb. 2015, doi: 10.1109/TIT.2014.2375327.
