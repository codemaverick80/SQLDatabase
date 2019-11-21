﻿/*
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


IF NOT EXISTS (SELECT * FROM dbo.Genre WHERE id='599CC4BA-1F9C-4221-802A-49FE164FA6CF' AND GenreName='Blue')
BEGIN
	INSERT [dbo].[Genre] ([ID], [GenreName], [Description]) 
	VALUES ('599CC4BA-1F9C-4221-802A-49FE164FA6CF', N'Blue', N'Blues is about tradition and personal expression. At its core, the blues has remained the same since its inception. Most blues feature simple, usually three-chord, progressions and have simple structures that are open to endless improvisations, both lyrical and musical. The blues grew out of African spirituals and worksongs. In the late 1800s, southern African-Americans passed the songs down orally, and they collided with American folk and country from the Appalachians. New hybrids appeared by each region, but all of the recorded blues from the early 1900s are distinguished by simple, rural acoustic guitars and pianos. After World War II, the blues began to fragment, with some musicians holding on to acoustic traditions and others taking it to jazzier territory. However, most bluesmen followed Muddy Waters lead and played the blues on electric instruments. From that point on, the blues continued to develop in new directions -- particularly on electric instruments -- or it has been preserved as an acoustic tradition.')
END

GO

IF NOT EXISTS (SELECT * FROM dbo.Genre WHERE id='462E40F0-1E18-4415-BB0F-1475885AAA28' AND GenreName='Classical')
BEGIN
	INSERT [dbo].[Genre] ([ID], [GenreName], [Description]) 
	VALUES ('462E40F0-1E18-4415-BB0F-1475885AAA28', N'Classical', N'Classical music is hard to define in specific terms, but it is generally understood to be music rooted in Western European traditions performed by trained musicians in formal settings like concert halls, opera houses, and churches. Its key emphasis is the faithful interpretation of composers written scores. Classical musics roots lie in the chant melodies of Medieval religious rites. Its contemporary incarnation encompasses everything from opera and the symphony orchestra to chamber ensembles, solo works, choral music, songs, film music, and the avant-garde. Works from the intervening centuries make up the bulk of the recorded repertory, and they mirror the artistic and architectural trends of the Renaissance, Baroque, Classical, Romantic, and Modern eras in their sound worlds and conception. The dichotomy between classical and popular music is a fairly recent cultural development. In fact, much of what is considered classical music today grew out of, was influenced by, or was popular music of its time.')
END 

GO                                                                
IF NOT EXISTS (SELECT * FROM dbo.Genre WHERE id='F7803B64-407A-4597-B2D5-C59D2395FDF2' AND GenreName='Country')
BEGIN																	
	INSERT [dbo].[Genre] ([ID], [GenreName], [Description]) 
	VALUES ('F7803B64-407A-4597-B2D5-C59D2395FDF2', N'Country', N'Country music is about tradition, yet its simple form lends itself to endless variations on similar themes. Like blues -- the two genres often shared themes, melodies and songs -- country is a simple music at its core. Most of its songs are built around three chords and a plain melody, but these forms are so basic, they allow for many different styles, from the gritty sounds of honky tonk to the jazzy improvisations of Western Swing. Country music grew out of American Southern folk music, both Appalachian and blues, and old-time country was simple and folky, with just guitars and fiddles. As the genre progressed, old time music evolved into the rhythmic guitar-and-fiddle driven traditional country that became the foundation of modern country music, from honky tonk and Western Swing to the pop-oriented Countrypolitan and rock-inflected Bakersfield Sound.')
END																	

GO
IF NOT EXISTS (SELECT * FROM dbo.Genre WHERE id='8026589B-CEB8-4978-AFD8-9080A802DC8C' AND GenreName='Electronic')
BEGIN																	
	INSERT [dbo].[Genre] ([ID], [GenreName], [Description]) 
	VALUES ('8026589B-CEB8-4978-AFD8-9080A802DC8C', N'Electronic', N'Reaching back to grab the grooves of 70s disco/funk and the gadgets of electronic composition, Electronica soon became a whole new entity in and of itself, spinning off new sounds and subgenres with no end in sight two decades down the pike. Its beginnings came in the post-disco environment of Chicago/New York and Detroit, the cities who spawned house and techno (respectively) during the 1980s. Later that decade, club-goers in Britain latched onto the fusion of mechanical and sensual, and returned the favor to hungry Americans with new styles like jungle/drum and bass and trip-hop. Though most all early electronica was danceable, by the beginning of the 90s, producers were also making music for the headphones and chill-out areas as well, resulting in dozens of stylistic fusions like ambient-house, experimental techno, tech-house, electro-techno, etc. Typical for the many styles gathered under the umbrella was a focus on danceable grooves, very loose song structure (if any), and, in many producers, a relentless desire to find a new sound no matter how tepid the results.')
END	

GO

IF NOT EXISTS (SELECT * FROM dbo.Genre WHERE id='A9A5A61A-31AF-4819-AF8E-052DD7ECEE02' AND GenreName='Folk')
BEGIN																
INSERT [dbo].[Genre] ([ID], [GenreName], [Description]) VALUES ('A9A5A61A-31AF-4819-AF8E-052DD7ECEE02', N'Folk', N'Each country has their own folk music, but the genre usually refers to American and British music that has been passed through the generations by oral tradition. Its simple, acoustic-based music that spins everyday events and common people into mythic status. Many traditional folksongs have no known author, they have simply evolved over the years. Most of the earliest recorded folk music was of this nature, but with Woody Guthrie, topical folk began making its way to record. Still, many artists, including the Weavers and Pete Seeger, chose to mix traditional songs with newer material, either written by the artists themselves or other contemporary musicians. Initially, Bob Dylan functioned in that style, but by his second album, =The Freewheelin Bob Dylan,= he began relying entirely on original material, thereby ushering the modern era of folk, where most performers sang their own (usually personally and introspective) material, and only occasionally throwing in covers.')
END

GO

IF NOT EXISTS (SELECT * FROM dbo.Genre WHERE id='27BEB1C2-CC39-4D05-9D47-E0E4FB034654' AND GenreName='International')
BEGIN																	
INSERT [dbo].[Genre] ([ID], [GenreName], [Description]) VALUES ('27BEB1C2-CC39-4D05-9D47-E0E4FB034654', N'International', N'In the Western world, "World music" refers either to music that does not fall into the North American and British pop or folk traditions or to hybrids of various indigenous musics. Certain styles -- such as Jamaican reggae or Latin pop -- grew large enough to be classified as their own genre, but everything else, from traditional Chinese music to African folk, is classified as world music. Worldbeat is something different than world music, since its usually the result of Western hybrids and fusions, yet it still falls under the world music umbrella because it borrows styles, sounds and instrumentation from various indigenous musics.')
END

GO

IF NOT EXISTS (SELECT * FROM dbo.Genre WHERE id='024B6637-D1F1-4DC8-90C9-6FFD6F3E4B0C' AND GenreName='Jazz')
BEGIN
																	
INSERT [dbo].[Genre] ([ID], [GenreName], [Description]) VALUES ('024B6637-D1F1-4DC8-90C9-6FFD6F3E4B0C', N'Jazz', N'Jazz has been called Americas classical music, and for good reason. Along with the blues, its forefather, it is one of the first truly indigenous musics to develop in America, yet its unpredictable, risky ventures into improvisation gave it critical cache with scholars that the blues lacked. At the outset, jazz was dance music, performed by swinging big bands. Soon, the dance elements faded into the background and improvisation became the key element of the music. As the genre evolved, the music split into a number of different styles, from the speedy, hard-hitting rhythms of be-bop and the laid-back, mellow harmonies of cool jazz to the jittery, atonal forays of free jazz and the earthy grooves of soul jazz. What tied it all together was a foundation in the blues, a reliance on group interplay and unpredictable improvisation. Throughout the years, and in all the different styles, those are the qualities that defined jazz.')

END

GO

IF NOT EXISTS (SELECT * FROM dbo.Genre WHERE id='87DC76D4-819B-459A-9F60-A81763018CB9' AND GenreName='Latin')
BEGIN																	
INSERT [dbo].[Genre] ([ID], [GenreName], [Description]) VALUES ('87DC76D4-819B-459A-9F60-A81763018CB9', N'Latin', N'Latin music is a catch-all term for a number of diverse styles from different regions and countries in Latin America. Often, the term refers to Latin pop -- either dance-based or pop oriented-music sung in Spanish or Tejano. Tejano has a number of different styles, from romantic ballads to the narrative nortenos, and they are usually performed by large groups with acoustic instruments and horns. In the 80s and 90s, Tejano has also adopted smooth production techniques from American pop-rock and soft rock. Latin America is also known for such dance music as salsas and sambas, which have layers of percussion, blaring horns and an infectious sense of style. A related style to salsa is the bossa nova, a cool, laid-back style that crossed dance music with jazz. With the exception of tejano and mariachi, which is folk and pop based, most Latin music is defined by its strong rhythms.')
END

GO

IF NOT EXISTS (SELECT * FROM dbo.Genre WHERE id='E7F69E5B-5D9B-4FD2-B8D9-ECA0BB430D5D' AND GenreName='New Age')
BEGIN																	
INSERT [dbo].[Genre] ([ID], [GenreName], [Description]) VALUES ('E7F69E5B-5D9B-4FD2-B8D9-ECA0BB430D5D', N'New Age', N'Born from an aesthetic that aims to induce a sense of inner calm, new age music emerged from the meditational and holistic fields. Generally, these are harmonious and nonthreatening albums that are allied with new age philosophies encouraging spiritual transcendence and physical healing. Some of these albums are artistically satisfying as well as therapeutic. Lesser musicians, however, often make ridiculous claims in the liner notes as to their ability to catapult listeners into advanced spiritual states through specially designed sonic vibrations and "immaculately conceived" musical ideas.')
END

GO

IF NOT EXISTS (SELECT * FROM dbo.Genre WHERE id='D07C0CB7-3B35-4B9F-B0E5-B0F890F77BCE' AND GenreName='Pop and Rock')
BEGIN																
INSERT [dbo].[Genre] ([ID], [GenreName], [Description]) VALUES ('D07C0CB7-3B35-4B9F-B0E5-B0F890F77BCE', N'Pop and Rock', N'Rock & Roll is often used as a generic term, but its sound is rarely predictable. From the outset, when the early rockers merged country and blues, rock has been defined by its energy, rebellion and catchy hooks, but as the genre aged, it began to shed those very characteristics, placing equal emphasis on craftmanship and pushing the boundaries of the music. As a result, everything from Chuck Berrys pounding, three-chord rockers and the sweet harmonies of the Beatles to the jarring, atonal white noise of Sonic Youth has been categorized as "rock." Thats accurate -- rock & roll had a specific sound and image for only a handful of years. For most of its life, rock has been fragmented, spinning off new styles and variations every few years, from Brill Building Pop and heavy metal to dance-pop and grunge. And thats only natural for a genre that began its life as a fusion of styles.')
END

GO

IF NOT EXISTS (SELECT * FROM dbo.Genre WHERE id='5EEFA0BF-D7CD-4A75-9004-1CA26777B74F' AND GenreName='R&B')
BEGIN																
INSERT [dbo].[Genre] ([ID], [GenreName], [Description]) VALUES ('5EEFA0BF-D7CD-4A75-9004-1CA26777B74F', N'R&B', N'Evolving out of jump blues in the late 40s, R&B laid the groundwork for rock & roll. R&B kept the tempo and the drive of jump blues, but its instrumentation was sparer and the emphasis was on the song, not improvisation. It was blues chord changes played with an insistent backbeat. During the 50s, R&B was dominated by vocalists like Ray Charles and Ruth Brown, as well as vocal groups like the Drifters and the Coasters. Eventually, R&B metamorphosed into soul, which was funkier and looser than the pile-driving rhythms of R&B. Soul came to describe a number of R&B-based music styles. From the bouncy, catchy acts at Motown to the horn-driven, gritty soul of Stax/Volt, there was an immense amount of diversity within soul. During the first part of the 60s, soul music remained close to its R&B roots. However, musicians pushed the music in different directions; usually, different regions of America produced different kinds of soul. In urban centers like New York, Philadelphia, and Chicago, the music concentrated on vocal interplay and smooth productions. In Detroit, Motown concentrated on creating a pop-oriented sound that was informed equally by gospel, R&B, and rock & roll. In the South, the music became harder and tougher, relying on syncopated rhythms, raw vocals, and blaring horns. All of these styles formed soul, which ruled the black music charts throughout the 60s and also frequently crossed over into the pop charts. During the 60s and 70s, soul began to splinter apart -- artists like James Brown and Sly Stone developed funk; Kenny Gamble and Leon Huff initiated Philly soul with the O''Jays and Harold Melvin & the Blue Notes; and later in the decade, danceable R&B became a mass phenomenon with the brief disco fad. During the ''80s and ''90s, the polished, less earthy sound of urban and quiet storm ruled the airwaves, but even then, R&B began adding stylistic components of hip-hop until -- by the end of the millennium -- there were hundreds of artists who featured both rapping and singing on their records.')
END

GO

IF NOT EXISTS (SELECT * FROM dbo.Genre WHERE id='CA76C3D4-5508-4BB9-A631-917F8740E824' AND GenreName='Rap')
BEGIN																
INSERT [dbo].[Genre] ([ID], [GenreName], [Description]) VALUES ('CA76C3D4-5508-4BB9-A631-917F8740E824', N'Rap', N'Raps germination is sometimes attributed to the righteous street poetry of the Last Poets and the Watts Prophets, but it did not begin to take full shape -- and earn its tag -- until after the Sugarhill Gang released "Rapper''s Delight" in 1979. Since then, rap spread from its New York epicenter throughout the remainder of the U.S. (with each region taking on its own specific flavor) and then to countless countries. Rap''s core components are beats and rhymes, but that simplicity belies the wide range of sounds that have sprung from them. Instrumentalists, a sampled breakbeat, or a drum machine can form the backbone of a track, while an arrangement can be spaciously spare or chaotically dense, and a chorus can range from atonal shouting to a sweet melody. Detractors were still calling rap a fad in 1985, when LL Cool J released his first single. They were doing the same thing when, roughly 20 years later, the same MC released his tenth album, and they''ll probably continue to do so as long as the genre exists. Should rap ever die, which isn''t likely, it would be far too late to prevent its effect on most other music forms, from R&B to rock to jazz.')
END

GO

IF NOT EXISTS (SELECT * FROM dbo.Genre WHERE id='6886121B-EF80-4E94-944D-B8A712DC822E' AND GenreName='Reggae')
BEGIN																	
INSERT [dbo].[Genre] ([ID], [GenreName], [Description]) VALUES ('6886121B-EF80-4E94-944D-B8A712DC822E', N'Reggae', N'Reggae is a music unique to Jamiaca, but it ironically has its roots in New Orleans R&B. Reggae''s direct forefather is ska, an uptempo, rhythmic variation based on the New Orleans R&B Jamaican musicians heard broadcast from the US on their transistor radios. Relying on skittering guitar and syncopated rhythms, ska was their interpretation of R&B and it was quite popular in the early ''60s. However, during one very hot summer, it was too hot to either play or dance to ska, so the beat was slowed down and reggae was born. Since then, reggae has proven to be as versatile as the blues, as it lends itself to a number of interpretations, from the melodic rock steady of Alton Ellis and the rock and folk-influenced songwriting of Bob Marley to the trippy, near-psychedelic soundscapes of dub artists like Lee "Scratch" Perry. It has crossed into the mainstream through the bright, bouncy "reggae sunsplash" festivals and pop-oriented bands like UB40, but more adventurous reggae artists, such as Marley and Perry, have influenced countless reggae, folk, rock and dance artists. Their contributions resonate throughout popular music.')
END

GO												