using System;
using System.Collections.Generic;
using System.EnterpriseServices;
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

		protected void btnLogin_ServerClick(object sender, EventArgs e)
		{
			string email = txtEmail.Value;
			string pwd = txtPwd.Value;

			if (email == "admin@tripadvisor.com" && pwd == "admin123")
			{
				Session["session"] = true;

				ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Login approved')", true);
			}			
		}

		protected void btnLogout_ServerClick(object sender, EventArgs e)
		{
			ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Session has been closed')", true);
			Session.Clear();
		}
	}
}