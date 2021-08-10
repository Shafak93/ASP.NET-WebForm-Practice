<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Project_ASP.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.4.1.min.js"></script>
</head>
<body style="background-image:url(Image/body.jpg)">
    <form id="form1" runat="server" class="container">
        <div class="row">
            <div class="form-group">
                <label for="txtemail" class="control-label col-md-3">Email</label>
                <asp:TextBox runat="server" ID="txtemail" CssClass="form-control col-md-9"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtpassword" class="control-label col-md-3">Password</label>
                <asp:TextBox runat="server" ID="txtpassword" CssClass="form-control col-md-9"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Login" OnClick="Button1_Click" />

            </div>
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            <br />
            <div class="form-group">
                <asp:Button ID="Button2" CssClass="btn btn-info" runat="server" Text="Sign Up" OnClick="Button2_Click" />
            </div>
        </div>
    </form>
</body>
</html>
