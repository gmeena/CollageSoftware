<%@ Page Title="" Language="C#" MasterPageFile="~/Account/AdminMaster.Master" AutoEventWireup="true" CodeBehind="FeesInfo.aspx.cs" Inherits="MySoftware.Account.FeesInfo" %>

<%@ Register Src="~/Account/FeeControl/FeeInfo.ascx" TagPrefix="fee" TagName="Information" %>
<%@ Register Src="~/Account/EmployeeControl/EmployeeAddress.ascx" TagPrefix="employee" TagName="Address" %>
<%@ Register Src="~/Account/EmployeeControl/EmployeeFamily.ascx" TagPrefix="employee" TagName="Family" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ajaxToolkit:ToolkitScriptManager ID="sc1" runat="server"></ajaxToolkit:ToolkitScriptManager>
    <script>
        $(function () {
            var availableTags = [
              "ActionScript",
              "AppleScript",
              "Asp",
              "BASIC",
              "C",
              "C++",
              "Clojure",
              "COBOL",
              "ColdFusion",
              "Erlang",
              "Fortran",
              "Groovy",
              "Haskell",
              "Java",
              "JavaScript",
              "Lisp",
              "Perl",
              "PHP",
              "Python",
              "Ruby",
              "Scala",
              "Scheme"
            ];
            $("#tags").autocomplete({
                source: availableTags
            });
        });
    </script>
    <div style="width: 100%; height: 100%;">
        <div style="float: left; width: 20%;">Left Hand Side</div>
        <div style="float: left; width: 80%">
            <table style="width: 100%;">
                <tr>
                    <td style="width: 100%;">
                        <ajaxToolkit:TabContainer ID="Tabs" runat="server"
                            Height="100%" Width="100%" Visible="true" ActiveTabIndex="0">
                            <ajaxToolkit:TabPanel runat="server" ID="feeInfoPanel" HeaderText="Student Fees Information">
                                <ContentTemplate>
                                    <fee:Information runat="server" ID="feeInfo"></fee:Information>
                                </ContentTemplate>
                            </ajaxToolkit:TabPanel>
                            <ajaxToolkit:TabPanel runat="server" ID="addressPanel" HeaderText="Employee Address">
                                <ContentTemplate>
                                    <employee:Address runat="server" ID="employeeAdd"></employee:Address>
                                </ContentTemplate>
                            </ajaxToolkit:TabPanel>
                            <ajaxToolkit:TabPanel runat="server" ID="familyPanel" HeaderText="Family Detail">
                                <ContentTemplate>
                                    <employee:Family runat="server" ID="employeeFamily"></employee:Family>
                                </ContentTemplate>
                            </ajaxToolkit:TabPanel>
                        </ajaxToolkit:TabContainer></td>
                </tr>
            </table>
            <div class="ui-widget">
                <label for="tags">Tags: </label>
                <input id="tags">
            </div>
        </div>
    </div>
</asp:Content>
