/*Encreption Column*/

USE Group9_HealthcareInsurance;
GO

--If there is no master key, create one now. 
IF NOT EXISTS 
    (SELECT * FROM sys.symmetric_keys WHERE symmetric_key_id = 101)
    CREATE MASTER KEY ENCRYPTION BY 
    PASSWORD = '23987hxJKL95QYV4369#ghf0%lekjg5k3fd117r$$#1946kcj$n44ncjhdlj'
GO

CREATE CERTIFICATE Cust09
   WITH SUBJECT = 'Customer SSN Numbers';
GO

CREATE SYMMETRIC KEY SSN_Key11
    WITH ALGORITHM = AES_256
    ENCRYPTION BY CERTIFICATE Cust09;
GO

-- Create a column in which to store the encrypted data.
ALTER TABLE [Customer_Table] 
    ADD SSN_Encrypted varbinary(128); 
GO

-- Open the symmetric key with which to encrypt the data.
OPEN SYMMETRIC KEY SSN_Key11
   DECRYPTION BY CERTIFICATE Cust09;

-- Encrypt the value in column SSN using the
-- symmetric key SSN_Key11.
-- Save the result in column SSN_Encrypted.  
UPDATE [Customer_Table]
SET SSN_Encrypted = EncryptByKey(Key_GUID('SSN_Key11')
    , SSN, 1, HashBytes('SHA1', CONVERT( varbinary
    , Customer_ID)));
GO

-- Verify the encryption.
-- First, open the symmetric key with which to decrypt the data.

OPEN SYMMETRIC KEY SSN_Key11
   DECRYPTION BY CERTIFICATE Cust09;
GO

-- Now list the original ssn number, the encrypted ssn number,
-- and the decrypted ciphertext. If the decryption worked,
-- the original number will match the decrypted number.

SELECT SSN, SSN_Encrypted 
    AS 'Encrypted SSN number', CONVERT(nvarchar,
    DecryptByKey(SSN_Encrypted, 1 , 
    HashBytes('SHA1', CONVERT(varbinary, Customer_ID))))
    AS 'Decrypted SSN number' FROM [Customer_Table];
GO