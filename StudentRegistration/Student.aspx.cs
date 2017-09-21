using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentRegistration
{
	public partial class Student : System.Web.UI.Page
	{
		
		protected void Page_Load(object sender, EventArgs e)
		{


		}

		protected void Button2_Click(object sender, EventArgs e)
		{
			List<Student> addStudent = new List<Student>();
			Random random = new Random();
			int rId = random.Next(10, 99);
			addStudent.Add(new Student()
			{
				StudentID = rId,
				FirstName = TextBox1.Text,
				LastName = TextBox2.Text,
				EmailID = TextBox4.Text,
				Dob = TextBox7.Text,
				Phone = TextBox3.Text,
				Password = TextBox5.Text,
				ConfirmPassword = TextBox6.Text,
				Address1 = TextBox8.Text,
				Address2 = TextBox10.Text,
				City = TextBox11.Text,
				State = TextBox12.Text,
				Zip = Convert.ToInt32(TextBox9.Text)
			});
			Session["studentList"] = addStudent;
			Server.Transfer("studentdetail.aspx");			
		}


	}

	public partial class Student
	{
		public int StudentID { get; set; }
		public string FirstName { get; set; }
		public string LastName { get; set; }
		public string EmailID { get; set; }
		public string Dob { get; set; }
		public string Phone { get; set; }
		public string Password { get; set; }
		public string ConfirmPassword { get; set; }
		public string Address1 { get; set; }
		public string Address2 { get; set; }
		public string City { get; set; }
		public string State { get; set; }
		public int Zip { get; set; }
	}
}