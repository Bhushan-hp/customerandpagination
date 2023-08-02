 Post API :- http://localhost:3000/customer/getall   //will give all the customers , by default page will be 1, if given specfic name it will return that specific customer e.g {"first_name":"john"}

 Get API:- http://localhost:3000/customer/findbyid/25  // will give customer by specific id , just replace id -25 with other id number which you want to retrieve

 GET API:- http://localhost:3000/customer/sortwisecity  will give city wise count of customers

 Post API:- http://localhost:3000/customer/createcustomer  // can use this api to create customers , customers with having name , city and company already exist , will not create new customer again , will throw message that "Customer with the same details already exists"