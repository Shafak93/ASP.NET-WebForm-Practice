<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Reapeter.aspx.cs" Inherits="Project_ASP.Reapeter" %>

<%@ Register Src="~/AjaxDate.ascx" TagPrefix="uc1" TagName="AjaxDate" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    From Date:
    <uc1:AjaxDate runat="server" ID="AjaxDate1" />
    To Date:
    <uc1:AjaxDate runat="server" ID="AjaxDate2" />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Show" />
    <br />

    
    <asp:Repeater ID="Repeater1" runat="server"></asp:Repeater>

</asp:Content>
