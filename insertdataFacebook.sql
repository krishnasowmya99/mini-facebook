USE [facebookDb]
GO

INSERT INTO [dbo].[Users]
           ([name]
           ,[email]
           ,[password]
           ,[date_of_birth]
           ,[country])
     VALUES
           ('Monica Geller', 'monicabing@email.com', 'password456', '1995-11-12', 'Canada'),
('Ross Geller', 'rgeller@email.com', 'password789', '1988-03-04', 'USA'),
('Phoebe Buffay', 'pbuffay@email.com', 'passwordabc', '1999-09-01', 'Australia'),
('Joey Tribbiani', 'jtribbiani@email.com', 'passworddef', '1985-07-15', 'Egypt'),
('Chandler Bing', 'cbing@email.com', 'passwordghi', '1992-01-30', 'USA'),
('Lin Yi', 'linyi@email.com', 'passwordjkl', '1983-12-05', 'China'),
('Gunther ', 'guntherlovesrachel@email.com', 'passwordmno', '1987-06-08', 'Russia'),
('Mohammed Ahmed', 'mohammedahmed@email.com', 'passwordpqr', '1996-02-14', 'Iraq'),
('Anna Kim', 'annakim@email.com', 'passwordstu', '1990-10-23', 'South Korea');
GO


USE [facebookDb]
GO

INSERT INTO [dbo].[Pages]
           ([name]
           ,[description]
           ,[create_date]
           ,[category])
     VALUES
		   ('Foodies','We LOVE food and sharing food is not encouraged','1999-04-22','Food'),
		   ('The Travel Group','Hello there! Share and talk about the most beautiful places you have seen here','2001-09-23','Travel'),
		   ('Fitness Goals','We talk about fitness and health here','2007-09-22','Fitness'),
		   ('Tech Reviews','Are you interested in technology like me? Welcome!','2010-06-11','Technology'),
		   ('Pawsome','Do not talk to me if you do not like dogs','1997-05-12','Pets')
GO



USE [facebookDb]
GO

INSERT INTO [dbo].[Page_Admins]
           ([page_id]
           ,[user_id]
           ,[page_name]
           ,[page_description]
           ,[create_date])
     VALUES
           ('5','5','Foodies','We LOVE food','1999-04-22'),
		   ('6','6','The Travel Group','beautiful places','2001-09-23'),
		   ('7','9','Fitness Goals','fitness and health','2007-09-22'),
		   ('8','7','Tech Reviews','interested in technology?','2010-06-11'),
		   ('9','1','Pawsome','dogs','1997-05-12')
       
GO


USE [facebookDb]
GO

INSERT INTO [dbo].[Groups]
           ([name]
           ,[description]
           ,[create_date])
     VALUES
           ('Bffs','Lovers are going to come and go but this is forever','2005-07-02'),
		   ('Nerds','who are up for a group study?','1997-01-22'),
		   ('Gym Bois','Let s go hit the gym','2007-12-06'),
		   ('Drama lovers','what are we watching tonight?','2010-11-23'),
		   ('Travel Freaks','where are we going for the weekend?','2011-02-21')
  
GO



INSERT INTO [dbo].[Group_Admins]
           ([group_id]
           ,[user_id]
           ,[group_name]
           ,[group_description]
           ,[date_created])
     VALUES
           ('1','2','Bffs','Lovers are going to come and go but this is forever','2005-07-02'),
		   ('2','3','Nerds','who are up for a group study?','1997-01-22'),
		   ('3','8','Gym Bois','Let s go hit the gym','2007-12-06'),
		   ('4','10','Drama lovers','what are we watching tonight?','2010-11-23'),
		   ('5','4','Travel Freaks','where are we going for the weekend?','2011-02-21')
		   

GO



USE [facebookDb]
GO

