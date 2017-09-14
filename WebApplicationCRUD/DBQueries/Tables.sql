CREATE TABLE Members 
(
MemberID INT PRIMARY KEY IDENTITY(1,1), 
Name VARCHAR(300),
Address VARCHAR(300),
Email VARCHAR(300),
Mobile INT
)

CREATE TABLE ErrorLog 
(
ErrorID INT PRIMARY KEY IDENTITY(1,1),
ErrorSeverity VARCHAR(4000),
ErrorState VARCHAR(4000),
ErrorProcedure VARCHAR(4000),
ErrorLine INT,
ErrorMessage VARCHAR(4000)
)


SELECT ERROR_NUMBER() AS ErrorNumber
     ,ERROR_SEVERITY() AS ErrorSeverity
     ,ERROR_STATE() AS ErrorState
     ,ERROR_PROCEDURE() AS ErrorProcedure
     ,ERROR_LINE() AS ErrorLine
     ,ERROR_MESSAGE() AS ErrorMessage;