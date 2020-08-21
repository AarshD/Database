--Assignment 2: Car Rental System
--File Name: dosh0010Assignment02
--Login ID: dosh0010
--Student Name: Aarsh Doshi
--Student Number: 040988423
--Course: CST8215 310
--Semester: Winter 2020
--Date of Creation: 2020/02/28
--Last Modified: 2020/02/28


--Queries for CAR RENTAL SYSTEM


--Metadata
Select * From Information_Schema.Columns Where
Table_Name ='agency' OR
Table_Name ='customer' OR
Table_Name ='rental' OR
Table_Name ='vehicleClass' OR
Table_Name ='vehicle';

--Select with Where for atleast 3 Entities
Select * From Customer Where CustomerName ='Sarah Frazer';
Select * From Rental Where RentalID =6004;
Select * From VehicleClass Where VehicleClassID =52;

-- Left Outer Join: Customer who do not have Rental Return Date
Select Rental.RentalReturnDate,Customer.CustomerID,CustomerName
From Customer
Left Join Rental
On Rental.CustomerID=Customer.CustomerID;

--Right Outer Join: Agency who do not have Customer's Cell Number
Select Agency.AgencyID,AgencyLocation,Customer.CustomerName,Customer.CustomerCellNumber
From Customer
Right Join Agency
On Agency.AgencyID = Customer.AgencyID;

--UNION
Select VehicleClassID From VehicleClass
Union
Select AgencyID From Agency;

--Subquery
Select CustomerName,CustomerAddress,CustomerCellNumber From Customer Where
CustomerID = (Select CustomerID From Rental Where RentalID=6002);

Select CustomerName,CustomerAddress,CustomerCellNumber From Customer Where
AgencyID = (Select AgencyID From Agency Where AgencyLocation = 'Windsor');

--Views
Select * From RentalInfo_V;
Select * From CustomerInfo_V;


--eof: dosh0010Assignment02CarRentalSystem-Queries.sql