--Assignment 2: Car Rental System
--File Name: dosh0010Assignment02
--Login ID: dosh0010
--Student Name: Aarsh Doshi
--Student Number: 040988423
--Course: CST8215 310
--Semester: Winter 2020
--Date of Creation: 2020/02/28
--Last Modified: 2020/02/28


--DML for CAR RENTAL SYSTEM


Delete From Vehicle;
Delete From VehicleClass;
Delete From Rental;
Delete From Customer;
Delete From Agency;

--Agency Table
Insert Into Agency (AgencyID,AgencyLocation) Values (001,'Ottawa');
Insert Into Agency (AgencyID,AgencyLocation) Values (002,'Brampton');
Insert Into Agency (AgencyID,AgencyLocation) Values (003,'Kingston');
Insert Into Agency (AgencyID,AgencyLocation) Values (004,'Windsor');
Insert Into Agency (AgencyID,AgencyLocation) Values (005,'Toronto');

--Customer Table
Insert Into Customer (CustomerID,CustomerName,CustomerAddress,CustomerCellNumber,AgencyID) Values ('C101','Andrea Leclaire','1385 Woodroffe Ave, Toronto ON','6136190071',001);
Insert Into Customer (CustomerID,CustomerName,CustomerAddress,CustomerCellNumber,AgencyID) Values ('C102','Sarah Frazer','1364 Baseline Road, Ottawa ON','6135700071',002);
Insert Into Customer (CustomerID,CustomerName,CustomerAddress,CustomerCellNumber,AgencyID) Values ('C103','Adam Dyck','1485 Arcola Ave, Regina SK','3065700071',003);
Insert Into Customer (CustomerID,CustomerName,CustomerAddress,CustomerCellNumber,AgencyID) Values ('C104','Sam Singh','1322 Princess Dr, Regina SK','3065806671',004);
Insert Into Customer (CustomerID,CustomerName,CustomerAddress,CustomerCellNumber,AgencyID) Values ('C105','Nancy Kaur','1733 St.John St, Saskatoon SK',null,005);

--Rental Table
Insert Into Rental (RentalID,CustomerID,RentalStartDate,RentalReturnDate) Values (6001,'C101','2020/01/07','2020/01/09');
Insert Into Rental (RentalID,CustomerID,RentalStartDate,RentalReturnDate) Values (6002,'C102','2020/01/11','2020/01/16');
Insert Into Rental (RentalID,CustomerID,RentalStartDate,RentalReturnDate) Values (6003,'C103','2020/01/20',null);
Insert Into Rental (RentalID,CustomerID,RentalStartDate,RentalReturnDate) Values (6004,'C104','2020/01/25','2020/01/31');
Insert Into Rental (RentalID,CustomerID,RentalStartDate,RentalReturnDate) Values (6005,'C105','2020/02/14','2020/02/17');

--VehicleClass Table
Insert Into VehicleClass (VehicleClassID, VehicleClassName) Values (51,'Minivan');
Insert Into VehicleClass (VehicleClassID, VehicleClassName) Values (52,'Sedan');
Insert Into VehicleClass (VehicleClassID, VehicleClassName) Values (53,'SUV');
Insert Into VehicleClass (VehicleClassID, VehicleClassName) Values (54,'Hatchback');
Insert Into VehicleClass (VehicleClassID, VehicleClassName) Values (55,'Limousine');

--Vehicle Table
Insert Into Vehicle (VehicleID, VehicleClassID, RentalID) Values (4001,51,6001);
Insert Into Vehicle (VehicleID, VehicleClassID, RentalID) Values (4002,52,6002);
Insert Into Vehicle (VehicleID, VehicleClassID, RentalID) Values (4003,53,6003);
Insert Into Vehicle (VehicleID, VehicleClassID, RentalID) Values (4004,54,6004);
Insert Into Vehicle (VehicleID, VehicleClassID, RentalID) Values (4005,55,6005);

--eof: dosh0010Assignment02CarRentalSystem-DML.sql