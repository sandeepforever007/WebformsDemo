<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AddressUserControl.ascx.cs" Inherits="StudentRegistration.UserControl.AddressUserControl" %>
<div>
	<table>

		<tr>
			<td>
				<asp:Label ID="Label1" runat="server" Text="Address1"></asp:Label>
			</td>
			<td style="width: 1000px">
				<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="*"></asp:RequiredFieldValidator>

			</td>
		</tr>
		<tr>
			<td style="width: 170px">
				<asp:Label ID="Label3" runat="server" Text="Address2"></asp:Label>

			</td>
			<td style="width: 1000px">
				<asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
			</td>
		</tr>
		<tr>
			<td style="width: 170px">
				<asp:Label ID="Label4" runat="server" Text="City"></asp:Label>

			</td>
			<td style="width: 1000px">
				<asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox11" ErrorMessage="*"></asp:RequiredFieldValidator>
			</td>
		</tr>
		<tr>
			<td style="width: 170px">
				<asp:Label ID="Label5" runat="server" Text="State"></asp:Label>

			</td>
			<td style="width: 1000px">
				<asp:TextBox ID="TextBox12" MaxLength="2" runat="server"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox12" ErrorMessage="*"></asp:RequiredFieldValidator>
			</td>
		</tr>
		<tr>
			<td style="width: 170px">
				<asp:Label ID="Label2" runat="server" Text="Zip"></asp:Label>

				<br />
			</td>
			<td style="width: 1000px">
				<asp:TextBox ID="TextBox9" MaxLength="5" onkeydown="return (!(event.keyCode>=65) && event.keyCode!=32);" runat="server"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox8" ErrorMessage="*"></asp:RequiredFieldValidator>
				<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox9" ValidationExpression="[0-9]{5}" ErrorMessage="Please enter a valid Zip"></asp:RegularExpressionValidator>
			</td>
		</tr>


	</table>
</div>
