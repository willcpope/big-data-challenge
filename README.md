# "Alexa, can you handle big data?"

## Background

Many of Amazon's shoppers depend on product reviews to make a purchase. Amazon makes these datasets publicly available. However, they are quite large and can exceed the capacity of local machines to handle. One dataset alone contains over 1.5 million rows; with over 40 datasets, this can be quite taxing on the average local computer. The goal of this project was to perform the ETL process completely in the cloud and upload the DataFrame to an RDS instance. The second goal was to use PySpark and SQL to perform a statistical analysis of the selected data.

1. Create DataFrames to match production-ready tables from two big Amazon customer review datasets.
2. Analyze whether reviews from Amazon's Vine program are trustworthy.

## Level 1

* Use the furnished schemata to create tables in your RDS database.

* Created two separate Google Colaboratory notebooks and **extracted** the digital video game and digital music datasets from the list at [review dataset](https://s3.amazonaws.com/amazon-reviews-pds/tsv/index.txt), one into each notebook.

* For each dataset, I completed the following:

  * Counted the number of records (rows) in the dataset.

  * **Transformed** the dataset to fit the tables in the [schema file](../level-1/schema.sql).

  * **Loaded** the DataFrames that correspond to tables into an RDS instance.

## Level 2

In Amazon's Vine program, reviewers receive free products in exchange for reviews.

![vine01.png](Images/vine01.png)

Amazon has several policies to reduce the bias of its Vine reviews: [https://www.amazon.com/gp/vine/help?ie=UTF8](https://www.amazon.com/gp/vine/help?ie=UTF8).

Investigated whether Vine reviews are free of bias. Used SQL to analyze the data.
