using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentRegistration.UserControl
{
	public partial class AddressUserControl : System.Web.UI.UserControl
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}
		public string Address1
		{
			get
			{
				return TextBox8.Text;
			}
		}
		public string Address2
		{
			get
			{
				return TextBox10.Text;
			}
		}
		public string City
		{
			get
			{
				return TextBox11.Text;
			}
		}
		public string State
		{
			get
			{
				return TextBox12.Text;
			}
		}
		public int Zip
		{
			get
			{
				return Convert.ToInt32(TextBox9.Text);
			}
		}
	}
}