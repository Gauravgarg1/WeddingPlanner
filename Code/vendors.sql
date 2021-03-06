
use wedplan;

create table vendors (category varchar(40), vendor_name varchar(40), fee int) ;
select * from vendors;

ALTER TABLE vendors ADD Vendor_ID MEDIUMINT NOT NULL AUTO_INCREMENT KEY;

insert into vendors values ('Venue', 'Jagat Resort', 200000);
insert into vendors values ('Venue', 'Samson Resort', 300000);
insert into vendors values ('Venue', 'Heklis Resort', 400000);
insert into vendors values ('Venue', 'Myamani Resort', 500000);
insert into vendors values ('Venue', 'Chhoolak Resort', 230000);
insert into vendors values ('Venue', 'Qasaka Resort', 240000);
insert into vendors values ('Venue', 'Minaja Resort', 350000);
insert into vendors values ('Venue', 'Lapii Resort', 280000);
insert into vendors values ('Venue', 'Pitaara Resort', 390000);
insert into vendors values ('Venue', 'Milara Resort', 700000);
insert into vendors values ('Venue', 'Qarety Resort', 800000);
insert into vendors values ('Venue', 'Zinkli Resort', 330000);
insert into vendors values ('Venue', 'JZ Resort', 430000);
insert into vendors values ('Venue', 'AZ Resort', 450000);
insert into vendors values ('Venue', 'Zues Resort', 390000);
insert into vendors values ('Venue', 'Kalimas Resort', 260000);
insert into vendors values ('Venue', 'Yun Resort', 670000);
insert into vendors values ('Venue', 'Daas Resort', 330000);
insert into vendors values ('Venue', 'Ferns Resort', 260000);

insert into vendors values ('Photo', 'Gulami Photos', 70000);
insert into vendors values ('Photo', 'Jistrazi Photos', 200000);
insert into vendors values ('Photo', 'Mistim Photos', 130000);
insert into vendors values ('Photo', 'Yaanis Photos', 80000);
insert into vendors values ('Photo', 'Jiglus Photos', 80000);
insert into vendors values ('Photo', 'Phoonkil Photos', 95000);
insert into vendors values ('Photo', 'zara Photos', 130000);
insert into vendors values ('Photo', 'Pliksa Photos', 230000);
insert into vendors values ('Photo', 'Cout Photos', 330000);
insert into vendors values ('Photo', 'Pq Photos', 250000);
insert into vendors values ('Photo', 'Tiara Photos', 170000);
insert into vendors values ('Photo', 'ZK Photos', 760000);
insert into vendors values ('Photo', 'QITA Photos', 86000);
insert into vendors values ('Photo', 'ZPP Photos', 120000);
insert into vendors values ('Photo', 'Liona Photos', 160000);
insert into vendors values ('Photo', 'Nakul Photos', 210000);
insert into vendors values ('Photo', 'Kastra Photos', 95000);
insert into vendors values ('Photo', 'Art Photos', 70000);
insert into vendors values ('Photo', 'Sara Photos', 180000);
insert into vendors values ('Photo', 'EYEON Photos', 85000);

insert into vendors values ('Jewel', 'Angrez Jewellery', 200000);
insert into vendors values ('Jewel', 'Shaadi Jewellery', 270000);
insert into vendors values ('Jewel', 'Kiara Jewellery', 240000);
insert into vendors values ('Jewel', 'Lapa Jewellery', 500000);
insert into vendors values ('Jewel', 'Francis Jewellery', 540000);
insert into vendors values ('Jewel', 'Tradii Jewellery', 300000);
insert into vendors values ('Jewel', 'Shingaar Jewellery', 490000);
insert into vendors values ('Jewel', 'Kalyan Jewellery', 320000);
insert into vendors values ('Jewel', 'Mehraz Jewellery', 360000);
insert into vendors values ('Jewel', 'Sikanta Jewellery', 330000);
insert into vendors values ('Jewel', 'Duolik Jewellery', 490000);
insert into vendors values ('Jewel', 'Manya Jewellery', 370000);
insert into vendors values ('Jewel', 'Preety Jewellery', 430000);
insert into vendors values ('Jewel', 'Sona Jewellery', 330000);
insert into vendors values ('Jewel', 'Deepika Jewellery', 386000);
insert into vendors values ('Jewel', 'Vivah Jewellery', 270000);
insert into vendors values ('Jewel', 'Laitri Jewellery', 230000);
insert into vendors values ('Jewel', 'MM Jewellery', 240000);
insert into vendors values ('Jewel', 'AK Jewellery', 400000);

