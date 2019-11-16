CREATE TABLE [dbo].[Inventory]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [AlbumId] INT NOT NULL, 
    [QtyAvailable] INT NULL, 
    [PurchasePrice] DECIMAL NULL, 
    [SalePrice] DECIMAL NULL, 
    CONSTRAINT [FK_Inventory_ToAlbum] FOREIGN KEY ([AlbumId]) REFERENCES [Album]([Id]),
	CONSTRAINT [UK_Inventory] UNIQUE ([AlbumId])
)
