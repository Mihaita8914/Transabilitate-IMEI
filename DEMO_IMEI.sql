CREATE TABLE Customer(
Id INT PRIMARY KEY NOT NULL,
Name VARCHAR(200) NOT NULL,
Cui VARCHAR(200),
CustomerTypeId INT FOREIGN KEY REFERENCES CustomerType(Id) NOT NULL,
ServerTypeId INT FOREIGN KEY REFERENCES ServerType(Id) NOT NULL,
)

INSERT INTO Customer(Id,Name,Cui) VALUES(1,'FARMEXIM','123'),(2,'ROMGAZ','567')
SELECT * FROM Customer
INSERT INTO DeviceCustomer(Id,Name) VALUES(1,'Teltonika'),(2,'Ruptela'),(3,'Ommnicom')
INSERT INTO Customer(Id,Name,Cui,CustomerTypeId,ServerTypeId) VALUES(1,'FARMEXIM','123',1,1),(2,'AlcoTop','567',2,2),(3,'Valentin.M',NULL,3,3)

SELECT * FROM Customer

CREATE TABLE CustomerType(
Id INT PRIMARY KEY NOT NULL,
Name VARCHAR(200) NOT NULL,
)
INSERT INTO CustomerType(Id,Name) VALUES(1,'Client'),(2,'Service'),(3,'P.A Isys')
SELECT *FROM CustomerType
SELECT c.Name,c.Cui,ct.Name AS 'ServiceName' FROM Customer c
INNER JOIN CustomerType ct ON c.CustomerTypeId=ct.Id

CREATE TABLE ServerType(
Id INT PRIMARY KEY NOT NULL,
Name VARCHAR(200) NOT NULL,
)
INSERT INTO ServerType(Id,Name) VALUES(1,'Trk'),(2,'Tgz'),(3,'Ibr')
SELECT *FROM ServerType
SELECT c.Name,c.Cui,st.Name AS 'ServerName',ct.Name AS 'CustomerType' FROM Customer c
INNER JOIN ServerType st ON c.ServerTypeId=st.Id
INNER JOIN CustomerType ct ON c.CustomerTypeId=ct.Id

SELECT * FROM Customer


CREATE TABLE DeviceMark(
Id INT PRIMARY KEY NOT NULL,
Name VARCHAR(200) NOT NULL,
)
INSERT INTO DeviceMark(Id,Name) VALUES(1,'Teltonika'),(2,'Ruptela'),(3,'Ommnicom')
SELECT *FROM DeviceMark

CREATE TABLE DeviceModel(
Id INT PRIMARY KEY NOT NULL,
Name VARCHAR(200) NOT NULL,
MarkId INT FOREIGN KEY REFERENCES DeviceMark(Id)
)
INSERT INTO DeviceModel(Id,Name,MarkId) VALUES(1,'FMB120',1),(2,'ECO4',2),(3,'LLS20160',3)
SELECT *FROM DeviceModel


SELECT dv.Id,dv.Name,dm.Name as'ModelName' FROM DeviceModel dv
INNER JOIN DeviceMark dm ON dv.MarkId=dm.Id

SELECT * FROM Customer WHERE Name LIKE 'FAR%'

CREATE TABLE Device(
Id INT PRIMARY KEY NOT NULL,
MarkId INT FOREIGN KEY REFERENCES DeviceMark(Id),
ModelId INT FOREIGN KEY REFERENCES DeviceModel(Id),
Serial VARCHAR(200) NOT NULL,
EntryDate DATE NOT NULL,
Warranty DATE NOT NULL,
)
SELECT *FROM Device
INSERT INTO Device(Id,MarkId,ModelId,Serial,EntryDate,Warranty) VALUES(1,1,1,'358480081582183','2021-12-07','2023-12-09')

SELECT dm.Name,dv.Name AS 'ModelName',d.Serial  FROM Device d
INNER JOIN DeviceMark dm ON d.MarkId=dm.Id
INNER JOIN DeviceModel dv ON d.ModelId=dv.Id

DROP TABLE DEVICE