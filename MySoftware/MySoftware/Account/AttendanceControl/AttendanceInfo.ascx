<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AttendanceInfo.ascx.cs" Inherits="MySoftware.Account.AttendanceControl.AttendanceInfo" %>
<div style="width: 100%; height: 100%;">
    <table style="width: 100%; height: 100%;">
        <tr>
            <td style="width: 25%;">Class </td>
            <td style="width: 25%;">
                <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
            </td>
            <td style="width: 25%;">Student Name</td>
            <td style="width: 25%;">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 25%;">Month </td>
            <td style="width: 25%;">
                <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
            </td>
            <td style="width: 25%;">Year</td>
            <td style="width: 25%;">
                <asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList>
        </tr>
        <tr>
            <td align="right">
                <asp:Button ID="Button1" runat="server" Text="Search" />
            </td>
            <td aligh="left">
                <asp:Button ID="Button2" runat="server" Text="Back" />
            </td>
            <td aligh="left">
                <asp:Button ID="Button3" runat="server" Text="Export" />
            </td>
            <td aligh="left">
                <asp:Button ID="Button4" runat="server" Text="Import" />
            </td>
        </tr>
    </table>
</div>
