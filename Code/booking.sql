
create table booking(Client_ID int, Booking_Date varchar(10));

select * from booking;

insert into booking values(5, '23/11/2019');

select count(*) from booking where Booking_date='23/11/2019'; 