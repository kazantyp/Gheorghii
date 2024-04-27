create database Chinook;
use Chinook;
create table Customer (
CustomerID int NOT NULL, 
FirstName varchar(40) not null, 
LastName varchar(20) not null, 
Company varchar(80), 
Address varchar(70), 
City varchar(40), 
State varchar (40), 
Country varchar(40), 
PostalCode varchar(10), 
Phone varchar(24), 
Fax varchar(24), 
Email varchar(60) 
NOT NULL, SupportRepID int, constraint PK_Customer PRIMARY KEY(CustomerID));
show tables;
INSERT INTO Customer (CustomerID, FirstName, LastName, Company, Address, City, State,
 Country, PostalCode, Phone, Fax, Email, SupportRepID) VALUES 
 (1, 'Luís', 'Gonçalves', 'Embraer - Empresa Brasileira de Aeronáutica S.A.', 
 'Av. Brigadeiro Faria Lima, 2170', 'São José dos Campos', 'SP', 'Brazil', '12227-000',
 '+55 (12) 3923-5555', '+55 (12) 3923-5566', 'luisg@embraer.com.br', 3);
SELECT * FROM Customer;
INSERT INTO Customer (CustomerID, FirstName, LastName, Company, Address, City, State,
Country, PostalCode, Phone, Fax, Email, SupportRepID) VALUES 
(2, 'Eduardo', 'Martins', 'Woodstock Discos', 'Rua Dr. Falcão Filho, 155', 'São Paulo', 'SP', 
'Brazil', '01007-010', '+55 (11) 3033-5446', '+55 (11) 3033-4564', 'eduardo@woodstock.com.br', 4);
INSERT INTO Customer (CustomerID, FirstName, LastName, Company, Address, City, State, 
Country, PostalCode, Phone, Fax, Email, SupportRepID) VALUES 
(3, 'Alexandre', 'Rocha', 'Banco do Brasil S.A.', 'Av. Paulista, 2022', 'São Paulo', 'SP',
 'Brazil', '01310-200', '+55 (11) 3055-3278', '+55 (11) 3055-8131', 'alero@uol.com.br', 5);
 INSERT INTO Customer (CustomerID, FirstName, LastName, Company, Address, City, State, 
 Country, PostalCode, Phone, Fax, Email, SupportRepID) VALUES 
 (4, 'Roberto', 'Almeida', 'Riotur', 'Praça Pio X, 119', 'Rio de Janeiro', 'RJ', 'Brazil', 
 '20040-020', '+55 (21) 2271-7000', '+55 (21) 2271-7070', 'roberto.almeida@riotur.gov.br', 3);
 INSERT INTO Customer (CustomerID, FirstName, LastName, Company, Address, City, State,
 Country, PostalCode, Phone, Fax, Email, SupportRepID) VALUES 
 (5, 'Mark', 'Philips', 'Telus', '8210 111 ST NW', 'Edmonton',
 'AB', 'Canada', 'T6G 2C7', '+1 (780) 434-4554', '+1 (780) 434-5565', 'mphilips12@shaw.ca', 5);
 INSERT INTO Customer (CustomerID, FirstName, LastName, Company, Address, City, State, 
 Country, PostalCode, Phone, Fax, Email, SupportRepID) VALUES 
 (6, 'Jennifer', 'Peterson', 'Rogers Canada', '700 W Pender Street', 'Vancouver',
 'BC', 'Canada', 'V6C 1G8', '+1 (604) 688-2255', '+1 (604) 688-8756', 'jenniferp@rogers.ca', 3);
 select CustomerID, FirstName, LastName, City, State, Country from Customer;
 select CustomerID, FirstName, LastName, City, State, Country from Customer order by FirstName;
 select * from Customer where Country = "Canada";
  select * from Customer where Country = "Canada" order by FirstName;
  select FirstName, Country from Customer where Country = "Canada" order by FirstName;