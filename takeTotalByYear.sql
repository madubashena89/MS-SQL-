 Select YEAR(OrderDate) as OrderYEar, SUM(Freight) as [Total Frieght] from Orders where YEAR(OrderDate) =1996 Group by Year(OrderDate)