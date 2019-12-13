CREATE TABLE [dbo].[Artist]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [ArtistName] NVARCHAR(100) NULL, 
    [FirstName] NVARCHAR(100) NOT NULL,
    [LastName] NVARCHAR(100) NULL,
    [MiddleName] NVARCHAR(50) NULL,
    [YearActive] NVARCHAR(50) NULL, 
    [Biography] NVARCHAR(MAX) NULL, 
	[ThumbnailTag] NVARCHAR(50) NULL, 
    [SmallThumbnail] NVARCHAR(100) NULL, 
    [LargeThumbnail] NVARCHAR(100) NULL,
	[DateCreated] DATETIME NOT NULL DEFAULT GetUtcdate(), 
    [CreatedBy] UNIQUEIDENTIFIER NULL, 
    [DateModified] DATETIME NULL , 
    [ModifiedBy] UNIQUEIDENTIFIER NULL, 
    [IsDeleted] BIT NOT NULL DEFAULT 0
)
