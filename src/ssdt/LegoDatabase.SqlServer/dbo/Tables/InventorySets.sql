CREATE TABLE [dbo].[InventorySets] (
    [InventoryId] INT          NOT NULL,
    [SetNumber]   VARCHAR (20) NOT NULL,
    [Quantity]    INT          NULL,
    CONSTRAINT [FK_InventorySets_Inventories] FOREIGN KEY ([InventoryId]) REFERENCES [dbo].[Inventories] ([InventoryId]),
    CONSTRAINT [FK_InventorySets_Sets] FOREIGN KEY ([SetNumber]) REFERENCES [dbo].[Sets] ([SetNumber])
);

