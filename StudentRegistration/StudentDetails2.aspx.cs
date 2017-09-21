using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentRegistration
{
	public partial class StudentDetails2 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			
			Label1.Text = "Welcome " + (string)Session["Name"]; 
			Label2.Text = "ID: " + Session["ID"];
			Label3.Text = "Email: " + (string)Session["Email"];
			Label4.Text = "Dob: " + (string)Session["Dob"];
			Label5.Text = "Phone: " + (string)Session["Phone"];
			Label6.Text = "Address1: " + (string)Session["Address1"];
			Label7.Text = "Address2: " + (string)Session["Address2"];
			Label8.Text = "City: " + (string)Session["City"];
			Label9.Text = "State: " + (string)Session["State"];
			Label10.Text = "Zip: " + Session["Zip"];		

			
		}
	}
}