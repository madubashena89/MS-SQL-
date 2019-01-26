select * from EMPLOYEES2

alter PROCEDURE enterEmpInfo
  @EmpNo nchar(10) output,
  @EmpName nchar(50),
  @EmpAge nchar(100),
  @EmpDept nchar(20)

AS
 BEGIN 
  INSERT INTO EMPLOYEES2
         ( EmpName, EmpAge, EmpDept )values ( @EmpName ,@EmpAge , @EmpDept ) set @EmpNo= SCOPE_IDENTITY()
 END

Declare  @EmpNo nchar 
Execute enterEmpInfo @EmpNo out, 'Pradeep',28, 'Engineering'
select * from EMPLOYEES2
