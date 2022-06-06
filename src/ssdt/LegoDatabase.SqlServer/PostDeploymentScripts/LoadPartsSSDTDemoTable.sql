IF OBJECT_ID(N'dbo.Parts_SSDT_Demo', N'U') IS NOT NULL
	MERGE INTO dbo.Parts_SSDT_Demo AS target
		USING dbo.Parts AS source
		ON source.PartNumber = target.PartNumber
	WHEN MATCHED THEN
	UPDATE
		SET 
			PartName = source.PartName,
			PartCategoryId = source.PartCategoryId,
			Material = source.Material
	WHEN NOT MATCHED BY TARGET THEN
		INSERT (PartNumber, PartName, PartCategoryId, Material)
		VALUES (source.PartNumber, source.PartName, source.PartCategoryId, source.Material)
	WHEN NOT MATCHED BY SOURCE THEN
		DELETE;