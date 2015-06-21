<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FeeInfo.ascx.cs" Inherits="MySoftware.Account.FeeControl.FeeInfo" %>
<style>
    /*AutoComplete flyout */
.autocomplete_completionListElement
{
    margin : 0px!important ;
    background-color : inherit ;
    color : windowtext ;
    border : buttonshadow ;
    border-width : 1px ;
    border-style : solid ;
    cursor : 'default' ;
    overflow : auto ;
    height : 200px ;
    font-family : Tahoma ;
    font-size : small ;
    text-align : left ;
    list-style-type : none ;
    }
/* AutoComplete highlighted item */
.autocomplete_highlightedListItem
   {
    background-color : #ffff99 ;
    color : black ;
    padding : 1px ;
    }

    /* AutoComplete item */
.autocomplete_listItem
    {
    background-color : window ;
    color : windowtext ;
    padding : 1px ;
   }
</style>
<div style="width: 100%; height: 100%;">
    <table style="width: 100%; height: 100%;">
        <tr>
            <td style="width: 25%;">Student Name </td>
            <td style="width: 25%;">
                 <ajaxToolkit:AutoCompleteExtender
                    runat="server"
                    ID="autoComplete1"
                    TargetControlID="txtStudentName"
                    ServiceMethod="GetStudentList"
                    ServicePath="StudentDetail.asmx"
                    MinimumPrefixLength="2"
                    CompletionInterval="1000"
                    EnableCaching="true"
                    CompletionSetCount="20"
                    CompletionListCssClass="autocomplete_completionListElement"
                    CompletionListItemCssClass="autocomplete_listItem"
                    CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                    DelimiterCharacters=";, :">
                 
                </ajaxToolkit:AutoCompleteExtender>
                <asp:TextBox ID="txtStudentName" runat="server"></asp:TextBox>
            </td>
            <td style="width: 25%;">Student Detail</td>
            <td style="width: 25%;">
                <asp:LinkButton ID="aStudentInfo" runat="server" ></asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>Class </td>
            <td>
                <asp:DropDownList ID="ddlClass" runat="server"></asp:DropDownList>
            </td>
            <td>Age</td>
            <td>
                <asp:TextBox ID="txtAge" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Month </td>
            <td>
                <asp:DropDownList ID="ddlMonth" runat="server"></asp:DropDownList>
            </td>
            <td>Year</td>
            <td>
                <asp:DropDownList ID="ddlYear" runat="server"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <asp:Button ID="btnSearch" runat="server" Text="Search" />
                <asp:Button ID="btnBack" runat="server" Text="Back" />
                <asp:Button ID="btnAddNew" runat="server" Text="Add New" />
                <asp:Button ID="btnExport" runat="server" Text="Export" />
                <asp:Button ID="btnImport" runat="server" Text="Import" />
            </td>
        </tr>
        
                

    </table>
</div>
