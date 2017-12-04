--DATA INSETION SCRIPT

USE Group9_HealthcareInsurance;
GO

INSERT dbo.Doctor_Table
	VALUES('Ajinkya','Rode',1),
		('Monil','Bhavsar',2),
		('Qing','Mu',3),
		('Yusuf','Ozbek',4),
		('Wuping','Wang',5),
		('Kal','Bugrara',6),
		('Robin','Hillyard',7),
		('Vishal','Chawla',8),
		('Pirozzi','Maricla',9),
		('Vincent','Lattuada',10);
SELECT * FROM Doctor_Table;	


INSERT dbo.Customer_Table
	VALUES('William','Smith','1963-10-10','123123123','Boston','MA',1),
		('Mariana','Watson','1970-05-02','234234234','Boston','MA',2),
		('Carol','Wood','1974-08-30','345345345','Boston','MA',3),
		('John','Cook','1972-02-03','456456456','Boston','MA',4),
		('Tony','Brown','1968-12-10','567567567','Boston','MA',5),
		('Sally','White','1979-11-06','678678678','Boston','MA',6),
		('Peter','Baker','1982-01-17','789789789','Boston','MA',7),
		('Jane','Turner','1985-05-20','890890890','Boston','MA',8),
		('Evin','Brook','1981-06-02','901901901','Boston','MA',9),
		('Ema','Field','1970-02-27','012012012','Boston','MA',10);
SELECT * FROM [Customer_Table];



----------- Agent_Table Data Insert-------------------------------
SET IDENTITY_INSERT dbo.Agent_Table ON

INSERT into dbo.Agent_Table(Agent_ID, Agent_First_Name, Agent_Last_Name)
	Values (1, 'Shashwat', 'Mehra');

INSERT into dbo.Agent_Table(Agent_ID, Agent_First_Name, Agent_Last_Name)
	Values (2, 'Monil', 'Bhavsar');

INSERT into dbo.Agent_Table(Agent_ID, Agent_First_Name, Agent_Last_Name)
	Values (3, 'Saket', 'Patel');

INSERT into dbo.Agent_Table(Agent_ID, Agent_First_Name, Agent_Last_Name)
	Values (4, 'Rohit', 'Nigam');

INSERT into dbo.Agent_Table(Agent_ID, Agent_First_Name, Agent_Last_Name)
	Values (5, 'Gabrielle', 'Utton');

INSERT into dbo.Agent_Table(Agent_ID, Agent_First_Name, Agent_Last_Name)
	Values (6, 'Taylor', 'Emerzian');

INSERT into dbo.Agent_Table(Agent_ID, Agent_First_Name, Agent_Last_Name)
	Values (7, 'Zoe', 'Rose');

INSERT into dbo.Agent_Table(Agent_ID, Agent_First_Name, Agent_Last_Name)
	Values (8, 'Brenda', 'James');

INSERT into dbo.Agent_Table(Agent_ID, Agent_First_Name, Agent_Last_Name)
	Values (9, 'Rob', 'Dillon');

INSERT into dbo.Agent_Table(Agent_ID, Agent_First_Name, Agent_Last_Name)
	Values (10, 'Lilly', 'Emerzian');



------------------- Address_Table Data Insert----------------------------

SET IDENTITY_INSERT dbo.Agent_Table OFF
SET IDENTITY_INSERT dbo.Address_Table ON

INSERT into dbo.Address_Table(Address_ID, Street_Address_Line1, Street_Address_Line2, City, State, ZipCode)
	Values (1, '1163 Boylston Street', 'Apartment 10', 'Boston', 'MA', '02215');

INSERT into dbo.Address_Table(Address_ID, Street_Address_Line1, Street_Address_Line2, City, State, ZipCode)
	Values (2, '25 Wobourn Street', 'Apartment 3', 'Boston', 'MA', '01887');

INSERT into dbo.Address_Table(Address_ID, Street_Address_Line1, Street_Address_Line2, City, State, ZipCode)
	Values (3, '1 Tremnont Street', 'Apartment 15', 'Waltham', 'MA', '02337');

INSERT into dbo.Address_Table(Address_ID, Street_Address_Line1, Street_Address_Line2, City, State, ZipCode)
	Values (4, '11 Mass Street', 'Apartment 4', 'Boston', 'MA', '02214');

INSERT into dbo.Address_Table(Address_ID, Street_Address_Line1, Street_Address_Line2, City, State, ZipCode)
	Values (5, '23 Boylston Street', 'Apartment 10', 'Boston', 'MA', '02215');

