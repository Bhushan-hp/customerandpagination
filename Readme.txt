MySql Database is used with Sequelize ORM(Object Relational Mapper)

used PostMan for API testing.


Post API:- http://localhost:3000/customer/getall   //will give all the customers, by default page will be 1, if you want to see page number 2 post it as JSON in the body e.g {"page": "2"} if given a specific name it will return that specific customer e.g {"first_name": "john"}

 Get API:- http://localhost:3000/customer/findbyid/25  // will give the customer by specific id, just replace id -25 with another id number which you want to retrieve.

 GET API:- http://localhost:3000/customer/sortwisecity  will give city wise count of customers

 Post API:- http://localhost:3000/customer/createcustomer  // can use this API to create customers, customers with having name, city, and company already exist, will not create new customer again, will throw a message that says "Customer with the same details already exists"
