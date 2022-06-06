IF OBJECT_ID(N'dbo.PartsSSDTDemo', N'U') IS NOT NULL
	AND OBJECT_ID(N'dbo.Temp_Parts_SSDT_Demo', N'U') IS NOT NULL
BEGIN
	INSERT INTO dbo.PartsSSDTDemo
		(PartNumber, PartName, PartCategoryId, Material)
	SELECT PartNumber, PartName, PartCategoryId, Material
		FROM dbo.Temp_Parts_SSDT_Demo;

	DROP TABLE IF EXISTS dbo.Temp_Parts_SSDT_Demo;
END;