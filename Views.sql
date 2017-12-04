--Views

USE Group9_HealthcareInsurance;
GO

--View 1
CREATE VIEW Policy_Claim_View
AS  
SELECT pc.Policy_Claim_ID, pc.Policy_ID,pc.Claim_Amount, pcd.Policy_Claim_Type, pcd.Policy_Claim_Desc
FROM Policy_Claim_Table pc
LEFT JOIN  
Policy_Claim_Desc_Table pcd
ON pc.Policy_Claim_ID = pcd.Policy_Claim_ID;



--View 2
CREATE VIEW Policy_Detail_View
AS  
SELECT p.Policy_ID,p.Policy_Type_ID,pt.Group_Information,pp.Policy_Provider_ID,pp.Policy_Provider_FirstName,pp.Policy_Provider_LastName,pp.Policy_Provider_Company
FROM Policy_Table p
LEFT JOIN  
Agent_Table a
ON p.Agent_ID = a.Agent_ID
LEFT JOIN
Policy_Type pt
ON p.Policy_Type_ID = pt.Policy_Type_ID
LEFT JOIN
Policy_Provider_Table pp
ON p.Policy_Provider_ID = pp.Policy_Provider_ID;



--View 3
CREATE VIEW Transaction_Detail_View
AS
SELECT ps.Policy_ID, ps.Customer_ID, ps.Transaction_ID, ps.Premium, pc.Claim_Amount, t.Date
FROM Policy_Sales_Table ps
LEFT JOIN
Policy_Claim_Table pc
ON ps.Transaction_ID = pc.Transaction_ID
LEFT JOIN
Transaction_Table t
ON ps.Transaction_ID = t.Transaction_ID;