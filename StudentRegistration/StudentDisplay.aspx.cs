using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace StudentRegistration
{
	public partial class StudentDisplay : System.Web.UI.Page
	{
		SqlDataReader rdr = null;
		SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
		SqlCommand cmd = null;

		protected void Page_Load(object sender, EventArgs e)
		{
			con.Open();
			string query = "Select S.ID, FirstName,LastName,Age,Phone,Address1,Address2,City,Zip, I.Name AS 'Advisor' from tbl_Student S INNER JOIN tbl_instructor I on S.Advisor = I.ID; ";
			string query2 = "select * from dbo.tbl_instructor";
			cmd = new SqlCommand(query, con)
			{
				CommandType = CommandType.Text
			};


			using (SqlDataReader dr = cmd.ExecuteReader())
			{
				GridView1.DataSource = dr;
				GridView1.DataBind();
			}
			cmd = new SqlCommand(query2, con)
			{
				CommandType = CommandType.Text
			};
			using (SqlDataReader dr = cmd.ExecuteReader())
			{
				GridView2.DataSource = dr;
				GridView2.DataBind();
			}

			con.Close();
		}
	}
}