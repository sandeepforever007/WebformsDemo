using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentRegistration
{
	public partial class StudentUserControl : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Button2_Click(object sender, EventArgs e)
		{
			Random random = new Random();
			int rId = random.Next(10, 99);
			Session["Name"] = TextBox1.Text + " " + TextBox2.Text;
			Session["ID"] = rId;
			Session["Email"] = TextBox4.Text;
			Session["Dob"] = TextBox7.Text;
			Session["Phone"] = TextBox3.Text;
			Session["Address1"] = AddressUserControl.Address1;
			Session["Address2"] = AddressUserControl.Address2;
			Session["City"] = AddressUserControl.City;
			Session["State"] = AddressUserControl.State;
			Session["Zip"] = AddressUserControl.Zip;
			
			Response.Redirect("StudentDetails2.aspx");
			//Response.Redirect("~/StudentDetails2.aspx?value1=" + TextBox1.Text);

		}
		
	}
}