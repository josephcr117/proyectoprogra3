USE [TripAdvisor]
GO
CREATE PROCEDURE [dbo].[spDeleteBooked]
    @bookedId INT
AS
BEGIN
    DELETE FROM [dbo].[Booked] WHERE bookedId = @bookedId;
END
GO