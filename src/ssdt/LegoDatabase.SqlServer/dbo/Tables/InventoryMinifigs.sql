CREATE TABLE [dbo].[InventoryMinifigs] (
    [InventoryId]   INT          NOT NULL,
    [MinifigNumber] VARCHAR (20) NOT NULL,
    [Quantity]      INT          NULL,
    CONSTRAINT [FK_InventoryMinifigs_Inventories] FOREIGN KEY ([InventoryId]) REFERENCES [dbo].[Inventories] ([InventoryId]),
    CONSTRAINT [FK_InventoryMinifigs_Minifigs] FOREIGN KEY ([MinifigNumber]) REFERENCES [dbo].[Minifigs] ([MinifigNumber])
);

