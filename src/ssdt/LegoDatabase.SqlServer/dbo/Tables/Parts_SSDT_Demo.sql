CREATE TABLE [dbo].[Parts_SSDT_Demo] (
    [PartNumber]     VARCHAR (20)  NOT NULL,
    [PartName]       VARCHAR (250) NOT NULL,
    [PartCategoryId] INT           NOT NULL,
    [Material]       VARCHAR (250) NOT NULL,
    CONSTRAINT [PK_Parts_SSDT_Demo] PRIMARY KEY CLUSTERED ([PartNumber] ASC),
    CONSTRAINT [FK_Parts_SSDT_Demo_PartCategories] FOREIGN KEY ([PartCategoryId]) REFERENCES [dbo].[PartCategories] ([PartCategoryId])
);