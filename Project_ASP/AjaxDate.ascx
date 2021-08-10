<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AjaxDate.ascx.cs" Inherits="Project_ASP.AjaxDate" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:TextBox ID="txtdt" runat="server"></asp:TextBox>
<asp:Image ID="ImgCalIcon" runat="server" Height="20px" ImageUrl="~/Image/logo.jpg" Width="30px" />
<asp:CalendarExtender ID="CalendarExtender1" runat="server" Format="yyyy-MM-dd" PopupButtonID="ImgCalIcon" TargetControlID="txtdt" />
