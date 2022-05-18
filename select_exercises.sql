use albums_db;
explain albums;
select count(id) from albums;
-- 3a.how many rows in album table?== 31

select count(distinct(artist)) from albums;
-- 3b.how many unnique artist name? =23

-- 3c.Primary key for album is ID column


select release_date from albums
order by release_date;
-- 3d.What is the oldest release date for any album in the albums table? What is the most recent release date?
-- ans 3d.oldest 1967 and most recent= 2011




-- 5. Write queries to find the following information:

-- a. The name of all albums by Pink Floyd
select name from albums where artist='Pink Floyd';


-- b. The year Sgt. Pepper's Lonely Hearts Club Band was released
select release_date from albums where artist='Sgt.Pepper' & name='Lonely Hearts Club Band';

-- c. The genre for the album Nevermind
select genre from albums where name='Nevermind';

-- d. Which albums were released in the 1990s
select name from albums where release_date='1990';

-- e. Which albums had less than 20 million certified sales
select name from albums  where sales< '20 million';


-- f. All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
select name from albums where genre='Rock';
-- it doesnot include Hard rock or progressive rock as they are treated different genre.
-- to show up all the rock including progressive and hard
select name from albums where genre like'%rock%';