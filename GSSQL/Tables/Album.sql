CREATE TABLE [dbo].[Album]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [AlbumName] NVARCHAR(200) NOT NULL, 
    [ArtistId] UNIQUEIDENTIFIER NOT NULL, 
    [GenreId] UNIQUEIDENTIFIER NOT NULL, 
    [Rating] INT NULL,
	[Year] INT NULL,
	[Label] NVARCHAR(200) NULL,
    [ThumbnailTag] NVARCHAR(15) NULL, 
    [SmallThumbnail] NVARCHAR(50) NULL, 
    [MediumThumbnail] NVARCHAR(50) NULL, 
    [LargeThumbnail] NVARCHAR(50) NULL, 
    [AlbumUrl] NVARCHAR(500) NULL, 
    [DateCreated] DATETIME NOT NULL DEFAULT GetUtcdate(), 
    [CreatedBy] UNIQUEIDENTIFIER NULL, 
    [DateModified] DATETIME NULL , 
    [ModifiedBy] UNIQUEIDENTIFIER NULL, 
    CONSTRAINT [FK_Album_ToGenre] FOREIGN KEY ([GenreId]) REFERENCES [Genre]([Id]), 
    CONSTRAINT [FK_Album_ToArtist] FOREIGN KEY ([ArtistId]) REFERENCES [Artist]([Id])
)
