/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [ProductKey]
      ,[OrderDateKey]
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]
	  ,[SalesOrderNumber]
	  ,[SalesAmount]
	  
	  /*
      ,[PromotionKey]
      ,[CurrencyKey]
      ,[SalesTerritoryKey]
      
      ,[SalesOrderLineNumber]
      ,[RevisionNumber]
      ,[OrderQuantity]
      ,[UnitPrice]
      ,[ExtendedAmount]
      ,[UnitPriceDiscountPct]
      ,[DiscountAmount]
      ,[ProductStandardCost]
      ,[TotalProductCost]
      
      ,[TaxAmt]
      ,[Freight]
      ,[CarrierTrackingNumber]
      ,[CustomerPONumber]
      ,[OrderDate]
      ,[DueDate]
      ,[ShipDate]
	  */
  FROM [AdventureWorksDW2019].[dbo].[FactInternetSales] sales
  WHERE LEFT(sales.OrderDateKey,4) >= YEAR(GETDATE()) - 3  -- i wanna need 2019 sales
  order by sales.OrderDateKey ASC
