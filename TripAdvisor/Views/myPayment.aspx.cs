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
    public partial class myPayment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["session"] != null)
            {
                LoadReceipt();
                FirebaseUser user = (FirebaseUser)Session["session"];

            }
            else
            {
                Response.Redirect("main.aspx");
            }
        }

        public void LoadReceipt()
        {
            BookedController bookedController = new BookedController();

            FirebaseUser user = (FirebaseUser)Session["session"];

            repReciept.DataSource = bookedController.GetBooked(user.email);
            repReciept.DataBind();
        }
    }
}