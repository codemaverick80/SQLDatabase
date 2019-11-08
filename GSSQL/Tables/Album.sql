CREATE TABLE [dbo].[Album]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [AlbumName] NVARCHAR(100) NULL, 
    [ArtistId] INT NULL, 
    [GenreId] INT NULL, 
    [Rating] INT NULL, 
    [ThumbnailTag] NVARCHAR(15) NULL, 
    [SmallThumbnail] NVARCHAR(50) NULL, 
    [MediumThumbnail] NVARCHAR(50) NULL, 
    [LargeThumbnail] NVARCHAR(50) NULL, 
    [AlbumUrl] NVARCHAR(500) NULL, 
    CONSTRAINT [FK_Album_ToGenre] FOREIGN KEY ([GenreId]) REFERENCES [Genre]([Id]), 
    CONSTRAINT [FK_Album_ToArtist] FOREIGN KEY ([ArtistId]) REFERENCES [Artist]([Id])
)
