using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentRegistration
{
	public partial class Student1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Button2_Click(object sender, EventArgs e)
		{
			
			Random random = new Random();
			int rId = random.Next(10, 99);
			
				//StudentID = rId,
				//FirstName = TextBox1.Text,
				//LastName = TextBox2.Text,
				//EmailID = TextBox4.Text,
				//Dob = TextBox7.Text,
				//Phone = TextBox3.Text,
				//Password = TextBox5.Text,
				//ConfirmPassword = TextBox6.Text,
				//Address1 = TextBox8.Text,
				//Address2 = TextBox10.Text,
				//City = TextBox11.Text,
				//State = TextBox12.Text,
				//Zip = Convert.ToInt32(TextBox9.Text)



			Response.Redirect("~/StudentDetails2.aspx?value1=" +TextBox1.Text);
		}
	
	}
}