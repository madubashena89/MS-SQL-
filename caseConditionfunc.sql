select OrderID,
   'Status' = case
       when OrderID <= 10250 then 'first batch'
	   else 'late batch'
	   end

from Orders