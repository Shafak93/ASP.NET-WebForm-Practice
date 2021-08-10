<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignUpForm.aspx.cs" Inherits="Project_ASP.SignUpForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="row">
        <div class="form-group">
            <label for="txtcustomerid" class="control-label col-md-3">Customer ID</label>
            <asp:TextBox runat="server" ID="txtcustomerid" CssClass="form-control col-md-9"  style="left: 3px; top: -1px; width: 43%"></asp:TextBox>
            <br />
         </div>
        <div class="form-group">
            <label for="txtcustomername" class="control-label col-md-3">Customer Name</label>
            <asp:TextBox runat="server" ID="txtcustomername" CssClass="form-control col-md-9" style="left: 3px; top: -1px; width: 43%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcustomername" Display="Dynamic" ErrorMessage="Customer name is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
         </div>
    <div>
        <div class="form-group">
            <label for="txtaddress" class="control-label col-md-3">Address </label>
            <asp:TextBox runat="server" ID="txtaddress" CssClass="form-control col-md-9" style="left: 0px; top: 0px; width: 58%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtaddress" Display="Dynamic" ErrorMessage="Address is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
         </div>
    </div>
    <div>
        <div class="form-group">
            <label for="txtcity" class="control-label col-md-3">City </label>
            <asp:TextBox runat="server" ID="txtcity" CssClass="form-control col-md-9" style="left: 0px; top: 0px; width: 42%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcity" Display="Dynamic" ErrorMessage="City is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
         </div>
    </div>
    <div>
        <div class="form-group">
            <label for="txtemil" class="control-label col-md-3">Email </label>
            <asp:TextBox runat="server" ID="txtemail" CssClass="form-control col-md-9" style="left: 0px; top: 0px; width: 42%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
         </div>
    </div>

        <div>
        <div class="form-group">
            <label for="txtdateofbirth" class="control-label col-md-3">Date of Birth </label>
            <asp:TextBox runat="server" ID="txtdateofbirth" TextMode="Date" CssClass="form-control col-md-9" style="left: 0px; top: 0px; width: 42%" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtdateofbirth" Display="Dynamic" ErrorMessage="Date of birth is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
         </div>
    </div>
      <div>
            <div class="form-group">
            <label for="txtpassword" class="control-label col-md-3">Password </label>
            <asp:TextBox runat="server" ID="txtpassword" CssClass="form-control col-md-9" style="left: 0px; top: 0px; width: 42%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtpassword" Display="Dynamic" ErrorMessage="Password  is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
         </div>
        </div>
    <div>
        <div class="form-group">
            <label for="txtconfirmpassword" class="control-label col-md-3">Confirm Password </label>
            <asp:TextBox runat="server" ID="txtconfirmpassword" CssClass="form-control col-md-9" style="left: 0px; top: 0px; width: 42%; margin-right: 0"></asp:TextBox>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtconfirmpassword" Display="Dynamic" ErrorMessage="Password is not matched" ForeColor="Red"></asp:CompareValidator>
         </div>
    </div>
        
        <div>
            <div class="form-group">
                <asp:Button ID="Button1" CssClass="btn btn-info" runat="server" Text="Submit" OnClick="Button1_Click" />
            </div>
        </div>
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString='<%$ ConnectionStrings:RetailerShopConnectionString %>' DeleteCommand="DELETE FROM [CustomerTable] WHERE [CustomerID] = @original_CustomerID AND (([CustomerName] = @original_CustomerName) OR ([CustomerName] IS NULL AND @original_CustomerName IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([DateOfBirth] = @original_DateOfBirth) OR ([DateOfBirth] IS NULL AND @original_DateOfBirth IS NULL))" InsertCommand="INSERT INTO [CustomerTable] ([CustomerName], [Address], [City], [Email], [password], [DateOfBirth]) VALUES (@CustomerName, @Address, @City, @Email, @password, @DateOfBirth)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [CustomerTable]" UpdateCommand="UPDATE [CustomerTable] SET [CustomerName] = @CustomerName, [Address] = @Address, [City] = @City, [Email] = @Email, [password] = @password, [DateOfBirth] = @DateOfBirth WHERE [CustomerID] = @original_CustomerID AND (([CustomerName] = @original_CustomerName) OR ([CustomerName] IS NULL AND @original_CustomerName IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([DateOfBirth] = @original_DateOfBirth) OR ([DateOfBirth] IS NULL AND @original_DateOfBirth IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_CustomerID" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="original_CustomerName" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Address" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_City" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Email" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_password" Type="String"></asp:Parameter>
                <asp:Parameter DbType="Date" Name="original_DateOfBirth"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CustomerName" Type="String"></asp:Parameter>
                <asp:Parameter Name="Address" Type="String"></asp:Parameter>
                <asp:Parameter Name="City" Type="String"></asp:Parameter>
                <asp:Parameter Name="Email" Type="String"></asp:Parameter>
                <asp:Parameter Name="password" Type="String"></asp:Parameter>
                <asp:Parameter DbType="Date" Name="DateOfBirth"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CustomerName" Type="String"></asp:Parameter>
                <asp:Parameter Name="Address" Type="String"></asp:Parameter>
                <asp:Parameter Name="City" Type="String"></asp:Parameter>
                <asp:Parameter Name="Email" Type="String"></asp:Parameter>
                <asp:Parameter Name="password" Type="String"></asp:Parameter>
                <asp:Parameter DbType="Date" Name="DateOfBirth"></asp:Parameter>
                <asp:Parameter Name="original_CustomerID" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="original_CustomerName" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Address" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_City" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Email" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_password" Type="String"></asp:Parameter>
                <asp:Parameter DbType="Date" Name="original_DateOfBirth"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
        </div>
    </asp:Content>
