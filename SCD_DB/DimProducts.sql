CREATE TABLE [dbo].[DimProducts]
(
	ProductSID int not null identity(1,1) primary key,
	ProductCode INT NOT NULL,
	ProductName NVARCHAR(50) NOT NULL,
	RawMaterial NVARCHAR(50) NOT NULL,
	AmountOfRawMaterial DEC(18,3) NOT NULL,
	ProductSubtypeName NVARCHAR(50) NOT NULL,
	ProductTypeName NVARCHAR(50) NOT NULL,
	ProductTypeShortName NVARCHAR(12) NOT NULL, 
    [Type2Hash] VARCHAR(32) NOT NULL, 
    [CurrentFlag] BIT NOT NULL, 
    [DeletedFlag] BIT NOT NULL, 
    [FromDateTime] DATETIME NOT NULL, 
    [ToDateTime] DATETIME NOT NULL,
)