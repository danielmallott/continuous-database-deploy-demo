IF OBJECT_ID(N'dbo.PartsSSDTDemo', N'U') IS NOT NULL
	AND COL_LENGTH(N'dbo.PartsSSDTDemo', 'MaterialDescription') IS NULL
CREATE TABLE dbo.Temp_Material
(
	PartNumber VARCHAR(20) NOT NULL,
	Material VARCHAR(250) NOT NULL
);
GO

IF OBJECT_ID(N'dbo.PartsSSDTDemo', N'U') IS NOT NULL
	AND COL_LENGTH(N'dbo.PartsSSDTDemo', 'MaterialDescription') IS NULL
INSERT INTO dbo.Temp_Material
	(PartNumber, Material)
SELECT PartNumber, Material
	FROM dbo.PartsSSDTDemo;
GO