--Assignment 2: Car Rental System
--File Name: dosh0010Assignment02
--Login ID: dosh0010
--Student Name: Aarsh Doshi
--Student Number: 040988423
--Course: CST8215 310
--Semester: Winter 2020
--Date of Creation: 2020/02/28
--Last Modified: 2020/02/28


--DDL for CAR RENTAL SYSTEM


--Drop View
Drop View If Exists RentalInfo_V;
Drop View If Exists CustomerInfo_V;

--Drop Table
Drop Table If Exists Vehicle;
Drop Table If Exists VehicleClass;
Drop Table If Exists Rental;
Drop Table If Exists Customer;
Drop Table If Exists Agency;

--Create Table Agency
Create Table Agency(
	AgencyID       INT,
	AgencyLocation CHAR (15),

	Constraint PK_Agency Primary Key (AgencyID)
);

--Create Table Customer
Create Table Customer(
	CustomerID 	   VARCHAR (4),
	CustomerName 	   VARCHAR (30) NOT NULL,
	CustomerAddress    VARCHAR (40),
	CustomerCellNumber VARCHAR (12),
	AgencyID INT, -- References Agency (AgencyID)
	
	Constraint PK_Customer Primary Key (CustomerID),
	Constraint FK_Agency Foreign Key (AgencyID) References Agency (AgencyID)
);

--Create Table Rental
Create Table Rental(
	RentalID 	 INT,
	CustomerID 	 VARCHAR (4), --References Customer (CustomerID)
	RentalStartDate  Date,
	RentalReturnDate Date,

	Constraint PK_Rental Primary Key (RentalID),
	Constraint FK_Customer Foreign Key (CustomerID) References Customer (CustomerID)
); 

--Create Table VehicleClass
Create Table VehicleClass(
	VehicleClassID   INT,
	VehicleClassName VARCHAR (15),

	Constraint PK_VehicleClass Primary Key (VehicleClassID)
);

--Create Table Vehicle
Create Table Vehicle(
	VehicleID      INT,
	VehicleClassID INT,--References VehicleClass (VehicleClassID)
	RentalID       INT,--References Rental (RentalID)
	
	Constraint PK_Vehicle Primary Key (VehicleID),
	Constraint FK1_VehicleClass Foreign Key (VehicleClassID) References VehicleClass (VehicleClassID),
	Constraint FK2_Rental Foreign Key (RentalID) References Rental (RentalID)
	
);

--Create View
Create View RentalInfo_V AS
Select RentalID,CustomerID,RentalStartDate,RentalReturnDate From Rental;

--Create View
Create View CustomerInfo_V AS
Select CustomerID,CustomerName,CustomerAddress,CustomerCellNumber From Customer;

--eof: dosh0010Assignment02CarRentalSystem-DDL.sql