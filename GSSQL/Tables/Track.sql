CREATE TABLE [dbo].[Track]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [TrackName] NVARCHAR(100) NULL, 
    [AlbumId] INT NULL, 
    [Composer] NVARCHAR(MAX) NULL, 
    [Performer] NVARCHAR(MAX) NULL, 
	[Featuring] NVARCHAR(MAX) NULL,
    [Duration] NVARCHAR(20) NULL, 
    CONSTRAINT [FK_Track_ToAlbum] FOREIGN KEY ([AlbumId]) REFERENCES [Album]([Id])
)
