/****** Script for SelectTopNRows command from SSMS  ******/
SELECT prod.ProductKey as "Product key"
      --,[ProductAlternateKey]
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,prod.EnglishProductName as "Product Name"
	  ,cat.EnglishProductCategoryName as "Product Category"
	  ,sub_cat.EnglishProductSubcategoryName as "Sub Category"
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,prod.Color as "Product Color"
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,prod.Size as "Product Size"
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,prod.ProductLine as "Product Line"
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,prod.ModelName as "Product Model"
      --,[LargePhoto]
      ,prod.EnglishDescription as "Product Description"
	  /*
      ,[FrenchDescription]
      ,[ChineseDescription]
      ,[ArabicDescription]
      ,[HebrewDescription]
      ,[ThaiDescription]
      ,[GermanDescription]
      ,[JapaneseDescription]
      ,[TurkishDescription]
      ,[StartDate]
      ,[EndDate]
	  */
      ,ISNULL(prod.Status , 'OutDated') as "Product Status"
	  
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] prod
  LEFT JOIN DimProductSubcategory sub_cat 
  ON prod.ProductSubcategoryKey = sub_cat.ProductSubcategoryKey
  LEFT JOIN DimProductCategory cat 
  ON sub_cat.ProductCategoryKey=cat.ProductCategoryKey

  order by prod.ProductKey