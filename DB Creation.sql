-- Create tables section -------------------------------------------------
-- Table Policy_Type

CREATE DATABASE Group9_HealthcareInsurance;
GO

USE Group9_HealthcareInsurance;
GO

USE master;

DROP DATABASE Group9_HealthcareInsurance;

CREATE TABLE [Policy_Type]
(
 [Policy_Type_ID] int IDENTITY NOT NULL,
 [Group_Information] Char(50) NULL,
 [Policy_Creation_Date] Date NULL
)
go

-- Add keys for table Policy_Type

ALTER TABLE [Policy_Type] ADD CONSTRAINT [Key2] PRIMARY KEY ([Policy_Type_ID])
go

-- Table Doctor_Table

CREATE TABLE [Doctor_Table]
(
 [Doctor_ID] int IDENTITY NOT NULL,
 [Doctor_First_Name] Char(20) NULL,
 [Doctor_Last_Name] Char(20) NULL,
 [Doctor_Address_ID] int NOT NULL,
 [Address_ID] int NOT NULL
)
go

-- Create indexes for table Doctor_Table

CREATE INDEX [IX_Relationship21] ON [Doctor_Table] ([Address_ID])
go

-- Add keys for table Doctor_Table

ALTER TABLE [Doctor_Table] ADD CONSTRAINT [Key3] PRIMARY KEY ([Doctor_ID])
go

-- Table Policy_Table

CREATE TABLE [Policy_Table]
(
 [Policy_ID] int IDENTITY NOT NULL,
 [Policy_Type_ID] int NOT NULL,
 [Policy_Provider_ID] int NOT NULL,
 [Agent_ID] int NOT NULL,
 [Conditions] Char(50) NULL
)
go

-- Create indexes for table Policy_Table

CREATE INDEX [IX_Relationship3] ON [Policy_Table] ([Policy_Type_ID])
go

CREATE INDEX [IX_Relationship4] ON [Policy_Table] ([Policy_Provider_ID])
go

CREATE INDEX [IX_Relationship5] ON [Policy_Table] ([Agent_ID])
go

-- Add keys for table Policy_Table

ALTER TABLE [Policy_Table] ADD CONSTRAINT [Key4] PRIMARY KEY ([Policy_ID])
go

-- Table Doctor_Policy_Cross_Table

CREATE TABLE [Doctor_Policy_Cross_Table]
(
 [ID] int IDENTITY NOT NULL,
 [Doctor_ID] int NOT NULL,
 [Policy_ID] int NOT NULL
)
go

-- Create indexes for table Doctor_Policy_Cross_Table

CREATE INDEX [IX_Relationship7] ON [Doctor_Policy_Cross_Table] ([Doctor_ID])
go

CREATE INDEX [IX_Relationship15] ON [Doctor_Policy_Cross_Table] ([Policy_ID])
go

-- Add keys for table Doctor_Policy_Cross_Table

ALTER TABLE [Doctor_Policy_Cross_Table] ADD CONSTRAINT [Key5] PRIMARY KEY ([ID])
go

-- Table Agent_Table

CREATE TABLE [Agent_Table]
(
 [Agent_ID] int IDENTITY NOT NULL,
 [Agent_First_Name] Char(20) NULL,
 [Agent_Last_Name] Char(20) NULL
)
go

-- Add keys for table Agent_Table

ALTER TABLE [Agent_Table] ADD CONSTRAINT [Key6] PRIMARY KEY ([Agent_ID])
go

-- Table Policy_Provider_Table

CREATE TABLE [Policy_Provider_Table]
(
 [Policy_Provider_ID] int IDENTITY NOT NULL,
 [Policy_Provider_FirstName] Char(20) NULL,
 [Policy_Provider_LastName] Char(20) NULL,
 [Policy_Provider_Company] Char(30) NULL
)
go

-- Add keys for table Policy_Provider_Table

ALTER TABLE [Policy_Provider_Table] ADD CONSTRAINT [Key7] PRIMARY KEY ([Policy_Provider_ID])
go

-- Table Address_Table

CREATE TABLE [Address_Table]
(
 [Address_ID] int IDENTITY NOT NULL,
 [Street_Address_Line1] Char(30) NULL,
 [Street_Address_Line2] Char(30) NULL,
 [City] Char(20) NULL,
 [State] Char(20) NULL,
 [ZipCode] Char(5) NULL
)
go

