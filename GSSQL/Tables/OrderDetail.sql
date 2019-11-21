CREATE TABLE [dbo].[OrderDetail]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [OrderId] UNIQUEIDENTIFIER NOT NULL, 
    [InventoryId] UNIQUEIDENTIFIER NOT NULL, 
    [Quantity] INT NULL, 
    [UnitPrice] DECIMAL NULL, 
    CONSTRAINT [FK_OrderDetail_ToOrder] FOREIGN KEY ([OrderId]) REFERENCES [Order]([Id]), 
    CONSTRAINT [FK_OrderDetail_ToInventory] FOREIGN KEY ([InventoryId]) REFERENCES [Inventory]([Id]),
	CONSTRAINT [UK_ToInventory] UNIQUE ([InventoryId])
)
