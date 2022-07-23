/****** Script for SelectTopNRows command from SSMS  ******/

select
ID as "player key" ,
"Name" as "Player Name",
City,
RIGHT(Games,6) as "Class",
LEFT(Games,4) as "Year",
Medal,
NOC as team_FK
INTO custom_q1
FROM athletes_event_results