using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StudentRegistration
{
	public class Student
	{
		public int ID { get; set; }
		public string FirstName { get; set; }
		public string LastName { get; set; }
		public int Age { get; set; }
		public string Phone { get; set; }
		public string Address1 { get; set; }
		public string Address2 { get; set; }
		public string City { get; set; }
		public int Zip { get; set; }
		public Instructor instructor { get; set; }
	}
}