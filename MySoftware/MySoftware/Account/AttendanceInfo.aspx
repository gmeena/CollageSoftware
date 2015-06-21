<%@ Page Title="" Language="C#" MasterPageFile="~/Account/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AttendanceInfo.aspx.cs" Inherits="MySoftware.Account.AttendanceInfo" %>
<%@ Register Src="~/Account/AttendanceControl/AttendanceInfo.ascx" TagPrefix="attendance" TagName="Information" %>
<%@ Register Src="~/Account/EmployeeControl/EmployeeAddress.ascx" TagPrefix="attendance" TagName="Address" %>
<%@ Register Src="~/Account/EmployeeControl/EmployeeFamily.ascx" TagPrefix="attendance" TagName="Family" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ajaxToolkit:ToolkitScriptManager ID="sc1" runat="server"></ajaxToolkit:ToolkitScriptManager>
    <div style="width: 100%; height: 100%;">
        <div style="float: left; width: 20%;">Left Hand Side</div>
        <div style="float: left; width: 80%">
            <table style="width: 100%;">
                <tr>
                    <td style="width: 100%;">
                        <ajaxToolkit:TabContainer ID="Tabs" runat="server"
                            Height="100%" Width="100%" Visible="true" ActiveTabIndex="0">
                            <ajaxToolkit:TabPanel runat="server" ID="InfoPanel" HeaderText="Attendance Information">
                                <ContentTemplate>
                                    <attendance:Information runat="server" id="attendanceInfo"></attendance:Information>
                                </ContentTemplate>
                            </ajaxToolkit:TabPanel>
                            <ajaxToolkit:TabPanel runat="server" ID="addressPanel" HeaderText="Employee Address">
                                <ContentTemplate>
                                    <attendance:Address runat="server" id="employeeAdd"></attendance:Address>
                                </ContentTemplate>
                            </ajaxToolkit:TabPanel>
                            <ajaxToolkit:TabPanel runat="server" ID="familyPanel" HeaderText="Family Detail">
                                <ContentTemplate>
                                    <attendance:Family runat="server" id="employeeFamily"></attendance:Family>
                                </ContentTemplate>
                            </ajaxToolkit:TabPanel>
                        </ajaxToolkit:TabContainer></td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
