CREATE TABLE [dbo].[ArtistBasicInfo]
(
	[ArtistId] INT UNIQUE NOT NULL, 
    [Born] NVARCHAR(100) NULL, 
    [Died] NVARCHAR(100) NULL, 
    [AlsoKnownAs] NVARCHAR(500) NULL,
	CONSTRAINT FK_ArtistBasicInfo_Artist FOREIGN KEY([ArtistId]) REFERENCES [Artist]([Id])   
)
