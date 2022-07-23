/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [ID]
      ,[Name]
      ,(CASE WHEN Sex='M' THEN 'Male'
	  WHEN Sex='F' THEN 'Female' end) as Sex 
      ,(case when Age<18 then 'Under 18'
	         when Age between 18 and 25 then '18-25'
			 when Age between 25 and 30 then '25-30'
			 when Age > 30 then 'Over 30' end) as "Age grouping"
      ,[Height]
      ,[Weight]
      ,[NOC] as "Nation code"
      ,[Games]
	  ,LEFT(Games,CHARINDEX(' ',Games)-1) as "Year"           --split Games column to year and Season based on space
	  ,RIGHT(Games,CHARINDEX(' ',REVERSE(Games))-1) as "Season"
      ,[City]
      ,[Sport]
      ,[Event]
      ,(case when Medal='NA' then 'Not Registered' else Medal end) as  Medal
  FROM [olympic_games].[dbo].[athletes_event_results]
  where RIGHT(Games,CHARINDEX(' ',Games)+1) ='summer'