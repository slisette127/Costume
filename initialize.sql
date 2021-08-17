DROP TABLE IF EXISTS Client, Colors, ColorId, Fabric, Notions, Projects;

CREATE TABLE Client (
  id INT NOT NULL AUTO_INCREMENT,
  ClientId INT NOT NULL, 
  First_Name VARCHAR(50),
  Last_Name VARCHAR(50),
  Address VARCHAR(50),
  Email VARCHAR(50),
  Phone VARCHAR(50),
  PRIMARY KEY (id)
);

CREATE TABLE Colors (
  id INT NOT NULL AUTO_INCREMENT,
  ColorId INT NOT NULL,
  Color VARCHAR(50),
  PRIMARY KEY (id)
);

CREATE TABLE Fabric (
  id INT NOT NULL AUTO_INCREMENT,
  FabricId INT NOT NULL,
  FabricName VARCHAR(50),
  FabricType VARCHAR(50),
  FabricCost VARCHAR(50),
  Quantity  VARCHAR(50),
  ProjectID VARCHAR(50),
  ColorId VARCHAR(50),
  PRIMARY KEY (id)
);

CREATE TABLE Notions (
  id INT NOT NULL AUTO_INCREMENT,
  NotionId INT NOT NULL, 
  NotionType VARCHAR(50),
  Quantity VARCHAR(50),
  Cost  VARCHAR(50),
  ColorId VARCHAR(50),
  ProjectID VARCHAR(50),
  PRIMARY KEY (id)
);

CREATE TABLE Projects (
  id INT NOT NULL AUTO_INCREMENT,
  ProjectID INT NOT NULL, 
  ClientID VARCHAR(50),
  ProjectName VARCHAR(50),
  Deposit VARCHAR(50),
  Project_Status VARCHAR(50),
  PRIMARY KEY (id)
);


INSERT INTO Client (ClientId, First_Name, Last_Name, Address, Email, Phone)
VALUES (100, 'Amber', 'Burleson', '123 3rd ST', 'amberb@gmail.com', '626-528-4758'),
(101, 'Truly', 'Alvarenga', '456 Main St', 'trulylayne@gmail.com', '615-452-7852');

INSERT INTO Colors (ColorId, Color)
VALUES (200, 'Blue'), (201, 'Purple');

INSERT INTO Fabric (FabricId, FabricName, FabricType, FabricCost, Quantity)
  VALUES (10,'Muslin', 'Cotton', '$2/yd', '10yds'),
  (20,'Chiffon', 'Poly-Blend', '$10/yd', '5yds');

INSERT INTO Notions (NotionId, NotionType, Quantity, Cost)
  VALUES (11, 'Zipper', '2yds', '$5/yds'),
  (12, 'Embroidery Floss, Black', '2 Skeins', '.75/ea');

INSERT INTO Projects (ProjectID, ProjectName, Deposit, Project_Status)
  VALUES (1001, 'Sally', '$150', 'IN PRODUCTION');