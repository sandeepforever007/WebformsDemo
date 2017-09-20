using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentRegistration
{
	public partial class studentdetail : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			string firstName = (string)(Session["First"]);
			string LastName = (string)(Session["LastName"]);
			int Id = (Int32)(Session["Id"]);
			string Email = (string)(Session["Email"]);
			string DOB = (string)(Session["DOB"]);
			string Phone = (string)(Session["Phone"]);
			
			
			

			Label2.Text = "Welcome " + firstName + " " + LastName;
			Label3.Text = "ID: " + Id;
			Label4.Text = "Email: " + Email;
			Label5.Text = "Dob " + DOB;
			Label6.Text = "Phone " + Phone;
			


		}
	}
}