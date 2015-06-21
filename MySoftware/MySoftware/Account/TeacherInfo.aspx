<%@ Page Title="" Language="C#" MasterPageFile="~/Account/AdminMaster.Master" AutoEventWireup="true" CodeBehind="TeacherInfo.aspx.cs" Inherits="MySoftware.Account.TeacherInfo" %>
<%@ Register Src="~/Account/TeacherControl/TeacherInfo.ascx" TagPrefix="teacher" TagName="Information" %>
<%@ Register Src="~/Account/TeacherControl/TeacherAddress.ascx" TagPrefix="teacher" TagName="Address" %>
<%@ Register Src="~/Account/TeacherControl/TeacherFamily.ascx" TagPrefix="teacher" TagName="Family" %>
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
                            <ajaxToolkit:TabPanel runat="server" ID="InfoPanel" HeaderText="Teacher Information">
                                <ContentTemplate>
                                    <teacher:Information runat="server" id="teacherInfo"></teacher:Information>
                                </ContentTemplate>
                            </ajaxToolkit:TabPanel>
                            <ajaxToolkit:TabPanel runat="server" ID="addressPanel" HeaderText="Teacher Address">
                                <ContentTemplate>
                                    <teacher:Address runat="server" id="teacherAdd"></teacher:Address>
                                </ContentTemplate>
                            </ajaxToolkit:TabPanel>
                            <ajaxToolkit:TabPanel runat="server" ID="familyPanel" HeaderText="Family Detail">
                                <ContentTemplate>
                                    <teacher:Family runat="server" id="teacherFamily"></teacher:Family>
                                </ContentTemplate>
                            </ajaxToolkit:TabPanel>
                        </ajaxToolkit:TabContainer></td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
