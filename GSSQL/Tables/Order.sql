CREATE TABLE [dbo].[Order]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [OrderDate] DATETIME NULL, 
    [UserName] NVARCHAR(100) NULL, 
    [FirstName] NVARCHAR(50) NULL, 
    [LastName]  NVARCHAR(50) NULL, 
	[AddressLine1]  NVARCHAR(100) NULL,
	[AddressLine2]  NVARCHAR(50) NULL,
	[City]  NVARCHAR(50) NULL,
	[StateProvince]  NVARCHAR(50) NULL,
	[PostalCode] NVARCHAR(12) NULL,
	[Country] NVARCHAR(100) NULL,
	[Email] NVARCHAR(100) NULL,
	[Phone] NVARCHAR(20) NULL
)
