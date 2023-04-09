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
 
SELECT REGEXP_REPLACE(restaurant_names, '[^a-zA-Z]', '') AS filtered_restaurant_names
FROM "Raw NYC Food & Delivery";

/*
  If I was using MySQL, I would be able to use REGEXP_REPLACE. But, since I am just querying a .csv file, this clause is not available for me, at least not on my Data Base Manager
  A way around this would be to individually filter certain key-words using a basic CASE statement:
*/

SELECT DISTINCT restaurant_name
FROM "Raw NYC Food & Delivery"
ORDER BY 
  CASE 
    WHEN restaurant_name LIKE '%©%' THEN 0
    ELSE 1
  END, 
  restaurant_name;

/*
  This statement will first filter all unique restaurant_names values, order them by each CASE value we give it. In this example, values that contain "@" will be shown a the top
  We can add more CASE statements to show more restaurant_names with non-alphabetical values. Here are 6 CASE statements with different non-alphabetical characters
*/

SELECT DISTINCT restaurant_name
FROM "Raw NYC Food & Delivery"
ORDER BY 
  CASE 
    WHEN restaurant_name LIKE '%©%' THEN 0
    WHEN restaurant_name LIKE '%$%' THEN 1
    WHEN restaurant_name LIKE '%¼%' THEN 2
    WHEN restaurant_name LIKE '%±%' THEN 3
    WHEN restaurant_name LIKE '%(%' THEN 4
    WHEN restaurant_name LIKE '%÷%' THEN 5
    ELSE 6
  END, 
  restaurant_name;
  
  
  
