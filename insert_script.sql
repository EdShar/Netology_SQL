INSERT INTO public.album (album_name,"year") VALUES
	 ('The Eminem Show',2002),
	 ('Eminem is back',2004),
	 ('Invaders Must Die',2009),
	 ('World''s on Fire',2011),
	 ('System of a Down',1998),
	 ('Music to Be Murdered By',2020),
	 ('Immersion',2010),
	 ('Toxicity',2001);
INSERT INTO public.genre_performer (id_genre,id_musician) VALUES
	 (1,1),
	 (1,2),
	 (4,3),
	 (3,4),
	 (2,2);
INSERT INTO public.music_collection (collection_name,"year") VALUES
	 ('Rock Vibe',2019),
	 ('Electro chill',2023),
	 ('Music for workout',2020),
	 ('Motivation sounds',2013),
	 ('Top hits',2021);
INSERT INTO public.music_genre (name_genre) VALUES
	 ('Electronic'),
	 ('Dance music'),
	 ('Hip Hop'),
	 ('Rock');
INSERT INTO public.musician_album (id_musician,id_album) VALUES
	 (1,3),
	 (1,4),
	 (2,7),
	 (3,5),
	 (3,6),
	 (4,1),
	 (4,2),
	 (4,8);
INSERT INTO public.musician_performer (musician_name) VALUES
	 ('Prodigy'),
	 ('Pendulum'),
	 ('System of a Down'),
	 ('Eminem');
INSERT INTO public.track ("name",id_album,duration) VALUES
	 ('My Dad''s Gone Crazy',1,'00:04:27'),
	 ('Sing for the Moment',1,'00:05:40'),
	 ('Rock City',2,'00:04:05'),
	 ('Smack My Bitch Up',3,'00:05:04'),
	 ('Omen',4,'00:03:36'),
	 ('Sugar',5,'00:02:34'),
	 ('Chop Suey!',6,'00:03:30'),
	 ('Set Me On Fire',7,'00:05:03'),
	 ('No Regrets',8,'00:03:21'),
	 ('I Will',8,'00:05:03');
	 ('Lock It Up',8,'00:02:50');
INSERT INTO public.track_collection (id_track,id_collection) VALUES
	 (3,1),
	 (7,1),
	 (8,2),
	 (5,2),
	 (1,3),
	 (8,3),
	 (6,4),
	 (2,5),
	 (4,5);
