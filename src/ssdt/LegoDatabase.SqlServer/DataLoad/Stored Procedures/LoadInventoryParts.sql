CREATE PROCEDURE DataLoad.LoadInventoryParts
    @data DataLoad.InventoryParts READONLY
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.InventoryParts
        (
            InventoryId,
            PartNumber,
            ColorId,
            Quantity,
            IsSpare
        )
    SELECT InventoryId
        ,PartNumber
        ,ColorId
        ,Quantity
        ,IsSpare
    FROM @data;
END;