-- Add keys for table Address_Table

ALTER TABLE [Address_Table] ADD CONSTRAINT [Key8] PRIMARY KEY ([Address_ID])
go

-- Table Customer_Medical_History

CREATE TABLE [Customer_Medical_History]
(
 [Medical_History_ID] int IDENTITY NOT NULL,
 [Customer_ID] int NOT NULL,
 [History_Desc] Char(50) NULL,
 [Date_Of_Entry] Date NULL
)
go

-- Create indexes for table Customer_Medical_History

CREATE INDEX [IX_Relationship8] ON [Customer_Medical_History] ([Customer_ID])
go

-- Add keys for table Customer_Medical_History

ALTER TABLE [Customer_Medical_History] ADD CONSTRAINT [Key9] PRIMARY KEY ([Medical_History_ID])
go

-- Table Customer_Table

CREATE TABLE [Customer_Table]
(
 [Customer_ID] int IDENTITY NOT NULL,
 [Customer_First_Name] Char(20) NULL,
 [Customer_Last_Name] Char(20) NULL,
 [DOB] Date NULL,
 [SSN] Char(9) NULL,
 [City] Char(20) NULL,
 [State] Char(20) NULL,
 [Address_ID] int NOT NULL
)
go

-- Create indexes for table Customer_Table

CREATE INDEX [IX_Relationship17] ON [Customer_Table] ([Address_ID])
go

-- Add keys for table Customer_Table

ALTER TABLE [Customer_Table] ADD CONSTRAINT [Key10] PRIMARY KEY ([Customer_ID])
go

-- Table Policy_Sales_Table

CREATE TABLE [Policy_Sales_Table]
(
 [Policy_Sales_ID] int IDENTITY NOT NULL,
 [Customer_ID] int NOT NULL,
 [Transaction_ID] int NOT NULL,
 [Premium] MONEY NULL,
 [Policy_Period_ID] int NULL,
 [Policy_Coverage] Char(50) NULL,
 [Policy_ID] int NOT NULL
)
go

-- Create indexes for table Policy_Sales_Table

CREATE INDEX [IX_Relationship1] ON [Policy_Sales_Table] ([Policy_ID])
go

CREATE INDEX [IX_Relationship9] ON [Policy_Sales_Table] ([Customer_ID])
go

CREATE INDEX [IX_Relationship10] ON [Policy_Sales_Table] ([Transaction_ID])
go

CREATE INDEX [IX_Relationship11] ON [Policy_Sales_Table] ([Policy_Period_ID])
go

-- Add keys for table Policy_Sales_Table

ALTER TABLE [Policy_Sales_Table] ADD CONSTRAINT [Key11] PRIMARY KEY ([Policy_Sales_ID])
go

-- Table Policy_Period_Table

CREATE TABLE [Policy_Period_Table]
(
 [Policy_Period_ID] int IDENTITY NOT NULL,
 [Policy_Start_Date] DATE NULL,
 [Policy_End_Date] DATE NULL,
 [Last_Modified_Date] DATE NULL
)
go

-- Add keys for table Policy_Period_Table

ALTER TABLE [Policy_Period_Table] ADD CONSTRAINT [Key12] PRIMARY KEY ([Policy_Period_ID])
go

-- Table Transaction_Table

CREATE TABLE [Transaction_Table]
(
 [Transaction_ID] int IDENTITY NOT NULL,
 [Transaction_Desc] Char(50) NULL,
 [Date] DATE NULL
)
go

-- Add keys for table Transaction_Table

ALTER TABLE [Transaction_Table] ADD CONSTRAINT [Key13] PRIMARY KEY ([Transaction_ID])
go

-- Table Policy_Claim_Table

CREATE TABLE [Policy_Claim_Table]
(
 [Policy_Claim_ID] int IDENTITY NOT NULL,
 [Policy_ID] int NOT NULL,
 [Policy_Period_ID] int NOT NULL,
 [Claim_Amount] MONEY NULL,
 [Customer_ID] int NOT NULL
)
go

-- Create indexes for table Policy_Claim_Table

CREATE INDEX [IX_Relationship18] ON [Policy_Claim_Table] ([Policy_Period_ID])
go