insert into vendors values ('Decor', 'Vista Decorators', 90000);
insert into vendors values ('Decor', 'Glen Decorators', 900000);
insert into vendors values ('Decor', 'Syuzi Decorators', 190000);
insert into vendors values ('Decor', 'Kailash Decorators', 390000);
insert into vendors values ('Decor', 'Johni Decorators', 290000);
insert into vendors values ('Decor', 'Hyara Decorators', 230000);
insert into vendors values ('Decor', 'Lakmus Decorators', 130000);
insert into vendors values ('Decor', 'Great Decorators', 95000);
insert into vendors values ('Decor', 'Senorita Decorators', 110000);
insert into vendors values ('Decor', 'Dream Decorators', 240000);
insert into vendors values ('Decor', 'Procolor Decorators', 140000);
insert into vendors values ('Decor', 'Gudastsa Decorators', 300000);
insert into vendors values ('Decor', 'Phishi Decorators', 400000);
insert into vendors values ('Decor', 'Golden Decorators', 500000);


insert into vendors values ('Wear', 'Shaadi Wears', 100000);
insert into vendors values ('Wear', 'Khandani Wears', 200000);
insert into vendors values ('Wear', 'Sajo Wears', 300000);
insert into vendors values ('Wear', 'Shehnaz Wears', 240000);
insert into vendors values ('Wear', 'Malhotra Wears', 260000);
insert into vendors values ('Wear', 'Manyawar Wears', 280000);
insert into vendors values ('Wear', 'ZZ Wears', 160000);
insert into vendors values ('Wear', 'Poli Wears', 130000);
insert into vendors values ('Wear', 'Traksh Wears', 180000);
insert into vendors values ('Wear', 'Dissi Wears', 110000);
insert into vendors values ('Wear', 'Kyti Wears', 120000);
insert into vendors values ('Wear', 'MIlan Wears', 400000);
insert into vendors values ('Wear', 'PQT Wears', 440000);
insert into vendors values ('Wear', 'LAPO Wears', 500000);

insert into vendors values ('Catering', 'Shaadi Catering', 300000);
insert into vendors values ('Catering', 'Falfa Catering', 340000);
insert into vendors values ('Catering', 'Taster Catering', 400000);
insert into vendors values ('Catering', 'KH Catering', 440000);
insert into vendors values ('Catering', 'Kanozia Catering', 500000);
insert into vendors values ('Catering', 'Rajput Catering', 560000);
insert into vendors values ('Catering', 'Palia Catering', 600000);
insert into vendors values ('Catering', 'Paolo Catering', 450000);
insert into vendors values ('Catering', 'Singara Catering', 430000);
insert into vendors values ('Catering', 'WI Catering', 320000);
insert into vendors values ('Catering', 'Zilka Catering', 360000);
insert into vendors values ('Catering', 'Desi Catering', 380000);
insert into vendors values ('Catering', 'Shush Catering', 485000);
insert into vendors values ('Catering', 'Westriy Catering', 440000);
insert into vendors values ('Catering', 'Sweetinz Catering', 520000);
insert into vendors values ('Catering', 'Dhinzal Catering', 510000);
insert into vendors values ('Catering', 'Kulhandri Catering', 610000);