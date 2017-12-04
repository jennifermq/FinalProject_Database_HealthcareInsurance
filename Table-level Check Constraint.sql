--Check contration on table level

USE Group9_HealthcareInsurance;
GO

select * from [Policy_Period_Table]
ALTER TABLE [Policy_Period_Table]
ADD CONSTRAINT CHK_Start_End_Period CHECK (Policy_End_Date > Policy_Start_Date);

/* to check this CONSTRAINT works lets run following query */
update [Policy_Period_Table] set Policy_End_Date ='2010-12-12' where Policy_Period_ID = 1 