CREATE INDEX [IX_Relationship19] ON [Policy_Claim_Table] ([Policy_ID])
go

CREATE INDEX [IX_Relationship20] ON [Policy_Claim_Table] ([Customer_ID])
go

-- Add keys for table Policy_Claim_Table

ALTER TABLE [Policy_Claim_Table] ADD CONSTRAINT [Key14] PRIMARY KEY ([Policy_Claim_ID])
go

-- Table Policy_Claim_Desc_Table

CREATE TABLE [Policy_Claim_Desc_Table]
(
 [Policy_Claim_Desc_ID] int IDENTITY NOT NULL,
 [Policy_Claim_ID] int NOT NULL,
 [Policy_Claim_Type] Char(20) NULL,
 [Policy_Claim_Desc] Char(50) NULL
)
go

-- Create indexes for table Policy_Claim_Desc_Table

CREATE INDEX [IX_Relationship16] ON [Policy_Claim_Desc_Table] ([Policy_Claim_ID])
go

-- Add keys for table Policy_Claim_Desc_Table

ALTER TABLE [Policy_Claim_Desc_Table] ADD CONSTRAINT [Key15] PRIMARY KEY ([Policy_Claim_Desc_ID])
go

-- Create foreign keys (relationships) section ------------------------------------------------- 


ALTER TABLE [Policy_Sales_Table] ADD CONSTRAINT [Relationship1] FOREIGN KEY ([Policy_ID]) REFERENCES [Policy_Table] ([Policy_ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [Policy_Table] ADD CONSTRAINT [Relationship3] FOREIGN KEY ([Policy_Type_ID]) REFERENCES [Policy_Type] ([Policy_Type_ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [Policy_Table] ADD CONSTRAINT [Relationship4] FOREIGN KEY ([Policy_Provider_ID]) REFERENCES [Policy_Provider_Table] ([Policy_Provider_ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [Policy_Table] ADD CONSTRAINT [Relationship5] FOREIGN KEY ([Agent_ID]) REFERENCES [Agent_Table] ([Agent_ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [Doctor_Policy_Cross_Table] ADD CONSTRAINT [Relationship7] FOREIGN KEY ([Doctor_ID]) REFERENCES [Doctor_Table] ([Doctor_ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [Customer_Medical_History] ADD CONSTRAINT [Relationship8] FOREIGN KEY ([Customer_ID]) REFERENCES [Customer_Table] ([Customer_ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [Policy_Sales_Table] ADD CONSTRAINT [Relationship9] FOREIGN KEY ([Customer_ID]) REFERENCES [Customer_Table] ([Customer_ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [Policy_Sales_Table] ADD CONSTRAINT [Relationship10] FOREIGN KEY ([Transaction_ID]) REFERENCES [Transaction_Table] ([Transaction_ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [Policy_Sales_Table] ADD CONSTRAINT [Relationship11] FOREIGN KEY ([Policy_Period_ID]) REFERENCES [Policy_Period_Table] ([Policy_Period_ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [Doctor_Policy_Cross_Table] ADD CONSTRAINT [Relationship15] FOREIGN KEY ([Policy_ID]) REFERENCES [Policy_Table] ([Policy_ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [Policy_Claim_Desc_Table] ADD CONSTRAINT [Relationship16] FOREIGN KEY ([Policy_Claim_ID]) REFERENCES [Policy_Claim_Table] ([Policy_Claim_ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [Customer_Table] ADD CONSTRAINT [Relationship17] FOREIGN KEY ([Address_ID]) REFERENCES [Address_Table] ([Address_ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [Policy_Claim_Table] ADD CONSTRAINT [Relationship18] FOREIGN KEY ([Policy_Period_ID]) REFERENCES [Policy_Period_Table] ([Policy_Period_ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [Policy_Claim_Table] ADD CONSTRAINT [Relationship19] FOREIGN KEY ([Policy_ID]) REFERENCES [Policy_Table] ([Policy_ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [Policy_Claim_Table] ADD CONSTRAINT [Relationship20] FOREIGN KEY ([Customer_ID]) REFERENCES [Customer_Table] ([Customer_ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [Doctor_Table] ADD CONSTRAINT [Relationship21] FOREIGN KEY ([Address_ID]) REFERENCES [Address_Table] ([Address_ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go

ALTER TABLE [Policy_Claim_Table] 
    ADD Transaction_ID int; 
GO