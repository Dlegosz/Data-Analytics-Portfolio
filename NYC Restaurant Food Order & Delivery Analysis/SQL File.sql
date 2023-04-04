/*
  First we want to get a glimps of the data we are working with. The Limit function will only return 25 rows. This is convenient if our dataset is very large and we dont want to query a huge amount of data. 
*/

SELECT *
FROM "Raw NYC Food & Delivery" 
limit 25;

/*
  Using COUNT DISTINCT on the restaurant_name we can get a sense as to how many unique restaurants we have in our dataset
*/

SELECT COUNT(DISTINCT(restaurant_name))
FROM "Raw NYC Food & Delivery" 

/* 
  I noticed some restaurant names had non-alphabetical characters. To filter those out you would typically execute the following command:
 */
 
 SELECT REPLACE(restaurant_name, '[^a-zA-Z]', '') AS filtered_restaurant_names
FROM "Raw NYC Food & Delivery"

/*
  But since 
*/
