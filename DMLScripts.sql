
use watercare;
select * from customer;
insert into customer values (11,'Customer1','address1','customer1@gmail.com');
insert into customer values (22,'Customer2','address2','customer2@gmail.com');
insert into customer values (33,'customer3','address3','customer3@gmail.com');

use watercare;
select * from watercare.order;

insert into watercare.order values (101,100.00,10,current_date(),11);
insert into watercare.order values (102,200.00,20,current_date(),22);
insert into watercare.order values (103,300,30,current_date(),33);


insert into Delivery values(101,current_date(),'vehicle1','Delivered',101);
insert into Delivery values(102,current_date(),'vehicle2','Delivered',102);
insert into Delivery values(103,current_date(),'vehicle3','Delivered',103);


insert into vehicle values ('1111','VehicleType1',	100);
insert into vehicle values (2222,'VehicleType2',200);
insert into vehicle values (3333,'VehicleType3',300);

insert into driver values (1111,'Name1','License1','1111111111',1111);
insert into driver values (2222,'Name2','License2','2222222222',2222);
insert into driver values (3333,'Name3','License3','3333333333',3333);

insert into POS values (501,current_date(),1000);
insert into POS values (502,current_date(),2000);
insert into POS values (503,current_date(),3000);


insert into vendor values (1,'Vendor1','10','1111111111');
insert into vendor values (2,'Vendor2','20','2222222222');
insert into vendor values (3,'Vendor3','30','3333333333');

insert into supplies values ('S1',current_date(),100,1);
insert into supplies values ('S2',current_date(),200,2);
insert into supplies values ('S3',current_date(),201,3);


use watercare;
select * from vendor;
update vendor set coveragearea='100' where vendorid=1;

use watercare;
select * from POS;
update  POS set transactiondate= current_date() where posid=501;

delete from pos where posid=502;


select o.* from watercare.order o left join delivery d on o.orderId= d.order_orderid;

select c.* from watercare.order o right join customer c on o.customer_CustId= c.CustId;

-- i want to know the summary of the suppliers

select * from supplies where vendor_vendorid in (select vendorid from vendor where coveragearea='100');


select * from driver where vehicle_vehicleid in (select vehicleid from vehicle)


