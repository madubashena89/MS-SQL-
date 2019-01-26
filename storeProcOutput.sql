CREATE PROCEDURE uspAddNewCustomer
@BusinessName CHAR(100),
@BusinessLoc CHAR(50), 
@BusinessAddress CHAR(30),
@City CHAR(25),
@State CHAR(2),
@Zip CHAR(9),
@PhoneNumber CHAR(10), 
@ContactPerson CHAR(30),
@CustomerID Numeric(18,0) OUTPUT
AS
BEGIN
INSERT INTO CUSTOMER
(
[City],
[State],
[Zip],
Phone,
Contact
)
VALUES( 
@BusinessName,
@BusinessLoc, 
@BusinessAddress,
@City,
@State,
@Zip,
@PhoneNumber, 
@ContactPerson)
select @CustomerID=SCOPE_IDENTITY()
END

EXECUTE uspAddNewCustomer
@BusinessName = 'Office Max',
@BusinessLoc = 'New York',
@BusinessAddress = '1001 Rocket Avenue North',
@City = 'Queens',
@State = 'NY',
@Zip = '67676',
@PhoneNumber = '7187867896',
@ContactPerson = 'Dick Vandike',
@CustomerID

select @CustomerID
 