CREATE PROCEDURE [dbo].[SP_AddNewMember]
(
@Name varchar(300),
@Address varchar(300),
@Email varchar(300),
@Mobile int
)
AS
BEGIN

	BEGIN TRY

		insert into Members
		values (@Name,
		@Address,
		@Email,
		@Mobile)

	END TRY

	BEGIN CATCH
		 insert into ErrorLog
		 values (ERROR_NUMBER(), ERROR_SEVERITY(), ERROR_STATE(), ERROR_PROCEDURE(), ERROR_MESSAGE(), ERROR_LINE(), ERROR_MESSAGE())

		 print ('Error occured')
	END CATCH


END
