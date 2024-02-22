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
			FirebaseUser user = new FirebaseUser()
			{
				email = txtEmail.Value,
				password = txtPwd.Value
			};

			LoginController loginController = new LoginController();

			if (loginController.FirebaseAuth(user))
			{
				Session["session"] = true;

				//Mostranto el boton logout
				divLogout.Attributes.Remove("hidden");
				//Ocultando el login
				divLogin.Attributes.Add("hidden", "hidden");

				ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Login approved')", true);
			}
			else
			{
				ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Login denied')", true);
			}
		}

		protected void btnLogout_ServerClick(object sender, EventArgs e)
		{
			//Mostrando el login
			divLogin.Attributes.Remove("hidden");
			//Ocultando el boton logout
			divLogout.Attributes.Add("hidden", "hidden");

			ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Session has been closed')", true);
			Session.Clear();
		}
	}
}