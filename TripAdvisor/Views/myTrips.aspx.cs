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
	public partial class myTrips : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (Session["session"] != null)
			{
				BookedController bookedController = new BookedController();

				FirebaseUser user = (FirebaseUser)Session["session"];

				repBooked.DataSource = bookedController.GetBooked(user.email);
				repBooked.DataBind();
			}
			else
			{
				Response.Redirect("main.aspx");
			}			
		}
	}
}