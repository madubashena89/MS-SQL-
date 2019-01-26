

create function TOtalSalaryByDept(@DeptName varchar(50))
   Returns int
   As
     Begin
	      Return (select DeptName, SUM(DeptSalary) as TotalDeptSalary from SalaryTable where DeptName = @DeptName Group by Year(DeptName) 
	  
	              )
	 End

	