INSERT INTO [dbo].[Posts]
           ([user_id]
           ,[page_id]
           ,[group_id]
           ,[content]
           ,[post_date]
           ,[privacy_level])
     VALUES
           ('1','5','1','But first, coffee','2021-08-11','public'),
		   ('2','6','2','Laughing on the inside','2020-01-20','private'),
		   ('3','7','3','Like a boss','2016-04-20','public'),
		   ('4','8','4','Show your sparkle','2018-11-30','public'),
		   ('5','9','5','Weekend vibes','2015-08-19','private'),
		   ('6','5','1','Work hard play hard','2012-07-26','public'),
		   ('7','6','2','April showers bring May flowers','2007-06-15','public'),
		   ('8','7','3','Spring forward','2018-06-11','private'),
		   ('9','8','4','Dog days of summer','2019-10-22','public'),
		   ('10','9','5','Gonna be a bright, bright sunshiny day','2020-06-12','public')

GO



USE [facebookDb]
GO

INSERT INTO [dbo].[Notifications]
           ([user_id]
           ,[notif_content]
           ,[create_date])
     VALUES
           ('1','New message received from Joey','2010-05-11'),
		   ('2','New friend request','2012-07-21'),
		   ('3','New messages from a group','2022-05-18'),
		   ('4','Your account password has been reset','2019-06-11'),
		   ('5','Please change your password for security purposes','2018-10-23'),
		   ('6','New login from your account','2021-08-21'),
		   ('7','Your now friends with Lin Yi','2022-05-30'),
		   ('8','10 users liked your post','2017-12-13'),
		   ('9','Your photo has been succesfully uploaded!','2020-02-14'),
		   ('10','Group status has ben updated!','1998-06-11')
		   

GO


USE [facebookDb]
GO

INSERT INTO [dbo].[Messages]
           ([sender_id]
           ,[receiver_id]
           ,[content]
           ,[send_date])
     VALUES
           ('6','1','Hello how are you doing?','2018-03-12'),
		   ('1','6','Heyy I am good. How are you?','2018-03-13'),
		   ('7','2','I am getting married!','2020-09-21'),
		   ('2','7','I am so happy for you!','2020-09-21'),
		   ('8','3','I am bored. Please call me !','2019-10-11'),
		   ('3','8','Pick up the phone!','2019-10-11'),
		   ('9','4','Do you wnat me to get you anything?','2018-12-01'),
		   ('4','9','Yes! Can you get me some cereal?','2018-12-01'),
		   ('10','5','Hi! Can we meet tomorrow for breakfast?','2021-10-11'),
		   ('5','10','Hello! Sure see you at the coffeeshop @ 10','2021-10-11')

GO



USE [facebookDb]
GO

INSERT INTO [dbo].[Comments]
           ([user_id]
           ,[post_id]
           ,[content]
           ,[comment_date])
     VALUES
           ('1','10','Yes! I hope you have a good one','2020-06-12'),
		   ('2','9','you rock','2019-10-22'),
		   ('3','8','cannot wait','2018-06-11'),
		   ('4','7','It is my birthday month','2007-06-15'),
		   ('5','6','we got this','2012-07-26'),
		   ('6','5','I am going to have fun this weeekend','2015-08-19'),
		   ('7','4','You go girl','2018-11-30'),
		   ('8','3','Good luck','2016-04-20'),
		   ('9','2','Hahaha','2020-01-20'),
		   ('10','1','Bring me a cup too','2021-08-11')

GO



USE [facebookDb]
GO

INSERT INTO [dbo].[Events]
           ([user_id]
           ,[event_name]
           ,[description]
           ,[event_startdate]
           ,[event_enddate])
     VALUES
           ('1','Easter egg hunt','Join us in the hunt along with your friends and family','2023-04-08',''),
		   ('2','Spring Fling','Join us for some food and drinks','2021-07-12','2021-07-13'),
		   ('3','Halloween Party','The eve of the Western Christian feast of All Saints Day','2022-10-30','2022-11-01'),
		   ('4','Movie night','we can play your favorite movies all night long','2021-04-19','2021-04-22'),
		   ('5','Group study','Final s are coming!','2020-04-20','2020-04-27')
GO


