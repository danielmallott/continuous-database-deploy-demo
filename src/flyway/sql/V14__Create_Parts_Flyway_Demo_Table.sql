CREATE TABLE dbo.Parts_Flyway_Demo (
    PartNumber VARCHAR(20) NOT NULL CONSTRAINT PK_Parts_Flyway_Demo PRIMARY KEY CLUSTERED,
    PartName VARCHAR(250) NOT NULL,
    PartCategoryId INT NOT NULL CONSTRAINT FK_Parts_Flyway_damo_PartCategories FOREIGN KEY REFERENCES dbo.PartCategories(PartCategoryId),
    Material VARCHAR(250) NOT NULL
);
GO

INSERT INTO dbo.Parts_Flyway_Demo
  (PartNumber, PartName, PartCategoryId, Material)
SELECT PartNumber, PartName, PartCategoryId, Material FROM dbo.Parts;
GO