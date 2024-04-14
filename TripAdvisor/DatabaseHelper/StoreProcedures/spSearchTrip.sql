USE [TripAdvisor]
GO
CREATE PROCEDURE spSearchTrip
	@name varchar(255)
AS
BEGIN
	SELECT *
    FROM Trips
    WHERE name LIKE '%' + @name + '%';
END
GO
