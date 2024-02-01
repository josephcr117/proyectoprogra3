using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TripAdvisor.Controllers;
using TripAdvisor.Models;

namespace TripAdvisor.Views
{
	public partial class main : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			TripController tripController = new TripController();

			List<Trip> tripList = tripController.GetTrips();

			repTrips.DataSource = tripList;
			repTrips.DataBind();
		}
	}
}