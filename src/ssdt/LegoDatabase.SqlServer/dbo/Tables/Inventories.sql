CREATE TABLE [dbo].[Inventories] (
    [InventoryId]      INT          NOT NULL,
    [InventoryVersion] INT          NOT NULL,
    [SetNumber]        VARCHAR (20) NOT NULL,
    CONSTRAINT [PK_Inventories] PRIMARY KEY CLUSTERED ([InventoryId] ASC)
);

