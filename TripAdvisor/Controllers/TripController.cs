using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using TripAdvisor.Models;

namespace TripAdvisor.Controllers
{
	public class TripController
	{
		public List<Trip> GetTrips()
		{
			List<Trip> tripList = new List<Trip>();
			
			//Ahora usamos la base de datos
			DatabaseHelper.Database database = new DatabaseHelper.Database();
		    DataTable dsTrips =	database.GetTrips();

			foreach(DataRow dr in dsTrips.Rows)
			{
				tripList.Add(new Trip
				{
					Id = (int)dr["id"],
					Name = dr["name"].ToString(),
					Description = dr["description"].ToString(),
					Price = (decimal)dr["price"],
					PhotoPath = dr["photoPath"].ToString()
				});
			}

			return tripList;
		}

		public List<Trip> GetTrip(int id)
		{
			List<Trip> tripList = GetTrips();

			foreach (Trip trip in tripList) 
			{
				if(trip.Id == id)
				{
					tripList.Clear();
					tripList.Add(trip);
					return tripList;
				}
			}

			return null;
		}				
	}
}