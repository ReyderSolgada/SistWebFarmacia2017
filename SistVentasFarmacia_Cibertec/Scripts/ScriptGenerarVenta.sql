use bd_farmacia2017;
-- Datos orden Venta
select * from producto;
insert into ordenventa values(null,'2017-12-01',null,1,2,4); 
insert into ordenventa values(null,'2017-12-06',null,1,1,2); 
insert into ordenventa values(null,'2017-12-05',null,1,5,5); 
insert into ordenventa values(null,'2017-12-08',null,1,3,3); 
-- Datos detalle Venta
insert into detalleventa values(1,10,79,158.0);
insert into detalleventa values(1,19,98,980.0);
insert into detalleventa values(1,7,139,834.0);
insert into detalleventa values(3,13,50,135.0);
insert into detalleventa values(3,15,120,600.0);
insert into detalleventa values(3,20,30,135.0);
insert into detalleventa values(2,5,29,145.0);
insert into detalleventa values(2,12,79,197.5);
insert into detalleventa values(4,10,54,108.0);
insert into detalleventa values(4,14,790,5135.0);