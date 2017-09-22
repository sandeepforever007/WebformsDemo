<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentUserControl.aspx.cs" Inherits="StudentRegistration.StudentUserControl" %>

<%@ Register Src="~/UserControl/AddressUserControl.ascx" TagPrefix="uc1" TagName="AddressUserControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<div>
		<table style="margin-top: 10px">
			<tr>
				<td style="width: 170px">
					<asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
				</td>
				<td style="width: 1000px">
					<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
				<td style="width: 170px">
					<asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>

				</td>
				<td style="width: 1000px">
					<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
				<td style="width: 170px">
					<asp:Label ID="Label6" runat="server" Text="Email ID"></asp:Label>

				</td>
				<td style="width: 1000px">
					<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox4" ErrorMessage="*"></asp:RequiredFieldValidator>
					<asp:RegularExpressionValidator ID="RegularExpressionValidator6" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server" ErrorMessage="Incorrect Email" ControlToValidate="TextBox4"></asp:RegularExpressionValidator>
				</td>
			</tr>
			<tr>
				<td style="width: 170px">
					<asp:Label ID="lblDob" runat="server" Text="DOB(mm/dd/yyyy)"></asp:Label>

				<td style="width: 1000px">
					<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="*"></asp:RequiredFieldValidator>
					<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox7" ValidationExpression="^(0?[1-9]|[12][0-9]|3[01])[\/](0?[1-9]|1[012])[\/]\d{4}$" ErrorMessage="Please enter DOB in mm//dd/yyyy"></asp:RegularExpressionValidator>
				</td>
			</tr>
		</table>
		<uc1:AddressUserControl runat="server" ID="AddressUserControl" />
		<table>
			<tr>
				<td style="width: 170px">
					<asp:Label ID="lblPhone" runat="server" Text="Phone"></asp:Label>

				</td>
				<td style="width: 1000px">
					<asp:TextBox ID="TextBox3" onkeydown="return (!(event.keyCode>=65) && event.keyCode!=32);" runat="server"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
					<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$" ErrorMessage="Please enter a valid phone number"></asp:RegularExpressionValidator>
				</td>
			</tr>
			<tr>
				<td style="width: 170px">
					<asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>

				</td>
				<td style="width: 1000px">
					<asp:TextBox ID="TextBox5" TextMode="Password" ToolTip="Enter Password" runat="server"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="*"></asp:RequiredFieldValidator>
					<asp:RegularExpressionValidator ID="RegularExpressionValidator4" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,12}$" runat="server" ControlToValidate="TextBox5" ErrorMessage="Password should contain one upper, one lower, one digit and length should be 8-12 characters"></asp:RegularExpressionValidator>
				</td>
			</tr>
			<tr>
				<td style="width: 170px">
					<asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password"></asp:Label>

				</td>
				<td style="width: 1000px">
					<asp:TextBox ID="TextBox6" TextMode="Password" ToolTip="Enter Password" runat="server"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="*"></asp:RequiredFieldValidator>
					<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" ErrorMessage="Password doesnt match"></asp:CompareValidator>
				</td>
			</tr>
			<tr>
				<td style="width: 170px"></td>
				<td style="width: 1000px">
					<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" UseSubmitBehavior="False" Text="Submit" />
				</td>
			</tr>

		</table>
	</div>

</asp:Content>
