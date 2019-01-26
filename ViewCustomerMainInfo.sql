select * from Customers

create view CustomersMainInfo
As
select CustomerID,CompanyName, ContactName, City from Customers


insert into CustomersMainInfo (CustomerID, CompanyName, ContactName, City) values ('BSKSP', 'American Exp', 'Pradeep M', 'LA')
select * from CustomersMainInfo