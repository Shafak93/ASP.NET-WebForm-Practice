<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="dateuser.aspx.cs" Inherits="Project_ASP.dateuser" %>

<%@ Register Src="~/AjaxDate.ascx" TagPrefix="uc1" TagName="AjaxDate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1>Welcome to Grid View Page</h1>
    </div>
    <br />
    <asp:Repeater ID="Repeater1" runat="server"></asp:Repeater>
    <br />
     From Date:
    <uc1:AjaxDate runat="server" id="AjaxDate1" />
    To Date:
    <uc1:AjaxDate runat="server" id="AjaxDate2" />
    <br />
    <asp:Button runat="server" Text="Show" />
    <br />

    
     <br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" Width="911px">
        <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
        <Columns>
            <asp:CommandField ShowSelectButton="True"></asp:CommandField>
            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" InsertVisible="False" SortExpression="CustomerID"></asp:BoundField>
            <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName"></asp:BoundField>
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address"></asp:BoundField>
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City"></asp:BoundField>
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password"></asp:BoundField>
            <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth"></asp:BoundField>
        </Columns>
        <EditRowStyle BackColor="#2461BF"></EditRowStyle>

        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

        <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>

        <RowStyle BackColor="#EFF3FB"></RowStyle>

        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

        <SortedAscendingCellStyle BackColor="#F5F7FB"></SortedAscendingCellStyle>

        <SortedAscendingHeaderStyle BackColor="#6D95E1"></SortedAscendingHeaderStyle>

        <SortedDescendingCellStyle BackColor="#E9EBEF"></SortedDescendingCellStyle>

        <SortedDescendingHeaderStyle BackColor="#4870BE"></SortedDescendingHeaderStyle>
    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:RetailerShopConnectionString %>' OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [CustomerTable] WHERE ([DateOfBirth] between @bd1 and @bd2)">
        <SelectParameters>
            <asp:ControlParameter ControlID="AjaxDate1" Name="bd1" PropertyName="date" Type="string" />
            <asp:ControlParameter ControlID="AjaxDate2" Name="bd2" PropertyName="date" Type="string" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
