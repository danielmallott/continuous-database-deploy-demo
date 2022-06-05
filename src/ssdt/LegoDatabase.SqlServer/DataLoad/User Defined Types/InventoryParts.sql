CREATE TYPE [DataLoad].[InventoryParts] AS TABLE (
    [InventoryId] INT          NULL,
    [PartNumber]  VARCHAR (20) NULL,
    [ColorId]     INT          NULL,
    [Quantity]    INT          NULL,
    [IsSpare]     BIT          NULL);

