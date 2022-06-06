EXEC sp_rename N'dbo.PartsFlywayDemo.Material', 'MaterialDescription', 'COLUMN';
GO

ALTER TABLE dbo.PartsFlywayDemo ADD Material AS MaterialDescription;
GO