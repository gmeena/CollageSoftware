<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EmployeeFamily.ascx.cs" Inherits="MySoftware.Account.Employee.EmployeeFamily" %>
<div style="width: 100%; height: 100%;">
    <table style="width: 100%; height: 100%;">
        <tr>
            <td style="width: 25%;">First Name </td>
            <td style="width: 25%;">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td style="width: 25%;">Middle Name</td>
            <td style="width: 25%;">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
            </td>
            <td>Dob</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Relation </td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList>
            </td>
            <td>Phone</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td colspan="2" align="right">
                <asp:Button ID="Button1" runat="server" Text="Save" />

            </td>
            <td colspan="2" aligh="left">
                <asp:Button ID="Button2" runat="server" Text="Back" />
            </td>
        </tr>
    </table>
</div>

