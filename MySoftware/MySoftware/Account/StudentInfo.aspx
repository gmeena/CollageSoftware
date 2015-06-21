<%@ Page Title="Student Information" Language="C#" MasterPageFile="~/Account/AdminMaster.Master" AutoEventWireup="true" CodeBehind="StudentInfo.aspx.cs" Inherits="MySoftware.Account.StudentInfo" %>

<%@ Register Src="~/Account/StudentControl/StudentInfo.ascx" TagPrefix="student" TagName="Information" %>
<%@ Register Src="~/Account/StudentControl/StudentAddress.ascx" TagPrefix="student" TagName="Address" %>
<%@ Register Src="~/Account/StudentControl/StudentFamily.ascx" TagPrefix="student" TagName="Family" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ajaxToolkit:ToolkitScriptManager ID="sc1" runat="server"></ajaxToolkit:ToolkitScriptManager>

    <div style="width: 100%; height: 100%;">
        <div style="float: left; width: 20%;">Left Hand Side</div>
        <div style="float: left; width: 80%">
            <table style="width: 100%;">
                <tr>
                    <td style="width: 100%;">
                        <ajaxToolkit:TabContainer ID="Tabs" runat="server"
                            Height="100%" Width="100%" Visible="true" ActiveTabIndex="0">
                            <ajaxToolkit:TabPanel runat="server" ID="InfoPanel" HeaderText="Student Information">
                                <ContentTemplate>
                                    <student:Information runat="server" id="studentInfo"></student:Information>
                                </ContentTemplate>
                            </ajaxToolkit:TabPanel>
                            <ajaxToolkit:TabPanel runat="server" ID="addressPanel" HeaderText="Student Address">
                                <ContentTemplate>
                                    <student:Address runat="server" id="studentAdd"></student:Address>
                                </ContentTemplate>
                            </ajaxToolkit:TabPanel>
                            <ajaxToolkit:TabPanel runat="server" ID="familyPanel" HeaderText="Family Detail">
                                <ContentTemplate>
                                    <student:Family runat="server" id="studentFamily"></student:Family>
                                </ContentTemplate>
                            </ajaxToolkit:TabPanel>
                        </ajaxToolkit:TabContainer></td>
                </tr>
            </table>
        </div>
    </div>

</asp:Content>
