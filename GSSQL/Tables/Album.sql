CREATE TABLE [dbo].[Album]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [AlbumName] NVARCHAR(200) NOT NULL, 
    [ArtistId] UNIQUEIDENTIFIER NOT NULL, 
    [GenreId] UNIQUEIDENTIFIER NOT NULL, 
    [Rating] INT NULL,
	[Year] INT NULL,
	[Label] NVARCHAR(200) NULL,
    [ThumbnailTag] NVARCHAR(50) NULL, 
    [SmallThumbnail] NVARCHAR(100) NULL, 
    [MediumThumbnail] NVARCHAR(100) NULL, 
    [LargeThumbnail] NVARCHAR(100) NULL, 
    [AlbumUrl] NVARCHAR(500) NULL, 
    [DateCreated] DATETIME NOT NULL DEFAULT GetUtcdate(), 
    [CreatedBy] UNIQUEIDENTIFIER NULL, 
    [DateModified] DATETIME NULL , 
    [ModifiedBy] UNIQUEIDENTIFIER NULL, 
    [IsDeleted] BIT NOT NULL DEFAULT 0, 
    CONSTRAINT [FK_Album_ToGenre] FOREIGN KEY ([GenreId]) REFERENCES [Genre]([Id]), 
    CONSTRAINT [FK_Album_ToArtist] FOREIGN KEY ([ArtistId]) REFERENCES [Artist]([Id])
)
