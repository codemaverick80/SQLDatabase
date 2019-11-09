/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

/*
NOTE: THIS SCRIPT WAS CREATED TO MIGRATE DATA FROM EXISTING DATABASE INTO THIS DATABASE
*/


------# ARTIST TABLE
  --INSERT INTO [GeetSangeet_DEV].[dbo].[Artist] (Id,ArtistName,YearActive,Biography,ThumbnailTag,SmallThumbnail,LargeThumbnail)
  --SELECT ID,ARTIST,YEARS_ACTIVE,BIOGRAPHY,ARTISTID,SMALL_THUMBNAIL,BIG_THUMBNAIL FROM [Music_DB_DEV].[dbo].[TBL_ARTISTS]

-----# ARTIST_BASIC_INFO TABLE
  --INSERT INTO [GeetSangeet_DEV].[dbo].[ArtistBasicInfo](ArtistId,Born,Died,AlsoKnownAs)
  --SELECT ARTIST_ID,BORN,DIED,AKA FROM [Music_DB_DEV].[dbo].[TBL_ARTIST_BASIC_INFO]

-----# ALBUM TABLE
--  INSERT INTO [GeetSangeet_DEV].[dbo].[Album] 
--(
--	   [Id]
--      ,[AlbumName]
--      ,[ArtistId]
--      ,[GenreId]
--      ,[Rating]
--	  ,[Year]
--	  ,[Label]
--      ,[ThumbnailTag]
--      ,[SmallThumbnail]
--      ,[MediumThumbnail]
--      ,[LargeThumbnail]
--      ,[AlbumUrl]
--) 
--SELECT AL.[ID]
--	  ,AL.[ALBUM]
--	  ,AL.[ARTIST_ID]
--	  ,AT.[GENRE_ID] 
--	  --,AT.ARTIST
--      ,AL.[RATING]
--      ,AL.[YEAR]      
--      ,AL.[LABEL]   
--      ,AL.[ALBUMID]
--      ,AL.[THUMBNAIL_S]
--      ,AL.[THUMBNAIL_M]
--      ,AL.[THUMBNAIL_L]
--      ,AL.[ALBUM_URL]
--  FROM [Music_DB_DEV].[dbo].[TBL_ALBUMS] AL
--  inner join [Music_DB_DEV].[dbo].[TBL_ARTISTS] AT on al.ARTIST_ID=at.ID


-----# TRACK TABLE

--INSERT INTO [GeetSangeet_DEV].[dbo].[Track]
--(
--	   [Id]
--      ,[TrackName]
--      ,[AlbumId]
--      ,[Composer]
--      ,[Performer]
--      ,[Featuring]
--      ,[Duration]
--)
--SELECT [ID]
--	  ,[TITLE]     
--      ,[ALBUM_ID]      
--      ,[COMPOSER]
--      ,[PERFORMER]
--      ,[FEATURING]
--      ,[DURATION]
--  FROM [Music_DB_DEV].[dbo].[TBL_TRACKS]
