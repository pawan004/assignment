# FIND THE 3rd Hightest salary in a department
Create database testdb;
use testdb;
Create table tbl_Employees  
(  
     Id int primary key auto_increment,  
     FirstName varchar(50),  
     LastName varchar(20),  
     Location varchar(20),  
     Gender varchar(50),  
     Salary int ,
     deptno int
) ;
Insert into tbl_Employees values (1,'Chittaranjan', 'Swain','Odisha', 'Male', 80000,1) ; 
Insert into tbl_Employees values (2,'Chandin', 'Swain', 'Pune','Female', 76000,1) ; 
Insert into tbl_Employees values (3,'Mitu', 'Pradhan','Delhi', 'Male', 55000,1)  ;
Insert into tbl_Employees values (4,'Jeni', 'Swain','Chennai', 'Female', 76000,1) ; 
Insert into tbl_Employees values (5,'Adyashree', 'Swain','UK', 'Female', 49000,2)  ;
Insert into tbl_Employees values (6,'Ram', 'Kumar','US', 'Male', 39000,2)  ;
Insert into tbl_Employees values (7,'Jitendra', 'Gouad','Hydrabad', 'Male', 35000,2);  
Insert into tbl_Employees values (8,'Dibas', 'Hembram','Bangalore', 'Male', 55000,2) ;

select * from tbl_Employees;
#select Id,FirstName,LastName,salary,deptno,rank() over (partition by deptno order by salary desc) from tbl_Employees;
select * from(select Id,FirstName,LastName,salary,deptno,dense_rank() over (partition by deptno order by salary desc)r from tbl_Employees)as emp where r=3;
#Select * from tbl_Employees order by salary desc limit 3,1;
