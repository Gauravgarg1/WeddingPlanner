

create table topvendors(Client_ID int,  Category varchar(40), Vendor_Name varchar(40), Fee int, Vendor_ID int) ;

select * from topvendors;

insert into topvendors select 104, category, vendor_name, fee, Vendor_ID from vendors where category='venue';