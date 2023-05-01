select *
from NetflixProject.dbo.netflix1$

SELECT show_id
FROM NetflixProject.dbo.netflix1$

-- Checking multiples
Select show_id, count(show_id) as Multiples
from NetflixProject.dbo.netflix1$
group by show_id
having count(show_id) > 1
-- No multiple ID's

-- Check unique values
select distinct type 
from NetflixProject.dbo.netflix1$
select distinct country 
from NetflixProject.dbo.netflix1$

-- There is one row that has data in wrong columns
select *
from NetflixProject.dbo.netflix1$
where type = 'William Wyler'

-- Delete row
delete from NetflixProject.dbo.netflix1$
where type = 'William Wyler'

select show_id
from NetflixProject.dbo.netflix1$
where director = 'Not Given'


-- Change 'Not Given' director and country to null
update NetflixProject.dbo.netflix1$
set director = null
where director = 'Not Given'
update NetflixProject.dbo.netflix1$
set country = null
where country = 'Not Given'

-- Save all movie types to new table
SELECT * INTO MovieData
FROM NetflixProject.dbo.netflix1$
WHERE type = 'Movie'

select *
from MovieData