INSERT into dbo.Address_Table(Address_ID, Street_Address_Line1, Street_Address_Line2, City, State, ZipCode)
	Values (6, '1163 Boylston Street', 'Apartment 10', 'Boston', 'MA', '02215');

INSERT into dbo.Address_Table(Address_ID, Street_Address_Line1, Street_Address_Line2, City, State, ZipCode)
	Values (7, '1163 Mission Hill Street', 'Apartment 32', 'Boston', 'MA', '02215');

INSERT into dbo.Address_Table(Address_ID, Street_Address_Line1, Street_Address_Line2, City, State, ZipCode)
	Values (8, '116 Union', 'Apartment 4', 'Boston', 'MA', '03452');

INSERT into dbo.Address_Table(Address_ID, Street_Address_Line1, Street_Address_Line2, City, State, ZipCode)
	Values (9, '1163 Brigham', 'Apartment 17', 'Boston', 'MA', '02215');

INSERT into dbo.Address_Table(Address_ID, Street_Address_Line1, Street_Address_Line2, City, State, ZipCode)
	Values (10, '11 Roxbury Street', 'Apartment 19', 'Boston', 'MA', '02256');



INSERT dbo.Address_Table
	VALUES('360 Huntington Ave','','Boston','MA','02115'),
		('116th St & Broadway','','New York','NY','10027'),
		('5000 Forbes Ave','','Pittsburgh','PA','15213'),
		('One Silber Way','','Boston','MA','02215'),
		('77 Massachusetts Ave','','Cambridge','MA','02139'),
		('450 Serra Mall','','Stanford','CA','94305'),
		('4200 Fifth Ave','','Pittsburgh','PA','15260'),
		('175 Forest St','','Waltham','MA','02452'),
		('2 W Loop Rd','','New York','NY','10044'),
		('100 Institute Rd,','','Worcester','MA','01609');
SELECT * FROM Address_Table;


select * from [Policy_Type]

SET IDENTITY_INSERT Policy_Type ON;
insert into Policy_Type (Policy_Type_ID,Group_Information,Policy_Creation_Date)values(1,'group 1','2017/12/12')
insert into Policy_Type (Policy_Type_ID,Group_Information,Policy_Creation_Date)values(2,'group 2','2017/12/12')
insert into Policy_Type (Policy_Type_ID,Group_Information,Policy_Creation_Date)values(3,'group 3','2017/12/12')
insert into Policy_Type (Policy_Type_ID,Group_Information,Policy_Creation_Date)values(4,'group 4','2017/12/12')
insert into Policy_Type (Policy_Type_ID,Group_Information,Policy_Creation_Date)values(5,'group 5','2017/12/12')
insert into Policy_Type (Policy_Type_ID,Group_Information,Policy_Creation_Date)values(6,'group 6','2017/12/12')
insert into Policy_Type (Policy_Type_ID,Group_Information,Policy_Creation_Date)values(7,'group 7','2017/12/12')
insert into Policy_Type (Policy_Type_ID,Group_Information,Policy_Creation_Date)values(8,'group 8','2017/12/12')
insert into Policy_Type (Policy_Type_ID,Group_Information,Policy_Creation_Date)values(9,'group 9','2017/12/12')
insert into Policy_Type (Policy_Type_ID,Group_Information,Policy_Creation_Date)values(10,'group 10','2017/12/12')
SET IDENTITY_INSERT Policy_Type OFF;



