﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
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
				FirebaseUser user = (FirebaseUser)Session["session"];
				Session["userEmail"] = user.email;
				Session["userName"] = user.displayName;

                LoadBooked();
				bookPayment();

            }
			else
			{
				Response.Redirect("main.aspx");
			}			
		}

		public void LoadBooked()
		{
			BookedController bookedController = new BookedController();

			FirebaseUser user = (FirebaseUser)Session["session"];

			repBooked.DataSource = bookedController.GetBooked(user.email);
			repBooked.DataBind();
		}

		public void bookPayment()
		{
			BookedController bookedController = new BookedController();

            FirebaseUser user = (FirebaseUser)Session["session"];

			repPayment.DataSource = bookedController.GetBooked(user.email);
            repPayment.DataBind();

        }

		protected void btnDelete_ServerClick(object sender, EventArgs e)
		{
			var button = (HtmlButton)sender;
			int dataId = Convert.ToInt16(button.Attributes["dataId"]);

			if (dataId > 0)
			{
				BookedController bookedController = new BookedController();
				bookedController.DeleteBooked(dataId);
				bookPayment();
                LoadBooked();
			}
		}
    }
}