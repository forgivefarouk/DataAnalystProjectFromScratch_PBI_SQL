/****** Script for SelectTopNRows command from SSMS  ******/
SELECT Customer.CustomerKey as "Customer key"
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,Customer.FirstName as "First Name"
      --,[MiddleName]
      ,Customer.LastName as "Last Name",
	  CONCAT(Customer.FirstName , ' ',Customer.LastName) as "Full Name"
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      ,CASE WHEN Customer.Gender ='M' THEN 'Male'
			WHEN Customer.Gender ='F' THEN 'Female'
			ELSE NULL END AS Gender ,
      --,[EmailAddress]
	  /*
      ,[YearlyIncome]
      ,[TotalChildren]
      ,[NumberChildrenAtHome]
      ,[EnglishEducation]
      ,[SpanishEducation]
      ,[FrenchEducation]
      ,[EnglishOccupation]
      ,[SpanishOccupation]
      ,[FrenchOccupation]
      ,[HouseOwnerFlag]
      ,[NumberCarsOwned]
      ,[AddressLine1]
      ,[AddressLine2]
      ,[Phone]
	  */
	   Customer.DateFirstPurchase ,
	   geo.City as "Customer City"
      --,[CommuteDistance]
	  
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] Customer -- joined in customer table with DimGeography table
  LEFT JOIN DimGeography geo
  on Customer.GeographyKey = geo.GeographyKey 

  order by Customer.CustomerKey --order results by Ascending (defult order)