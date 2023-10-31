-- Tabell f�r Animals
CREATE TABLE Animals (
	AnimalID INT PRIMARY KEY,
	AnimalName NVARCHAR(30),
	Species NVARCHAR(10),
	Age INT,
	Gender NVARCHAR(8),
	Taken BIT
);

--L�gger till information i Animals
INSERT INTO Animals(AnimalID, AnimalName, Species, Age, Gender, Taken)
VALUES
(1, 'Elvis', 'Dog', 1, 'Male',1),
(2, 'Hercules', 'Dog', 2, 'Male', 0),
(3, 'Sandor', 'Dog', 10, 'Male', 1),
(4, 'Ernest Hemingway', 'Dog', 4, 'Male', 0),
(5, 'Zazu', 'Bird', 15, 'Male', 1 ),
(6, 'Timon', 'Meerkat', 10, 'Male', 1);

--Tabell f�r Adopters
CREATE TABLE Adopters (
	AdopterID INT PRIMARY KEY,
	FirstName NVARCHAR(30),
	LastName NVARCHAR(30),
	PhoneNumber INT,
	EmailAdress NVARCHAR(40)
);

--L�gger till information i Adopters
INSERT INTO Adopters(AdopterID, FirstName, LastName, PhoneNumber, EmailAdress)
VALUES
(1, 'Niklas', 'Sj�din', 0701122233, 'NiklasSj�din@niklas.com'),
(2, 'Linda', 'Ohlsson', 0701122334, 'Linda.Ohlsson@linda.com'),
(3, 'Aldor', 'Besher', 0702255666, 'AldorBesher@aldor.com'),
(4, 'Christoffer', 'Fjellstr�m', 0709988877, 'Christoffer@Fjellstr�m.com');

--Tabell f�r Adoptions
CREATE TABLE Adoptions(
	AdoptionID INT PRIMARY KEY,
	AnimalID_FK INT,
	AdopterID_FK INT,
	AdoptionDate DATE,
	FOREIGN KEY(AnimalID_FK) REFERENCES Animals(AnimalID),
	FOREIGN KEY(AdopterID_FK) REFERENCES Adopters(AdopterID)
);

--L�gger till information i Adoptions
INSERT INTO Adoptions(AdoptionID, AnimalID_FK, AdopterID_FK, AdoptionDate)
VALUES
(1, 1, 1, '2023-10-27'),
(2, 3, 2, '2023-11-05'),
(3, 5, 3, '2023-12-24'),
(4, 6, 4, '2024-01-01');

-- Lista med alla djur
SELECT * FROM Animals

-- Lista med alla adopt�rer och deras kontaktinformation
SELECT * FROM Adopters

--Lista med alla adoptioner d�r adopt�rens namn, djurets namn och adoptionsdatum visas
SELECT FirstName, LastName, AnimalName, AdoptionDate
FROM Adoptions
JOIN Adopters ON Adoptions.AdopterID_FK = Adopters.AdopterID
JOIN Animals ON Adoptions.AnimalID_FK = Animals.AnimalID

--Hitta djur som adopterades av en specifik adopt�r
SELECT FirstName, LastName, AnimalName, AdoptionDate
FROM Adoptions
JOIN Adopters ON Adoptions.AdopterID_FK = Adopters.AdopterID
JOIN Animals ON Adoptions.AnimalID_FK = Animals.AnimalID
WHERE FirstName = 'Aldor'

--BONUS, Tillg�ngliga djur som inte �r adopterade
SELECT * FROM ANIMALS
WHERE Taken = 0;