select * from [Policy_Provider_Table]
SET IDENTITY_INSERT Policy_Provider_Table ON;
insert into Policy_Provider_Table (Policy_Provider_ID,Policy_Provider_FirstName,Policy_Provider_LastName,Policy_Provider_Company) values(1,'Ajinkya','Rode','AIG')
insert into Policy_Provider_Table (Policy_Provider_ID,Policy_Provider_FirstName,Policy_Provider_LastName,Policy_Provider_Company) values(2,'Monil','Bhavsar','RIG')
insert into Policy_Provider_Table (Policy_Provider_ID,Policy_Provider_FirstName,Policy_Provider_LastName,Policy_Provider_Company) values(3,'Qing','Mu','MIG')
insert into Policy_Provider_Table (Policy_Provider_ID,Policy_Provider_FirstName,Policy_Provider_LastName,Policy_Provider_Company) values(4,'Xing','Pi','AIG')
insert into Policy_Provider_Table (Policy_Provider_ID,Policy_Provider_FirstName,Policy_Provider_LastName,Policy_Provider_Company) values(5,'Aniket','Rode','GTG')
insert into Policy_Provider_Table (Policy_Provider_ID,Policy_Provider_FirstName,Policy_Provider_LastName,Policy_Provider_Company) values(6,'Sai','Srinivas','AIG')
insert into Policy_Provider_Table (Policy_Provider_ID,Policy_Provider_FirstName,Policy_Provider_LastName,Policy_Provider_Company) values(7,'Sagar','Paval','AIG')
insert into Policy_Provider_Table (Policy_Provider_ID,Policy_Provider_FirstName,Policy_Provider_LastName,Policy_Provider_Company) values(8,'Ganesh','Pawar','AIG')
insert into Policy_Provider_Table (Policy_Provider_ID,Policy_Provider_FirstName,Policy_Provider_LastName,Policy_Provider_Company) values(9,'Devendra','Jadhav','AIG')
insert into Policy_Provider_Table (Policy_Provider_ID,Policy_Provider_FirstName,Policy_Provider_LastName,Policy_Provider_Company) values(10,'Glen','Maxwell','AIG')
SET IDENTITY_INSERT Policy_Provider_Table OFF;

select * from [Policy_Table]
select * from Agent_Table
SET IDENTITY_INSERT Policy_Table ON;
insert into Policy_Table (Policy_ID,Policy_Type_ID,Policy_Provider_ID,Agent_ID,Conditions)values(1,1,1,1,'Condition 1')
insert into Policy_Table (Policy_ID,Policy_Type_ID,Policy_Provider_ID,Agent_ID,Conditions)values(2,2,2,2,'Condition 2')
insert into Policy_Table (Policy_ID,Policy_Type_ID,Policy_Provider_ID,Agent_ID,Conditions)values(3,3,3,2,'Condition 3')
insert into Policy_Table (Policy_ID,Policy_Type_ID,Policy_Provider_ID,Agent_ID,Conditions)values(4,4,4,4,'Condition 4')
insert into Policy_Table (Policy_ID,Policy_Type_ID,Policy_Provider_ID,Agent_ID,Conditions)values(5,5,5,5,'Condition 5')
insert into Policy_Table (Policy_ID,Policy_Type_ID,Policy_Provider_ID,Agent_ID,Conditions)values(6,3,5,3,'Condition 6')
insert into Policy_Table (Policy_ID,Policy_Type_ID,Policy_Provider_ID,Agent_ID,Conditions)values(7,3,4,3,'Condition 7')
insert into Policy_Table (Policy_ID,Policy_Type_ID,Policy_Provider_ID,Agent_ID,Conditions)values(8,1,1,1,'Condition 8')
insert into Policy_Table (Policy_ID,Policy_Type_ID,Policy_Provider_ID,Agent_ID,Conditions)values(9,9,1,1,'Condition 9')
insert into Policy_Table (Policy_ID,Policy_Type_ID,Policy_Provider_ID,Agent_ID,Conditions)values(10,10,10,10,'Condition 10')
SET IDENTITY_INSERT Policy_Table OFF;

select * from Doctor_Table
select * from Doctor_Policy_Cross_Table
SET IDENTITY_INSERT  Doctor_Policy_Cross_Table ON;
insert into Doctor_Policy_Cross_Table (ID,Doctor_ID,Policy_ID) values (1,1,1)
insert into Doctor_Policy_Cross_Table (ID,Doctor_ID,Policy_ID) values (2,1,2)
insert into Doctor_Policy_Cross_Table (ID,Doctor_ID,Policy_ID) values (3,1,3)
insert into Doctor_Policy_Cross_Table (ID,Doctor_ID,Policy_ID) values (4,1,4)
insert into Doctor_Policy_Cross_Table (ID,Doctor_ID,Policy_ID) values (5,1,5)
insert into Doctor_Policy_Cross_Table (ID,Doctor_ID,Policy_ID) values (6,3,5)
insert into Doctor_Policy_Cross_Table (ID,Doctor_ID,Policy_ID) values (7,3,2)
insert into Doctor_Policy_Cross_Table (ID,Doctor_ID,Policy_ID) values (8,5,2)
insert into Doctor_Policy_Cross_Table (ID,Doctor_ID,Policy_ID) values (9,7,2)
insert into Doctor_Policy_Cross_Table (ID,Doctor_ID,Policy_ID) values (10,9,10)
SET IDENTITY_INSERT  Doctor_Policy_Cross_Table OFF;


