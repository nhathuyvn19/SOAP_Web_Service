USE webservice

CREATE TABLE USER(
	Id VARCHAR(6) PRIMARY KEY,
    Name VARCHAR(50),
    Birthday DATE,
    Gender BOOLEAN ,
    Address VARCHAR(150),
    IdentityCard INT,
    CellPhone VARCHAR(12),
    Email VARCHAR(50),
    Nationality VARCHAR(50),
    Job VARCHAR(100)
)

INSERT INTO user(Id, Name, Birthday, Gender, Address, IdentityCard, CellPhone, Email, Nationality, Job) 
	VALUES("DXC001","Duy", "1990-12-15", 3, "Long An", 123456789, "0902090090", "duy@gmail.com", "VN", "Engineer")

INSERT INTO user(Id, Name, Birthday, Gender, Address, IdentityCard, CellPhone, Email, Nationality, Job) 
	VALUES("DXC002","Hai", "1992-02-17", 1, "Binh Duong", 987654321, "0902096590", "Hai@gmail.com", "VN", "Engineer")

INSERT INTO user(Id, Name, Birthday, Gender, Address, IdentityCard, CellPhone, Email, Nationality, Job) 
	VALUES("DXC003","Long", "1991-08-25", 1, "TPHCM", 432156789, "0902090789", "Long@gmail.com", "VN", "Architect")

INSERT INTO user(Id, Name, Birthday, Gender, Address, IdentityCard, CellPhone, Email, Nationality, Job) 
	VALUES("DXC004","Thanh", "1993-05-27", 1, "Dong Nai", 567891234, "0908456789", "Thanh@gmail.com", "VN", "Doctor")

INSERT INTO user(Id, Name, Birthday, Gender, Address, IdentityCard, CellPhone, Email, Nationality, Job) 
	VALUES("DNN005","Yen", "1990-01-19", 0, "TPHCM", 978562415, "0908123235", "duy@gmail.com", "VN", "Nurse")
    
SELECT * FROM webservice.user
drop table USER