CREATE TABLE [dbo].[PartCategories] (
    [PartCategoryId]   INT           NOT NULL,
    [PartCategoryName] VARCHAR (200) NOT NULL,
    CONSTRAINT [PK_PartCategories] PRIMARY KEY CLUSTERED ([PartCategoryId] ASC)
);

