CREATE TABLE [dbo].[ArtistBasicInfo]
(
	[ArtistId] INT  NOT NULL , 
    [Born] NVARCHAR(100) NULL, 
    [Died] NVARCHAR(100) NULL, 
    [AlsoKnownAs] NVARCHAR(500) NULL, 
    CONSTRAINT [FK_ArtistBasicInfo_ToArtist] FOREIGN KEY ([ArtistId]) REFERENCES [Artist]([Id]), 
    CONSTRAINT [PK_ArtistBasicInfo] PRIMARY KEY ([ArtistId]) 
	
)
