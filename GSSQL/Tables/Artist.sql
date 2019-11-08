CREATE TABLE [dbo].[Artist]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [ArtistName] NVARCHAR(100) NULL, 
    [YearActive] NVARCHAR(50) NULL, 
    [Biography] NVARCHAR(MAX) NULL, 
	[ThumbnailTag] NVARCHAR(20) NULL, 
    [SmallThumbnail] NVARCHAR(50) NULL, 
    [LargeThumbnail] NVARCHAR(50) NULL
)
