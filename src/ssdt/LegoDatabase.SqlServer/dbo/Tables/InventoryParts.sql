CREATE TABLE [dbo].[InventoryParts] (
    [InventoryId] INT          NOT NULL,
    [PartNumber]  VARCHAR (20) NOT NULL,
    [ColorId]     INT          NOT NULL,
    [Quantity]    INT          NULL,
    [IsSpare]     BIT          NULL,
    CONSTRAINT [FK_InventoryParts_Colors] FOREIGN KEY ([ColorId]) REFERENCES [dbo].[Colors] ([ColorId]),
    CONSTRAINT [FK_InventoryParts_Inventory] FOREIGN KEY ([InventoryId]) REFERENCES [dbo].[Inventories] ([InventoryId]),
    CONSTRAINT [FK_InventoryParts_Parts] FOREIGN KEY ([PartNumber]) REFERENCES [dbo].[Parts] ([PartNumber])
);

