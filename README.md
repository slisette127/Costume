# Costume

Instructions
Review the steps to create a DB, connect to it, seed it with data and write them down in the README.md.
Write the SQL Commands that would create the tables in files named after the data like: userSeedData.sql, carSeedData.sql, productSeedData.sql, etc...
Store those files in the repo
Upload the repo's link to the Checkpoint-2 Assignment

# Focus
This app will be a tool that costumers can use to help inventory their existing raw materials. The materials will be listed by category and contain all the relevant information needed, including cost, in order to better estimate the value of the finished product. 

# Data and Tables
![CostumeERDgraph](https://user-images.githubusercontent.com/77766707/129491007-9cf30746-f8ab-43d5-887b-52273c2c0c18.jpg)

### Fabric
* Fabric Cost
* Fabric Quantity, length and width measurements
* Fabric Type
* Fabric Image
* Color ID
* Project ID

### Notions
* Type of Notion
* Notion Cost
* Notion description
* Notion Quantity
* Color ID
* Project ID

### Color ID
* Color ID
* Colors

### Projects
* Name of Project
* Client ID
* Project ID
* Deposit
* Status of Project
* Reference Image
* 

### Client
* Client ID
* First Name
* Last Name
* Address 
* Email
* Phone 


# Creating a Database
On Google Cloud, take a look at the navigation menu (top-left) on the dashboard. You should see a lot of options.
Locate the heading that reads "STORAGE" and click the "SQL" option.
Click "CREATE INSTANCE" near the top of the page.
Select "MySQL" from the two options.
Fill out the form with the following information
Instance ID: "first-instance"
Root password: a password of your choice
All other defaults can be left alone
Click "Create" and wait for the instance to be set up. This can take a few minutes.
When the instance is ready there will be a green checkmark next to it. Click on the name "first-instance" to see an overview.
In this overview screen, look for a menu option called "DATABASES" and click it.
Create a database called "admin".
We're almost done . . . we just need to allow the database instance to be accessed from outside of this console. To do that we need to whitelist our IP address.

Navigate to the "CONNECTIONS" tab.
Look for the checkbox by "Public IP", we need to add a network.
Find your IP address here and enter it into the dialog box with a name.
Note that you will need to do this for each network you want to access the database from (home, work, ACA, Starbucks, wherever . . .)
Make sure to click the save button. We're ready to go! We have a database set up in Google Cloud that can be accessed from anywhere. Now we need to learn how to interact with it in the next step.

# Connect MySQL Workbench to the Database on GCP
When opening MySQL Workbench, one of the first things you see is some text that says "MySQL Connections"
Click the little plus sign next to that text. A dialog box should pop up
Fill out the following information:
Connection Name: "first-instance"
Hostname: The IP address of your db in GCP
You can find this on the "OVERVIEW" tab
Password: Click "store in keychain" and enter the password you gave your instance when you set it up in the last step
Default Schema: We'll use the name of the database we created earlier, "admin"
Click "Test Connection". It should have been successful
Click "Ok" to save the connection The new connection should be listed under "MySQL Connections", double click it to connect to the database

# Seeding Data
The CREATE TABLE statement is used to create a new table in a database.
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
   ....
);
The column parameters specify the names of the columns of the table.

The datatype parameter specifies the type of data the column can hold (e.g. varchar, integer, date, etc.).

The INSERT INTO statement is used to insert new records in a table.

It is possible to write the INSERT INTO statement in two ways:
1. Specify both the column names and the values to be inserted:
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

2. If you are adding values for all the columns of the table, you do not need to specify the column names in the SQL query. However, make sure the order of the values is in the same order as the columns in the table. Here, the INSERT INTO syntax would be as follows:
INSERT INTO table_name
VALUES (value1, value2, value3, ...);
