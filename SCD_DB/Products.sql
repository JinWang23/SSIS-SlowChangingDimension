CREATE TABLE [dbo].[Products]
(
	ProductCode INT NOT NULL,
	ProductName NVARCHAR(50) NOT NULL,
	RawMaterial NVARCHAR(50) NOT NULL,
	AmountOfRawMaterial DEC(18,3) NOT NULL,
	ProductSubtypeName NVARCHAR(50) NOT NULL,
	ProductTypeName NVARCHAR(50) NOT NULL,
	ProductTypeShortName NVARCHAR(12) NOT NULL, 
    CONSTRAINT [PK_Products] PRIMARY KEY ([ProductCode]),
)