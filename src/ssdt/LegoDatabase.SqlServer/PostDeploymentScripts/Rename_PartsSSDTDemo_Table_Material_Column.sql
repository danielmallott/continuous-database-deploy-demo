IF OBJECT_ID(N'dbo.PartsSSDTDemo', N'U') IS NOT NULL
	AND COL_LENGTH(N'dbo.PartsSSDTDemo', 'MaterialDescription') IS NOT NULL
	AND OBJECT_ID(N'dbo.Temp_Material', N'U') IS NOT NULL
UPDATE p
SET p.MaterialDescription = t.Material
FROM dbo.Temp_Material t 
	INNER JOIN dbo.PartsSSDTDemo p
		ON t.PartNumber = p.PartNumber;
GO

DROP TABLE IF EXISTS dbo.Temp_Material;
GO