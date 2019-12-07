CREATE TABLE [dbo].[Track]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [TrackName] NVARCHAR(100) NOT NULL, 
    [AlbumId] UNIQUEIDENTIFIER NOT NULL, 
    [Composer] NVARCHAR(MAX) NULL, 
    [Performer] NVARCHAR(MAX) NULL, 
	[Featuring] NVARCHAR(MAX) NULL,
    [Duration] NVARCHAR(20) NULL, 
	[DateCreated] DATETIME NOT NULL DEFAULT GetUtcdate(), 
    [CreatedBy] UNIQUEIDENTIFIER NULL, 
    [DateModified] DATETIME NULL , 
    [ModifiedBy] UNIQUEIDENTIFIER NULL, 
    [IsDeleted] BIT NOT NULL DEFAULT 0, 
    CONSTRAINT [FK_Track_ToAlbum] FOREIGN KEY ([AlbumId]) REFERENCES [Album]([Id])
)
