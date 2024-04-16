USE [TripAdvisor]
GO
/****** Object:  StoredProcedure [dbo].[spSaveBooked]    Script Date: 4/15/2024 10:11:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spFavBook]
	@tripId INT,
    @email VARCHAR (50),
    @checkin DATETIME,
    @checkout DATETIME,
    @adults INT,
    @bookedHour VARCHAR (50),
    @total DECIMAL
AS
BEGIN
	DECLARE @bookedCount INT;

	SET @bookedCount = (SELECT COUNT(*) FROM Booked 
						WHERE (tripId != @tripId)  
						AND email = @email)

	IF (@bookedCount = 0)
		INSERT INTO [dbo].[Booked] ([tripId],[email],[checkin],[checkout],[adults],[bookedHour],[total],[created])
		VALUES (@tripId, @email, @checkin, @checkout, @adults, @bookedHour, @total, GETDATE())
	ELSE
		RAISERROR ('User cannot double booked', 16, 1);	
END