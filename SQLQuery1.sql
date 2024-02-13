create database ravisupermarket
use ravisupermarket
create table tbl_customer(
id int identity(1,1),
cust_id int primary key,
cust_name nvarchar(100),
cust_mob nvarchar(100))

insert into tbl_customer values (1,'kalam','8877669900') 
----insert
create procedure sp_ins_tbl_customer(
@cust_id int ,
@cust_name nvarchar(100),
@cust_mob nvarchar(100))
as begin
insert into tbl_customer(cust_id,cust_name,cust_mob)
values(@cust_id,@cust_name,@cust_mob)
end
-----update
create procedure sp_upd_tbl_customer(
@cust_id int ,
@cust_name nvarchar(100),
@cust_mob nvarchar(100))
as begin
update tbl_customer set
cust_id=@cust_id,
cust_name=@cust_name,
cust_mob=@cust_mob
where cust_id=@cust_id
end
------delete
create procedure sp_dlt_tbl_customer
@id int
as begin
delete from tbl_customer where id=@id
end

---------view-----
create procedure sp_tblview
as begin 
select* from tbl_customer
end
drop proc sp_tbl_customer_get

---------get
create procedure sp_tbl_customer_get(
@id int)
as begin
select * from tbl_customer where id =@id
end
---------------------------------------------------------------------------------------------------------------

---product
create table tbl_product(
id int identity(1,1),
product_id int primary key ,
product_name nvarchar(100),
product_cost nvarchar(100),
product_quantity nvarchar(100)
)
-----insert
create procedure sp_tbl_product_ins(
@product_id int ,
@product_name nvarchar(100),
@product_cost nvarchar(100),
@product_quantity nvarchar(100))
as begin
insert into tbl_product(product_id,product_name,product_cost,product_quantity)
values(@product_id,@product_name,@product_cost,@product_quantity)
end
-----update
create procedure sp_tbl_product_upd(
@product_id int ,
@product_name nvarchar(100),
@product_cost nvarchar(100),
@product_quantity nvarchar(100))
as begin
update tbl_product set
product_id=@product_id,
product_name=@product_name,
product_cost=@product_cost,
product_quantity=@product_quantity
end
------delete
create procedure sp_tbl_product_dlt
(@id int)
as begin
delete from tbl_product where id=id
end
drop proc sp_tbl_product_dlt
--------------view
create procedure sp_tbl_product_view
as begin
select * from tbl_product
end

--------------get
create procedure sp_tbl_product_get
(@id int)
as begin
select * from tbl_product where id=@id
end
drop proc sp_tbl_product_get
------------------------------------------------------------------------------------------------------------------
create table tbl_employee(
id int identity(1,1),
emp_id int primary key,
emp_name nvarchar(100),
emp_mob nvarchar(100),
emp_salary nvarchar(100))
-----insert
create proc sp_tbl_employee_insert(
@emp_id int,
@emp_name nvarchar(100),
@emp_mob nvarchar(100),
@emp_salary nvarchar(100))
as begin
insert into tbl_employee(emp_id,emp_name,emp_mob,emp_salary)
values(@emp_id,@emp_name,@emp_mob,@emp_salary)
end
------update
create proc sp_tbl_employee_update(
@emp_id int,
@emp_name nvarchar(100),
@emp_mob nvarchar(100),
@emp_salary nvarchar(100))
as begin
update tbl_employee set 
emp_name=@emp_name,
emp_mob=@emp_mob,
emp_salary=@emp_salary
end
-----delete
create proc sp_tbl_employee_dlt(
@id int)
as begin
delete from tbl_employee where id=@id
end
-----view
create procedure sp_tbl_employee_view
as begin
select * from tbl_employee
end
-----get
create procedure sp_tbl_emp_get
(@id int)
as begin
select * from tbl_employee where id=@id
end