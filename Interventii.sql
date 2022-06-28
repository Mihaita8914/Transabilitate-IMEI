CREATE TABLE Employee(
NrId int identity(1,1),
Beneficiary VARCHAR(200) NOT NULL,
ServicePartner VARCHAR(200) NOT NULL,
InterventionType VARCHAR(200) NOT NULL,
PlateNumber VARCHAR(200) NOT NULL,
InterventionDate DATE NOT NULL,
PhotoFileName VARCHAR(200) NOT NULL,
Note VARCHAR(1000) NOT NULL,
)
SELECT *FROM Employee

INSERT INTO Employee VALUES('Romgaz','AlcoTop','P.gps','PH22VSC','2021-01-09','anonymus.png','Pe garantie')
INSERT INTO Employee VALUES('Transgaz','Nosomo','R.montaj','PH19KKK','2021-02-10','anonymus.png','Facturabil')

DROP TABLE Employee

)