
---------List all orders with cutomer information---------------------------------------------
select * 
from [dbo].[Order] 
inner join [dbo].[Customer] 
on [dbo].[Order].CustomerId=[dbo].[Customer].Id;
-----------------------------------------------------------------------------------------------
--------------------------List all the orders withproduct names, Quantity,and prices ----------
select [dbo].[Order].[OrderNumber],[dbo].[Order].[OrderDate],[dbo].[Order].[TotalAmount],
[dbo].[Product].[ProductName],[dbo].[OrderItem].[Quantity],[dbo].[OrderItem].[UnitPrice]
from(( [dbo].[Order] 
left join [dbo].[OrderItem] on [dbo].[Order].[Id]=[dbo].[OrderItem].[OrderId])
inner join [dbo].[Product] on [dbo].[OrderItem].[ProductId]=[dbo].[Product].[Id])
--------------------------------------------------------------------------------------------------
--------------------------Match all the customers and suppliers by country -----------------------
select [dbo].[Customer].[FirstName],[dbo].[Customer].[LastName],[dbo].[Customer].[Country],
[dbo].[Supplier].[Country],[dbo].[Supplier].[CompanyName],[dbo].[Supplier].[ContactName]
from [dbo].[Customer] 
inner join  [dbo].[Supplier] on [dbo].[Customer].[Country]=[dbo].[Supplier].[Country];
------------------------------------------------------------------------------------------------------
--------------------------List customers that have not placed orders----------------------------------
select [dbo].[Customer].FirstName,[dbo].[Customer].[LastName],[dbo].[Customer].[City],[dbo].[Customer].[Country] ,[dbo].[Order].[TotalAmount]
from [dbo].[Order] right join 
[dbo].[Customer] on [dbo].[Customer].Id=[dbo].[Order].[CustomerId] where [dbo].[Order].[OrderNumber] is null;
------------------------------------------------------------------------------------------------------
-------------------------List the customers that have not place the orders----------------------------
select FirstName,LastName, City,country,TotalAmount,OrderNumber
from [dbo].[Order]
right join [dbo].[Customer]
on [dbo].[Customer].Id=[dbo].[Order].[CustomerId] order by TotalAmount;
---------------------------------------------------------------------------------------------------------