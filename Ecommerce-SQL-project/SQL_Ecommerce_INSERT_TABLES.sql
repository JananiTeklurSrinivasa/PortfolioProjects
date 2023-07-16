--Customers Table
Insert into Customers (customer_id,first_name,last_name,email,phone_number) values  ('1','John','Smith','john.smith@example.com','1234567890')
Insert into Customers (customer_id,first_name,last_name,email,phone_number) values  ('2','Sarah','Johnson','sarah.johnson@example.com','9876543210')
Insert into Customers (customer_id,first_name,last_name,email,phone_number) values  ('3','Michael','Williams','michael.williams@example.com','4567891230')
Insert into Customers (customer_id,first_name,last_name,email,phone_number) values  ('4','Emily','Jones','emily.jones@example.com','7890123456')
Insert into Customers (customer_id,first_name,last_name,email,phone_number) values  ('5','David','Brown','david.brown@example.com','3216549870')
Insert into Customers (customer_id,first_name,last_name,email,phone_number) values  ('6','Jessica','Davis','jessica.davis@example.com','6543210987')
Insert into Customers (customer_id,first_name,last_name,email,phone_number) values  ('7','Robert','Taylor','robert.taylor@example.com','9087654321')
Insert into Customers (customer_id,first_name,last_name,email,phone_number) values  ('8','Jennifer','Martinez','jennifer.martinez@example.com','2345678901')
Insert into Customers (customer_id,first_name,last_name,email,phone_number) values  ('9','Christopher','Anderson','christopher.anderson@example.com','7654321098')
Insert into Customers (customer_id,first_name,last_name,email,phone_number) values  ('10','Amanda','Thomas','amanda.thomas@example.com','8901234567')
SELECT * FROM Customers;

--Products Table
Insert into Products (product_id,product_name,price,description) values  ('1','Laptop','1000','High-performance laptop')
Insert into Products (product_id,product_name,price,description) values  ('2','Smartphone','800','Latest smartphone model')
Insert into Products (product_id,product_name,price,description) values  ('3','Headphones','100','Noise-canceling headphones')
Insert into Products (product_id,product_name,price,description) values  ('4','Smartwatch','300','Fitness tracking smartwatch')
Insert into Products (product_id,product_name,price,description) values  ('5','Camera','600','DSLR camera for professional photography')
Insert into Products (product_id,product_name,price,description) values  ('6','Tablet','500','Portable tablet for browsing and entertainment')
Insert into Products (product_id,product_name,price,description) values  ('7','Gaming Console','400','Console for gaming enthusiasts')
Insert into Products (product_id,product_name,price,description) values  ('8','Bluetooth Speaker','50','Portable wireless speaker')
Insert into Products (product_id,product_name,price,description) values  ('9','Fitness Tracker','150','Activity tracker for monitoring health')
Insert into Products (product_id,product_name,price,description) values  ('10','Wireless Earbuds','120','True wireless earbuds with high-quality sound')

--Orders table
Insert into Orders (order_id,customer_id,order_date,total_amount) values  ('1','1','2023-07-01','2000')
Insert into Orders (order_id,customer_id,order_date,total_amount) values  ('2','2','2023-07-02','1600')
Insert into Orders (order_id,customer_id,order_date,total_amount) values  ('3','3','2023-07-03','700')
Insert into Orders (order_id,customer_id,order_date,total_amount) values  ('4','1','2023-07-04','300')
Insert into Orders (order_id,customer_id,order_date,total_amount) values  ('5','4','2023-07-05','900')
Insert into Orders (order_id,customer_id,order_date,total_amount) values  ('6','5','2023-07-06','400')
Insert into Orders (order_id,customer_id,order_date,total_amount) values  ('7','3','2023-07-07','1500')
Insert into Orders (order_id,customer_id,order_date,total_amount) values  ('8','6','2023-07-08','800')
Insert into Orders (order_id,customer_id,order_date,total_amount) values  ('9','7','2023-07-09','350')
Insert into Orders (order_id,customer_id,order_date,total_amount) values  ('10','8','2023-07-10','250')

--Order_Details
Insert into Order_Details (order_detail_id,order_id,product_id,quantity) values  ('1','1','1','2')
Insert into Order_Details (order_detail_id,order_id,product_id,quantity) values  ('2','1','3','1')
Insert into Order_Details (order_detail_id,order_id,product_id,quantity) values  ('3','2','2','2')
Insert into Order_Details (order_detail_id,order_id,product_id,quantity) values  ('4','3','4','1')
Insert into Order_Details (order_detail_id,order_id,product_id,quantity) values  ('5','4','1','1')
Insert into Order_Details (order_detail_id,order_id,product_id,quantity) values  ('6','5','6','1')
Insert into Order_Details (order_detail_id,order_id,product_id,quantity) values  ('7','6','5','1')
Insert into Order_Details (order_detail_id,order_id,product_id,quantity) values  ('8','7','9','2')
Insert into Order_Details (order_detail_id,order_id,product_id,quantity) values  ('9','8','7','1')
Insert into Order_Details (order_detail_id,order_id,product_id,quantity) values  ('10','9','10','1')


