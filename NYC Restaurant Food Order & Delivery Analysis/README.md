# NYC Restaurant Food Order & Delivery Analysis

## Lets take a look at our dataset
The data was obtained through Kaggle: "NYC Restaurant Data - Food Ordering and Delivery" by user Ahsan Raza.
The dataset includes various columns such as: 
- customer_id: ID of the customer who ordered the food; 
- restaurant_name: Name of the restaurant; 
- cuisine_type: Cusine ordered by the customer; 
- cost_of_the_order: Cost of the order; 

- day_of_the_week: Indicates whether the order is placed on a weekday or weekend (The weekday is from Monday to Friday and the weekend is Saturday and Sunday); 

- rating: Rating given by the customer out of 5;

- food_preparation_time: Time (in minutes) taken by the restaurant to prepare the food. This is calculated by taking the difference between the timestamps of the restaurant's order confirmation and the delivery person's pick-up confirmation.;

- delivery_time: Time (in minutes) taken by the delivery person to deliver the food package. This is calculated by taking the difference between the timestamps of the delivery person's pick-up confirmation and drop-off information

## How will we query our data?
After downloading the dataset from Kaggle as a .csv file, I created a new connection from DBeaver Universal database Manager to the .csv file so that I could use SQL to analyze the data.
## Find the Power BI Dashboard here:

## NYC Restaurant Food Order & Delivery General Insights:
### Before we dive into the data, lets create some questions that may provide valuable insights into New York's food/ delivery services:
Most popular cuisine by:
- Order count
- Ratings

Number of orders based on:
- Date
- Cost
- Rating 

Average delivery time
- Per date (weekday vs weekend)
- Per type of cuisine 
- Per order count


