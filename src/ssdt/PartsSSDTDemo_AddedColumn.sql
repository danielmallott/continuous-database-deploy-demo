CREATE TABLE [dbo].[PartsSSDTDemo] (
    [PartNumber]                VARCHAR (20)  NOT NULL,
    [PartName]                  VARCHAR (250) NOT NULL,
    [PartCategoryId]            INT           NOT NULL,
    [MaterialDescription]       VARCHAR (250) NOT NULL,
    [Material]                  AS [MaterialDescription],
    CONSTRAINT [PK_PartsSSDTDemo] PRIMARY KEY CLUSTERED ([PartNumber] ASC),
    CONSTRAINT [FK_PartsSSDTDemo_PartCategories] FOREIGN KEY ([PartCategoryId]) REFERENCES [dbo].[PartCategories] ([PartCategoryId])
);