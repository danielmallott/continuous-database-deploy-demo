CREATE PROCEDURE DataLoad.UpdateInventoryParts
    @data DataLoad.InventoryParts READONLY
AS
BEGIN  
    SET NOCOUNT ON;

    UPDATE eip
    SET eip.Quantity = nip.Quantity
    FROM dbo.InventoryParts eip
        INNER JOIN @data nip 
            ON eip.InventoryId = nip.InventoryId
                AND eip.PartNumber = nip.PartNumber
                AND eip.ColorId = nip.ColorId
                AND eip.IsSpare = nip.IsSpare;
END;