select * from [Address_Table]

select * from [Customer_Medical_History]
select * from Customer_Table
SET IDENTITY_INSERT  Customer_Medical_History ON;
insert into Customer_Medical_History (Medical_History_ID, Customer_ID,History_Desc,Date_Of_Entry)values(1,1,'History DESC1','2017-12-12')
insert into Customer_Medical_History (Medical_History_ID, Customer_ID,History_Desc,Date_Of_Entry)values(2,2,'History DESC2','2017-12-12')
insert into Customer_Medical_History (Medical_History_ID, Customer_ID,History_Desc,Date_Of_Entry)values(3,3,'History DESC3','2017-12-12')
insert into Customer_Medical_History (Medical_History_ID, Customer_ID,History_Desc,Date_Of_Entry)values(4,4,'History DESC4','2017-12-12')
insert into Customer_Medical_History (Medical_History_ID, Customer_ID,History_Desc,Date_Of_Entry)values(5,5,'History DESC5','2017-12-12')
insert into Customer_Medical_History (Medical_History_ID, Customer_ID,History_Desc,Date_Of_Entry)values(6,6,'History DESC6','2017-12-12')
insert into Customer_Medical_History (Medical_History_ID, Customer_ID,History_Desc,Date_Of_Entry)values(7,7,'History DESC7','2017-12-12')
insert into Customer_Medical_History (Medical_History_ID, Customer_ID,History_Desc,Date_Of_Entry)values(8,8,'History DESC8','2017-12-12')
insert into Customer_Medical_History (Medical_History_ID, Customer_ID,History_Desc,Date_Of_Entry)values(9,1,'History DESC2-2','2017-12-12')
insert into Customer_Medical_History (Medical_History_ID, Customer_ID,History_Desc,Date_Of_Entry)values(10,10,'History DESC10','2017-12-12')
SET IDENTITY_INSERT  Customer_Medical_History OFF;



Select * from Policy_Period_Table
SET IDENTITY_INSERT  Policy_Period_Table ON;
insert into Policy_Period_Table (Policy_Period_ID,Policy_Start_Date,Policy_End_Date,Last_Modified_Date)values(1,'2011-12-12','2012-12-12','2012-12-12')
insert into Policy_Period_Table (Policy_Period_ID,Policy_Start_Date,Policy_End_Date,Last_Modified_Date)values(2,'2012-12-12','2013-12-12','2012-12-12')
insert into Policy_Period_Table (Policy_Period_ID,Policy_Start_Date,Policy_End_Date,Last_Modified_Date)values(3,'2013-12-12','2014-12-12','2012-12-12')
insert into Policy_Period_Table (Policy_Period_ID,Policy_Start_Date,Policy_End_Date,Last_Modified_Date)values(4,'2020-12-12','2021-12-12','2012-12-12')
insert into Policy_Period_Table (Policy_Period_ID,Policy_Start_Date,Policy_End_Date,Last_Modified_Date)values(5,'2014-12-12','2015-12-12','2012-12-12')
insert into Policy_Period_Table (Policy_Period_ID,Policy_Start_Date,Policy_End_Date,Last_Modified_Date)values(6,'2015-12-12','2016-12-12','2012-12-12')
insert into Policy_Period_Table (Policy_Period_ID,Policy_Start_Date,Policy_End_Date,Last_Modified_Date)values(7,'2016-12-12','2017-12-12','2012-12-12')
insert into Policy_Period_Table (Policy_Period_ID,Policy_Start_Date,Policy_End_Date,Last_Modified_Date)values(8,'2017-12-12','2018-12-12','2012-12-12')
insert into Policy_Period_Table (Policy_Period_ID,Policy_Start_Date,Policy_End_Date,Last_Modified_Date)values(9,'2018-12-12','2019-12-12','2012-12-12')
insert into Policy_Period_Table (Policy_Period_ID,Policy_Start_Date,Policy_End_Date,Last_Modified_Date)values(10,'2019-12-12','2020-12-12','2012-12-12')
SET IDENTITY_INSERT  Policy_Period_Table OFF;


