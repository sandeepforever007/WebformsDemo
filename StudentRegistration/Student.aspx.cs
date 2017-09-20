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
		List<Student> addStudent = new List<Student>();
		protected void Page_Load(object sender, EventArgs e)
		{
			

		}

		protected void Button2_Click(object sender, EventArgs e)
		{
			Random r = new Random();
			int rInt = r.Next(0, 100);
			addStudent.Add(new Student() { StudentID = rInt, FirstName = TextBox1.Text, LastName = TextBox2.Text, EmailID = TextBox4.Text, Dob = TextBox7.Text, Phone = TextBox3.Text, Password = TextBox5.Text, ConfirmPassword = TextBox6.Text });
			Session.Add("First", addStudent[0].FirstName);
			Session.Add("Id", addStudent[0].StudentID);
			Session.Add("LastName", addStudent[0].LastName);
			Session.Add("Email", addStudent[0].EmailID);
			Session.Add("DOB", addStudent[0].Dob);
			Session.Add("Phone", addStudent[0].Phone);

			Server.Transfer("studentdetail.aspx");
			//GridView1.DataSource = addStudent;
			//GridView1.DataBind();
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
	}
}