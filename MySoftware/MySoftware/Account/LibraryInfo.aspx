<%@ Page Title="" Language="C#" MasterPageFile="~/Account/AdminMaster.Master" AutoEventWireup="true" CodeBehind="LibraryInfo.aspx.cs" Inherits="MySoftware.Account.LibraryInfo" %>
<%@ Register Src="~/Account/LibraryControl/LibraryInfo.ascx" TagPrefix="library" TagName="Information" %>
<%@ Register Src="~/Account/LibraryControl/BookIssuanceForm.ascx" TagPrefix="library" TagName="BookIssuanceForm" %>
<%@ Register Src="~/Account/EmployeeControl/EmployeeFamily.ascx" TagPrefix="employee" TagName="Family" %>
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
                            <ajaxToolkit:TabPanel runat="server" ID="InfoPanel" HeaderText="Library Information">
                                <ContentTemplate>
                                    <library:Information runat="server" id="libraryInfo"></library:Information>
                                </ContentTemplate>
                            </ajaxToolkit:TabPanel>
                            <ajaxToolkit:TabPanel runat="server" ID="bookIssuancePanel" HeaderText="Book Issuance">
                                <ContentTemplate>
                                    <library:BookIssuanceForm runat="server" id="bookIssuance"></library:BookIssuanceForm>
                                </ContentTemplate>
                            </ajaxToolkit:TabPanel>
                            <ajaxToolkit:TabPanel runat="server" ID="familyPanel" HeaderText="Family Detail">
                                <ContentTemplate>
                                    <employee:Family runat="server" id="employeeFamily"></employee:Family>
                                </ContentTemplate>
                            </ajaxToolkit:TabPanel>
                        </ajaxToolkit:TabContainer></td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
