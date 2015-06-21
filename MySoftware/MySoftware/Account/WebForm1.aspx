<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MySoftware.Account.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <ajaxToolkit:ToolkitScriptManager ID="sc1" runat="server"></ajaxToolkit:ToolkitScriptManager>
    <ajaxToolkit:TabContainer ID="Tabs"  runat="server"
            Height="150px" ActiveTabIndex="0" Width="402px" Visible="true">
            <ajaxToolkit:TabPanel runat="server" ID="InfoPanel" HeaderText="Student Information">
                <ContentTemplate>Student Information</ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel runat="server" ID="addressPanel" HeaderText="Student Address">
                <ContentTemplate>Student Address</ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel runat="server" ID="family" HeaderText="Family Detail">
                <ContentTemplate>Family Details</ContentTemplate>
            </ajaxToolkit:TabPanel>
        </ajaxToolkit:TabContainer>

         <a href="StudentInfo.aspx">
                 Student Details
                    </a>
    </div>
    </form>
</body>
</html>
