Create table Echipamente(
Nr int identity(1,1) not null PRIMARY KEY,
Imei VARCHAR(200) NOT NULL,
Producator VARCHAR(200) NOT NULL,
Model VARCHAR(200) NOT NULL,
BeneficiarCurent VARCHAR(200) NOT NULL,
DataAchzitie DATE NOT NULL,
);
SELECT *FROM Echipamente

INSERT INTO Echipamente VALUES('357544377115304','Teltonika','FMB125','Dona Cargo','2022-01-01')
INSERT INTO Echipamente VALUES('357544377206905','Teltonika','FMB125','Fide Expres','2021-01-08')
INSERT INTO Echipamente VALUES('357544377102716','Teltonika','FMB125','Otis Lift','2022-01-15')
DROP TABLE Echipamente
