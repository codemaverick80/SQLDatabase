CREATE TABLE [dbo].[OrderDetail]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [OrderId] INT NOT NULL, 
    [InventoryId] UNIQUEIDENTIFIER NOT NULL, 
    [Quantity] INT NULL, 
    [UnitPrice] DECIMAL NULL, 
    CONSTRAINT [FK_OrderDetail_ToOrder] FOREIGN KEY ([OrderId]) REFERENCES [Order]([Id]), 
    CONSTRAINT [FK_OrderDetail_ToInventory] FOREIGN KEY ([InventoryId]) REFERENCES [Inventory]([Id])
)