select * from Transaction_Table
SET IDENTITY_INSERT  Transaction_Table ON;
insert into Transaction_Table (Transaction_ID,Transaction_Desc,Date) values(1,'trans desc1','2017-12-12')
insert into Transaction_Table (Transaction_ID,Transaction_Desc,Date) values(2,'trans desc2','2017-11-12')
insert into Transaction_Table (Transaction_ID,Transaction_Desc,Date) values(3,'trans desc3','2017-10-12')
insert into Transaction_Table (Transaction_ID,Transaction_Desc,Date) values(4,'trans desc4','2017-09-12')
insert into Transaction_Table (Transaction_ID,Transaction_Desc,Date) values(5,'trans desc5','2017-08-12')
insert into Transaction_Table (Transaction_ID,Transaction_Desc,Date) values(6,'trans desc6','2017-07-12')
insert into Transaction_Table (Transaction_ID,Transaction_Desc,Date) values(7,'trans desc7','2017-05-12')
insert into Transaction_Table (Transaction_ID,Transaction_Desc,Date) values(8,'trans desc8','2017-04-12')
insert into Transaction_Table (Transaction_ID,Transaction_Desc,Date) values(9,'trans desc9','2017-03-12')
insert into Transaction_Table (Transaction_ID,Transaction_Desc,Date) values(10,'trans desc10','2017-02-12')
SET IDENTITY_INSERT  Transaction_Table OFF;


select * from [Policy_Sales_Table]
SET IDENTITY_INSERT  [Policy_Sales_Table] ON;
insert into Policy_Sales_Table (Policy_Sales_ID,Customer_ID,Transaction_ID,Premium,Policy_Period_ID,Policy_Coverage,Policy_ID) values(1,1,1,300,1,1,1)
insert into Policy_Sales_Table (Policy_Sales_ID,Customer_ID,Transaction_ID,Premium,Policy_Period_ID,Policy_Coverage,Policy_ID) values(2,2,2,400,2,1,2)
insert into Policy_Sales_Table (Policy_Sales_ID,Customer_ID,Transaction_ID,Premium,Policy_Period_ID,Policy_Coverage,Policy_ID) values(3,3,3,500,3,1,3)
insert into Policy_Sales_Table (Policy_Sales_ID,Customer_ID,Transaction_ID,Premium,Policy_Period_ID,Policy_Coverage,Policy_ID) values(4,4,4,600,4,1,4)
insert into Policy_Sales_Table (Policy_Sales_ID,Customer_ID,Transaction_ID,Premium,Policy_Period_ID,Policy_Coverage,Policy_ID) values(5,5,5,700,5,1,5)
insert into Policy_Sales_Table (Policy_Sales_ID,Customer_ID,Transaction_ID,Premium,Policy_Period_ID,Policy_Coverage,Policy_ID) values(6,6,6,800,6,1,6)
insert into Policy_Sales_Table (Policy_Sales_ID,Customer_ID,Transaction_ID,Premium,Policy_Period_ID,Policy_Coverage,Policy_ID) values(7,7,7,900,7,1,7)
insert into Policy_Sales_Table (Policy_Sales_ID,Customer_ID,Transaction_ID,Premium,Policy_Period_ID,Policy_Coverage,Policy_ID) values(8,8,8,200,8,1,8)
insert into Policy_Sales_Table (Policy_Sales_ID,Customer_ID,Transaction_ID,Premium,Policy_Period_ID,Policy_Coverage,Policy_ID) values(9,9,9,670,9,1,9)
insert into Policy_Sales_Table (Policy_Sales_ID,Customer_ID,Transaction_ID,Premium,Policy_Period_ID,Policy_Coverage,Policy_ID) values(10,10,10,600,10,1,10)
SET IDENTITY_INSERT  [Policy_Sales_Table] OFF;

select * from [Policy_Claim_Table]
SET IDENTITY_INSERT  [Policy_Claim_Table] ON;
insert into Policy_Claim_Table (Policy_Claim_ID,Policy_ID,Policy_Period_ID,Claim_Amount,Customer_ID)values(1,1,1,3000,1)
insert into Policy_Claim_Table (Policy_Claim_ID,Policy_ID,Policy_Period_ID,Claim_Amount,Customer_ID)values(2,2,2,5000,2)
insert into Policy_Claim_Table (Policy_Claim_ID,Policy_ID,Policy_Period_ID,Claim_Amount,Customer_ID)values(3,3,3,6000,3)
insert into Policy_Claim_Table (Policy_Claim_ID,Policy_ID,Policy_Period_ID,Claim_Amount,Customer_ID)values(4,4,4,3000,4)
insert into Policy_Claim_Table (Policy_Claim_ID,Policy_ID,Policy_Period_ID,Claim_Amount,Customer_ID)values(5,5,5,3000,5)
insert into Policy_Claim_Table (Policy_Claim_ID,Policy_ID,Policy_Period_ID,Claim_Amount,Customer_ID)values(6,6,6,3000,6)
insert into Policy_Claim_Table (Policy_Claim_ID,Policy_ID,Policy_Period_ID,Claim_Amount,Customer_ID)values(7,7,7,3000,7)
insert into Policy_Claim_Table (Policy_Claim_ID,Policy_ID,Policy_Period_ID,Claim_Amount,Customer_ID)values(8,8,8,3000,8)
insert into Policy_Claim_Table (Policy_Claim_ID,Policy_ID,Policy_Period_ID,Claim_Amount,Customer_ID)values(9,9,9,3000,9)
insert into Policy_Claim_Table (Policy_Claim_ID,Policy_ID,Policy_Period_ID,Claim_Amount,Customer_ID)values(10,10,10,3000,10)
SET IDENTITY_INSERT  [Policy_Claim_Table] OFF;

