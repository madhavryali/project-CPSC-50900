insert into customer(Customer_Id,Customer_Name,Address) values(40019,'Daniel','999-Z');
insert into room(room_Id,Room_Number,Room_Type,Customer_Customer_Id)values( 208,15,'Ac',4513);
update location set location_address='Dallas' where location_Id=123;
update payment set amount=5000 where Payment_Id=478;
delete from room where room_id=208;
select * from location;
select customer_name,Booking_date,Status from customer C,Booking B where C.Customer_Id=B.Customer_Customer_Id;
select customer_name,Payment_type, Amount from customer C,payment P where c.customer_Id=P.customer_customer_id;
select * from customer C, Booking B,Payment P where B.customer_customer_id=C.Customer_Id and P.customer_customer_id=B.customer_customer_id;