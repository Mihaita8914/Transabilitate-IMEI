Create table Gestiune(
Nr int identity(1,1),
Beneficiar VARCHAR(200) NOT NULL,
DataIntrare DATE NOT NULL,
DataIesire DATE NOT NULL,
Document VARCHAR(200) NOT NULL,
Contract VARCHAR(200) NOT NULL,
Note VARCHAR(1000) NOT NULL,
IMEI int FOREIGN KEY REFERENCES Echipamente(Nr)
);
SELECT *FROM Gestiune

INSERT INTO Gestiune VALUES('Magazie Centrala','2020-10-01','2020-12-01','ISPA123','36luni','ok','1')
INSERT INTO Gestiune VALUES('Farmexim','2021-01-01','2021-02-01','ISPB128','Custodie24','Fara Anexa','2')
DROP TABLE Gestiune

SELECT * FROM Gestiune(e.Imei) g
INNER JOIN Echipamente e ON g.Imei=e.Nr

