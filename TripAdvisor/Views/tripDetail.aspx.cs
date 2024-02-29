using System;
using System.Collections.Generic;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TripAdvisor.Controllers;
using TripAdvisor.Models;

namespace TripAdvisor.Views
{
	public partial class tripDetail : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (Session["session"] != null)
			{
				FirebaseUser user = (FirebaseUser)Session["session"];

				UserNameIfLogged.InnerText = "Welcome " + user.displayName;

				int id = Convert.ToInt16(Request.QueryString["id"]);

				TripController tripController = new TripController();
				repTrip.DataSource = tripController.GetTrip(id);
				repTrip.DataBind();
			}
			else
			{				
				Response.Redirect("main.aspx");
			}
		}
	}
}