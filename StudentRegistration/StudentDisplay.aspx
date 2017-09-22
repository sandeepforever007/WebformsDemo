<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentDisplay.aspx.cs" Inherits="StudentRegistration.StudentDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<div>
		<h3>Student Details</h3>
		<table style="margin-top: 10px">

			<asp:GridView ID="GridView1" runat="server"></asp:GridView>
		</table>
		<h3>Instructor Details</h3>
		<table style="margin-top: 10px">

			<asp:GridView ID="GridView2" runat="server"></asp:GridView>
		</table>
	</div>

</asp:Content>
