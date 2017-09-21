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
			List<Student> listOfInts = Session["studentList"] as List<Student>;
			Label1.Text = "Welcome " + listOfInts[0].FirstName + " " + listOfInts[0].LastName;
			Label2.Text = "ID: " + listOfInts[0].StudentID;
			Label3.Text = "Email: " + listOfInts[0].EmailID;
			Label4.Text = "Dob: " + listOfInts[0].Dob;
			Label5.Text = "Phone: " + listOfInts[0].Phone;
			Label6.Text = "Address1: " + listOfInts[0].Address1;
			if (!string.IsNullOrEmpty(listOfInts[0].Address2))
			{
				Label7.Text = "Address2: " + listOfInts[0].Address2;				
			}
			Label8.Text = "City: " + listOfInts[0].City;
			Label9.Text = "State: " + listOfInts[0].State;
			Label10.Text = "Zip: " + listOfInts[0].Zip;
		}
	}
}