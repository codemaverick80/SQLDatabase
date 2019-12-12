CREATE TABLE [dbo].[ArtistBasicInfo]
(
	[ArtistId] UNIQUEIDENTIFIER  NOT NULL , 
    [Born] NVARCHAR(100) NULL, 
    [Died] NVARCHAR(100) NULL, 
    [AlsoKnownAs] NVARCHAR(500) NULL, 
	[DateCreated] DATETIME NOT NULL DEFAULT GetUtcdate(), 
    [CreatedBy] UNIQUEIDENTIFIER NULL, 
    [DateModified] DATETIME NULL , 
    [ModifiedBy] UNIQUEIDENTIFIER NULL, 
    [IsDeleted] BIT NOT NULL DEFAULT 0,
    CONSTRAINT [FK_ArtistBasicInfo_ToArtist] FOREIGN KEY ([ArtistId]) REFERENCES [Artist]([Id]), 
    CONSTRAINT [PK_ArtistBasicInfo] PRIMARY KEY ([ArtistId]) 
	
)
