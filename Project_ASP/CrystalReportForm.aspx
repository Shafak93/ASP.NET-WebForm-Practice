<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrystalReportForm.aspx.cs" Inherits="Project_ASP.CrystalReportForm" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script lang="javaScript" type="text/javascript" src="../crystalreportviewers13/js/crviewer/crv.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="True" GroupTreeImagesFolderUrl="" Height="1202px" ReportSourceID="CrystalReportSource1" ToolbarImagesFolderUrl="" ToolPanelWidth="200px" Width="1104px" />
            <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
                <report filename="~/CrystalReport1.rpt">
                </report>
            </CR:CrystalReportSource>
        </div>
    </form>
</body>
</html>
