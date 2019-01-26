create procedure getEmployeeDataOnEmpID 
          @EmpID varchar(50)
As
Begin

      IF @EmpID is not null
	       	     select EmployeeID, FirstName, Title   
					from Employees
					 where @EmpID = EmployeeID
	 else
	    select EmployeeID, FirstName, Title   
					from Employees

   
	
End

Exec getEmployeeDataOnEmpID null
