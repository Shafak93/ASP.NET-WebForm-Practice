<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ObjectDataSourceWork.aspx.cs" Inherits="Project_ASP.ObjectDataSourceWork" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource1" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>

        <Columns>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" ShowSelectButton="True"></asp:CommandField>
            <asp:CommandField ShowSelectButton="True"></asp:CommandField>
            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" InsertVisible="False" SortExpression="CustomerID"></asp:BoundField>
            <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName"></asp:BoundField>
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address"></asp:BoundField>
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City"></asp:BoundField>
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password"></asp:BoundField>
            <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth"></asp:BoundField>
        </Columns>

        <EditRowStyle BackColor="#999999"></EditRowStyle>

        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>

        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

        <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>

        <RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>

        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

        <SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>

        <SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>

        <SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>

        <SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>
    </asp:GridView>

   



    <asp:ObjectDataSource runat="server" ID="ObjectDataSource1" DataObjectTypeName="Project_ASP.App_Code.customer" DeleteMethod="DeleteOnlineShop" InsertMethod="InsertOnlineShop" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}" SelectMethod="GetAllOnlineShop" TypeName="Project_ASP.App_Code.OnlineShop" UpdateMethod="UpdateOnlineShop">
        <UpdateParameters>
            <asp:Parameter Name="orig_cm" Type="Object"></asp:Parameter>
            <asp:Parameter Name="cm" Type="Object"></asp:Parameter>
        </UpdateParameters>
        
        <%--<SelectParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </SelectParameters>--%>
    </asp:ObjectDataSource>

   <%-- <asp:ObjectDataSource runat="server" ID="ObjectDataSource2" DataObjectTypeName="Project_ASP.App_Code.customer" DeleteMethod="DeleteOnlineShop" InsertMethod="InsertOnlineShop" OldValuesParameterFormatString="original_{0}" SelectMethod="GetAllOnlineShop" TypeName="Project_ASP.App_Code.OnlineShop" UpdateMethod="UpdateOnlineShop">
        <UpdateParameters>
            <asp:Parameter Name="orig_cm" Type="Object"></asp:Parameter>
            <asp:Parameter Name="cm" Type="Object"></asp:Parameter>
        </UpdateParameters>
    </asp:ObjectDataSource>--%>
</asp:Content>