select * from [Policy_Claim_Desc_Table]
SET IDENTITY_INSERT  [Policy_Claim_Desc_Table] ON;
insert into Policy_Claim_Desc_Table (Policy_Claim_Desc_ID,Policy_Claim_ID,Policy_Claim_Type,Policy_Claim_Desc) values (1,1,'partial','partial desc')
insert into Policy_Claim_Desc_Table (Policy_Claim_Desc_ID,Policy_Claim_ID,Policy_Claim_Type,Policy_Claim_Desc) values (2,2,'Full refund','Full desc')
insert into Policy_Claim_Desc_Table (Policy_Claim_Desc_ID,Policy_Claim_ID,Policy_Claim_Type,Policy_Claim_Desc) values (3,3,'Full refund','Full refund desc')
insert into Policy_Claim_Desc_Table (Policy_Claim_Desc_ID,Policy_Claim_ID,Policy_Claim_Type,Policy_Claim_Desc) values (4,4,'partial','partial desc')
insert into Policy_Claim_Desc_Table (Policy_Claim_Desc_ID,Policy_Claim_ID,Policy_Claim_Type,Policy_Claim_Desc) values (5,5,'Full refund','Full refund desc')
insert into Policy_Claim_Desc_Table (Policy_Claim_Desc_ID,Policy_Claim_ID,Policy_Claim_Type,Policy_Claim_Desc) values (6,6,'partial','partial desc')
insert into Policy_Claim_Desc_Table (Policy_Claim_Desc_ID,Policy_Claim_ID,Policy_Claim_Type,Policy_Claim_Desc) values (7,7,'Full refund','Full refund desc')
insert into Policy_Claim_Desc_Table (Policy_Claim_Desc_ID,Policy_Claim_ID,Policy_Claim_Type,Policy_Claim_Desc) values (8,8,'partial','partial desc')
insert into Policy_Claim_Desc_Table (Policy_Claim_Desc_ID,Policy_Claim_ID,Policy_Claim_Type,Policy_Claim_Desc) values (9,9,'Full refund','Full refund desc')
insert into Policy_Claim_Desc_Table (Policy_Claim_Desc_ID,Policy_Claim_ID,Policy_Claim_Type,Policy_Claim_Desc) values (10,10,'partial','partial desc')
SET IDENTITY_INSERT  [Policy_Claim_Desc_Table] OFF;



UPDATE [Policy_Claim_Table]
SET Transaction_ID=1
WHERE Policy_Claim_ID=1;

UPDATE [Policy_Claim_Table]
SET Transaction_ID=2
WHERE Policy_Claim_ID=2;

UPDATE [Policy_Claim_Table]
SET Transaction_ID=3
WHERE Policy_Claim_ID=3;

UPDATE [Policy_Claim_Table]
SET Transaction_ID=4
WHERE Policy_Claim_ID=4;

UPDATE [Policy_Claim_Table]
SET Transaction_ID=5
WHERE Policy_Claim_ID=5;

UPDATE [Policy_Claim_Table]
SET Transaction_ID=6
WHERE Policy_Claim_ID=6;

UPDATE [Policy_Claim_Table]
SET Transaction_ID=7
WHERE Policy_Claim_ID=7;

UPDATE [Policy_Claim_Table]
SET Transaction_ID=8
WHERE Policy_Claim_ID=8;

UPDATE [Policy_Claim_Table]
SET Transaction_ID=9
WHERE Policy_Claim_ID=9;

UPDATE [Policy_Claim_Table]
SET Transaction_ID=10
WHERE Policy_Claim_ID=10;

SELECT * FROM [Policy_Claim_Table];