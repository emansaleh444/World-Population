create table world_population(
ID integer,
country varchar,
area integer,
population integer,
population_growth float,
birth_rate float,
death_rate float,
migration_rate float);
copy world_population from 'D:\World Population.csv'delimiter ',' csv header null '';
--1
select*
from world_population;
-- 2 which country has the most people?
select country,population
from world_population
where population > 0
order by population desc
limit 1;
--3 which country has the highest growth rate?
select country,population_growth
from world_population
order by population desc
limit 1;
--4 which countrieswill add the most people to thier population next year?
select country,migration_rate
from world_population
order by migration_rate desc;
--5 which counyries have a higher death rate than birth rate?
select country,death_rate,birth_rate
from world_population
where death_rate > birth_rate
order by death_rate desc;
--6 which countries have highest population density?
select country,population/area as population_density
from world_population
where area<>0
order by population_density desc;