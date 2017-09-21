<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="StudentRegistration.Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body style="height: 247px">
	<form id="form1" runat="server">
		<div>
			<asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
			<asp:TextBox ID="TextBox1" Style='margin-left: 100px' runat="server"></asp:TextBox>
			<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
			<br />
			<br />
			<asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
			<asp:TextBox ID="TextBox2" Style='margin-left: 102px' runat="server"></asp:TextBox>
			<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
			<br />
			<br />
			<asp:Label ID="lblEmailId" runat="server" Text="Email ID"></asp:Label>
			<asp:TextBox ID="TextBox4" Style='margin-left: 112px' runat="server"></asp:TextBox>
			<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
			<asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server" ErrorMessage="Incorrect Email" ControlToValidate="TextBox4"></asp:RegularExpressionValidator>
			<br />
			<br />
			<asp:Label ID="lblDob" runat="server" Text="Date of Birth(mm/dd/yyyy)"></asp:Label>
			<asp:TextBox ID="TextBox7" Style='margin-left: -8px' runat="server"></asp:TextBox>
			<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="*"></asp:RequiredFieldValidator>
			<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox7" ValidationExpression="^(0?[1-9]|[12][0-9]|3[01])[\/](0?[1-9]|1[012])[\/]\d{4}$" ErrorMessage="Please enter DOB in mm//dd/yyyy"></asp:RegularExpressionValidator>
			<br />
			<br />
			<asp:Label ID="Label1" runat="server" Text="Address1"></asp:Label>
			<asp:TextBox ID="TextBox8" Style='margin-left: 130px' runat="server"></asp:TextBox>
			<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="*"></asp:RequiredFieldValidator>
			<br />
			<br />

			<asp:Label ID="Label3" runat="server" Text="Address2"></asp:Label>
			<asp:TextBox ID="TextBox10" Style='margin-left: 130px' runat="server"></asp:TextBox>
			<br />
			<br />
			<asp:Label ID="Label4" runat="server" Text="City"></asp:Label>
			<asp:TextBox ID="TextBox11" Style='margin-left: 130px' runat="server"></asp:TextBox>
			<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox11" ErrorMessage="*"></asp:RequiredFieldValidator>
			<br />
			<br />
			<asp:Label ID="Label5" runat="server" Text="State"></asp:Label>
			<asp:TextBox ID="TextBox12" Style='margin-left: 130px' MaxLength="2" runat="server"></asp:TextBox>
			<asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox12" ErrorMessage="*"></asp:RequiredFieldValidator>
			<br />
			<br />
			<asp:Label ID="Label2" runat="server" Text="Zip"></asp:Label>
			<asp:TextBox ID="TextBox9" Style='margin-left: 130px' MaxLength="5" onkeydown="return (!(event.keyCode>=65) && event.keyCode!=32);" runat="server"></asp:TextBox>
			<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox8" ErrorMessage="*"></asp:RequiredFieldValidator>
			<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox9" ValidationExpression="[0-9]{5}" ErrorMessage="Please enter a valid Zip"></asp:RegularExpressionValidator>
			<br />
			<br />
			<asp:Label ID="lblPhone" runat="server" Text="Phone"></asp:Label>
			<asp:TextBox ID="TextBox3" Style='margin-left: 130px' runat="server"></asp:TextBox>
			<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*"></asp:RequiredFieldValidator>
			<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$" ErrorMessage="Please enter a phone number"></asp:RegularExpressionValidator>
			<br />
			<br />
			<asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
			<asp:TextBox ID="TextBox5" TextMode="Password" Style='margin-left: 100px' ToolTip="Enter Password" runat="server"></asp:TextBox>
			<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="*"></asp:RequiredFieldValidator>
			<asp:RegularExpressionValidator ID="RegularExpressionValidator4" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,12}$" runat="server" ControlToValidate="TextBox5" ErrorMessage="Password should contain one upper, one lower, one digit lenght 8-12"></asp:RegularExpressionValidator>
			<br />
			<br />
			<asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password"></asp:Label>
			<asp:TextBox ID="TextBox6" TextMode="Password" Style='margin-left: 47px' ToolTip="Enter Password" runat="server"></asp:TextBox>
			<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="*"></asp:RequiredFieldValidator>
			<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" ErrorMessage="Password doesnt match"></asp:CompareValidator>
			<br />
			<br />
			<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit" />
		</div>


	</form>
</body>
</html>
