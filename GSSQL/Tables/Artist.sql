CREATE TABLE [dbo].[Artist]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [ArtistName] NVARCHAR(100) NOT NULL, 
    [YearActive] NVARCHAR(50) NULL, 
    [Biography] NVARCHAR(MAX) NULL, 
	[ThumbnailTag] NVARCHAR(50) NULL, 
    [SmallThumbnail] NVARCHAR(100) NULL, 
    [LargeThumbnail] NVARCHAR(100) NULL,
	[DateCreated] DATETIME NOT NULL DEFAULT GetUtcdate(), 
    [CreatedBy] UNIQUEIDENTIFIER NULL, 
    [DateModified] DATETIME NULL , 
    [ModifiedBy] UNIQUEIDENTIFIER NULL, 
)
