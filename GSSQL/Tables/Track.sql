CREATE TABLE [dbo].[Track]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [TrackName] NVARCHAR(400) NOT NULL, 
    [AlbumId] INT NOT NULL, 
    [Composer] NVARCHAR(MAX) NULL, 
    [Performer] NVARCHAR(MAX) NULL, 
	[Featuring] NVARCHAR(MAX) NULL,
    [Duration] NVARCHAR(20) NULL, 
    CONSTRAINT [FK_Track_ToAlbum] FOREIGN KEY ([AlbumId]) REFERENCES [Album]([Id])
)
