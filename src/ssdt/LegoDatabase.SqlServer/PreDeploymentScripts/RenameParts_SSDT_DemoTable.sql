IF OBJECT_ID(N'dbo.Parts_SSDT_Demo', N'U') IS NOT NULL
	CREATE TABLE dbo.Temp_Parts_SSDT_Demo
	(
		[PartNumber]     VARCHAR (20)  NOT NULL,
		[PartName]       VARCHAR (250) NOT NULL,
		[PartCategoryId] INT           NOT NULL,
		[Material]       VARCHAR (250) NOT NULL,
	);
GO

IF OBJECT_ID(N'dbo.Parts_SSDT_Demo', N'U') IS NOT NULL
	INSERT INTO dbo.Temp_Parts_SSDT_Demo
		(PartNumber, PartName, PartCategoryId, Material)
	SELECT PartNumber, PartName, PartCategoryId, Material
		FROM dbo.Parts_SSDT_Demo;
GO

IF OBJECT_ID(N'dbo.Parts_SSDT_Demo', N'U') IS NOT NULL
	DELETE dbo.Parts_SSDT_Demo;
GO