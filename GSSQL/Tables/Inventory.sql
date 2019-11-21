CREATE TABLE [dbo].[Inventory]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [AlbumId] UNIQUEIDENTIFIER NOT NULL, 
    [QtyAvailable] INT NULL, 
    [PurchasePrice] DECIMAL NULL, 
    [SalePrice] DECIMAL NULL, 
    [DateCreated] DATETIME NOT NULL DEFAULT GetUtcdate(), 
    [CreatedBy] UNIQUEIDENTIFIER NULL, 
    [DateModified] DATETIME NULL , 
    [ModifiedBy] UNIQUEIDENTIFIER NULL, 
    CONSTRAINT [FK_Inventory_ToAlbum] FOREIGN KEY ([AlbumId]) REFERENCES [Album]([Id]),
	CONSTRAINT [UK_Inventory] UNIQUE ([AlbumId])
)
