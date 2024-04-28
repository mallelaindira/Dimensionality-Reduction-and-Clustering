# Dimensionality-Reduction-and-Clustering

## Title: Lab 3 Case Study: Unsupervised Learning in Learning Analytics

## Author: Indira Mallela
## Date: 2024-04-28


```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Introduction

Learning analytics is the use of data to understand and improve learning. Unsupervised learning is a type of machine learning that can be used to identify patterns and relationships in data without the need for labeled data.

In this case study, you will use unsupervised learning to analyze learning data from a Simulated School course. You will use dimensionality reduction to reduce the number of features in the data, and then use clustering to identify groups of students with similar learning patterns.

## Data

The data for this case study is generated with the simulated function below. The data contains the following features:

Student ID: A unique identifier for each student
Feature 1: A measure of student engagement
Feature 2: A measure of student performance

```{r}
simulate_student_features <- function(n = 100) {
  # Set the random seed
  set.seed(260923)
  
  # Generate unique student IDs
  student_ids <- seq(1, n)

  # Simulate student engagement
  student_engagement <- rnorm(n, mean = 50, sd = 10)

  # Simulate student performance
  student_performance <- rnorm(n, mean = 60, sd = 15)

  # Combine the data into a data frame
  student_features <- data.frame(
    student_id = student_ids,
    student_engagement = student_engagement,
    student_performance = student_performance
  )

  # Return the data frame
  return(student_features)
}
```

This function takes the number of students to simulate as an input and returns a data frame with three columns: student_id, student_engagement, and student_performance. The student_engagement and student_performance features are simulated using normal distributions with mean values of 50 and 60, respectively, and standard deviations of 10 and 15, respectively.

To use the simulate_student_features() function, we can simply pass the desired number of students to simulate as the argument:

```{r}
student_features <- simulate_student_features(n = 100)
```

We can then use this data frame to perform unsupervised learning to identify groups of students with similar learning patterns,

## Tasks

- Simulate the data.  
- Perform dimensionality reduction on the data using PCA.  
- Cluster the data using KMeans and other clustering algorithms.  
- Interpret the results of your analysis.  

## Submission

Submit a report containing the following:

- A brief description of your approach to dimensionality reduction and clustering.  
- The results of your analysis, including the number of clusters identified, the characteristics of each cluster, and any other insights you gained from the data.  
- A discussion of the implications of your findings for learning analytics.  
- Provide at least one scholarly reference.  

*Your report should include your code. Submit the published RPubs link to Blackboard.*
