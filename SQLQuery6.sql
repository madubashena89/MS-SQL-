select AVG(Freight) as AvgFrieght,SUM(Freight) as TotalFreight, MIN(Freight) as MinFrieght, Max(Freight) as MaxFrieght, OrderID from Orders group by ShipVia


select * from Orders