<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BookIssuanceForm.ascx.cs" Inherits="MySoftware.Account.LibraryControl.BookIssuanceForm" %>
<div style="width: 100%; height: 100%;">
    <table style="width: 100%; height: 100%;">
        <tr>
            <td style="width: 25%;">Student Name </td>
            <td style="width: 25%;">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td style="width: 25%;">Student Detail</td>
            <td style="width: 25%;">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Issuing Date </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>Book Condition</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Issuing Days </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>Expected Return Date</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Late Return Date</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td>Reason for Late Return</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Late Return Fine</td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
            <td>Reason for Late Return</td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right">
                <asp:Button ID="Button1" runat="server" Text="Search" />
            </td>
            <td aligh="left">
                <asp:Button ID="Button2" runat="server" Text="Back" />
            </td>
            <td aligh="left">
                <asp:Button ID="Button3" runat="server" Text="Add New" />
            </td>
            <td aligh="left">
                <asp:Button ID="Button4" runat="server" Text="Export" />
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Button ID="Button5" runat="server" Text="Import" />
            </td>
            <td aligh="left"></td>
            <td aligh="left"></td>
            <td aligh="left"></td>
        </tr>
    </table>

</div>
