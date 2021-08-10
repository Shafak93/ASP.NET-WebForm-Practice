<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="dateuserFormView.aspx.cs" Inherits="Project_ASP.dateuserFormView" %>

<%@ Register Src="~/AjaxDate.ascx" TagPrefix="uc1" TagName="AjaxDate" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div>
        <h1>Welcome to Form View page</h1>
    </div>
    <br />
    <br />
    From Date:
    <uc1:AjaxDate runat="server" ID="AjaxDate1" />
    To Date:
    <uc1:AjaxDate runat="server" ID="AjaxDate2" />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Show" />
    <br />

    <asp:FormView ID="FormView1" runat="server" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1" AllowPaging="True" OnPageIndexChanging="FormView1_PageIndexChanging1">

        <EditItemTemplate>
            CustomerID:
            <asp:Label Text='<%# Eval("CustomerID") %>' runat="server" ID="CustomerIDLabel1" /><br />
            CustomerName:
            <asp:TextBox Text='<%# Bind("CustomerName") %>' runat="server" ID="CustomerNameTextBox" /><br />
            Address:
            <asp:TextBox Text='<%# Bind("Address") %>' runat="server" ID="AddressTextBox" /><br />
            City:
            <asp:TextBox Text='<%# Bind("City") %>' runat="server" ID="CityTextBox" /><br />
            Email:
            <asp:TextBox Text='<%# Bind("Email") %>' runat="server" ID="EmailTextBox" /><br />
            password:
            <asp:TextBox Text='<%# Bind("password") %>' runat="server" ID="passwordTextBox" /><br />
            DateOfBirth:
            <asp:TextBox Text='<%# Bind("DateOfBirth") %>' runat="server" ID="DateOfBirthTextBox" /><br />
            <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
        </EditItemTemplate>
        <InsertItemTemplate>
            CustomerName:
            <asp:TextBox Text='<%# Bind("CustomerName") %>' runat="server" ID="CustomerNameTextBox" /><br />
            Address:
            <asp:TextBox Text='<%# Bind("Address") %>' runat="server" ID="AddressTextBox" /><br />
            City:
            <asp:TextBox Text='<%# Bind("City") %>' runat="server" ID="CityTextBox" /><br />
            Email:
            <asp:TextBox Text='<%# Bind("Email") %>' runat="server" ID="EmailTextBox" /><br />
            password:
            <asp:TextBox Text='<%# Bind("password") %>' runat="server" ID="passwordTextBox" /><br />
            DateOfBirth:
            <asp:TextBox Text='<%# Bind("DateOfBirth") %>' runat="server" ID="DateOfBirthTextBox" /><br />
            <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
        </InsertItemTemplate>
        <ItemTemplate>
            CustomerID:
            <asp:Label Text='<%# Eval("CustomerID") %>' runat="server" ID="CustomerIDLabel" /><br />
            CustomerName:
            <asp:Label Text='<%# Bind("CustomerName") %>' runat="server" ID="CustomerNameLabel" /><br />
            Address:
            <asp:Label Text='<%# Bind("Address") %>' runat="server" ID="AddressLabel" /><br />
            City:
            <asp:Label Text='<%# Bind("City") %>' runat="server" ID="CityLabel" /><br />
            Email:
            <asp:Label Text='<%# Bind("Email") %>' runat="server" ID="EmailLabel" /><br />
            password:
            <asp:Label Text='<%# Bind("password") %>' runat="server" ID="passwordLabel" /><br />
            DateOfBirth:
            <asp:Label Text='<%# Bind("DateOfBirth") %>' runat="server" ID="DateOfBirthLabel" /><br />
            <asp:LinkButton runat="server" Text="Edit" CommandName="Edit" ID="EditButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="Delete" CommandName="Delete" ID="DeleteButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="New" CommandName="New" ID="NewButton" CausesValidation="False" />
        </ItemTemplate>
    </asp:FormView>

    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:RetailerShopConnectionString %>' OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [CustomerTable] WHERE ([DateOfBirth] between @bd1 and @bd2)">
        <SelectParameters>
            <asp:ControlParameter ControlID="AjaxDate1" Name="bd1" PropertyName="date" Type="string" />
        <asp:ControlParameter ControlID="AjaxDate2" Name="bd2" PropertyName="date" Type="string" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
