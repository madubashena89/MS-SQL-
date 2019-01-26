Declare @ID int
Declare @MYdata

Create myCurser curser for
select ID, MYdata from mytable where ID>1

Open myCurser 
while(@@FETCH_STATUS=0)
 fetch Next from myCurser into@ID, @MYdata
 Begin
 Print 'ID=' + cast(@ID as Nvarchar(3))+ 'MYdata = ' + @


 End
 close myCurser

Begin
fetch