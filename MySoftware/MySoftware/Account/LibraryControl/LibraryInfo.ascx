<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LibraryInfo.ascx.cs" Inherits="MySoftware.Account.LibraryControl.LibraryInfo" %>
<div style="width: 100%; height: 100%;">
    <table style="width: 100%; height: 100%;">
        <tr>
            <td style="width: 25%;">Book Name </td>
            <td style="width: 25%;">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td style="width: 25%;">Book ISBN</td>
            <td style="width: 25%;">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Student Name </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>Current Status</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
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
    <table style="width: 100%; height: 100%;">
        <tr>
            <td style="width: 25%;">Book Name </td>
            <td style="width: 25%;">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td style="width: 25%;">Book ISBN</td>
            <td style="width: 25%;">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Book Type</td>
            <td>
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            </td>
            <td>Author</td>
            <td>
                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Book Condition</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td>Price</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Book Cover</td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
            <td>Book Sr. No</td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox></td>
        </tr>
    </table>
</div>
