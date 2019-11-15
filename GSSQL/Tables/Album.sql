CREATE TABLE [dbo].[Album]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [AlbumName] NVARCHAR(200) NULL, 
    [ArtistId] INT NOT NULL, 
    [GenreId] INT NOT NULL, 
    [Rating] INT NULL,
	[Year] INT NULL,
	[Label] NVARCHAR(200) NULL,
    [ThumbnailTag] NVARCHAR(15) NULL, 
    [SmallThumbnail] NVARCHAR(50) NULL, 
    [MediumThumbnail] NVARCHAR(50) NULL, 
    [LargeThumbnail] NVARCHAR(50) NULL, 
    [AlbumUrl] NVARCHAR(500) NULL, 
    CONSTRAINT [FK_Album_ToGenre] FOREIGN KEY ([GenreId]) REFERENCES [Genre]([Id]), 
    CONSTRAINT [FK_Album_ToArtist] FOREIGN KEY ([ArtistId]) REFERENCES [Artist]([Id])
)
