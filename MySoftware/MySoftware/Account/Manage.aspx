<%@ Page Title="Manage Account" Language="C#" MasterPageFile="~/Account/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="MySoftware.Account.Manage" %>


<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%; height: 100%; border: 1px solid darkgray;">
        <tr>
            <td style="width: 25%;" align="center">
                <a href="StudentInfo.aspx" style="text-decoration: none;">
                    <asp:Image Height="80" Width="80" ID="Image1" ImageUrl="~/Images/student-icon.gif" BorderStyle="None" runat="server" ToolTip="Student Details" />
                    <br />
                    <span>Student Details  </span></a>
            </td>
            <td style="width: 25%;" align="center">
                <a href="TeacherInfo.aspx" style="text-decoration: none;">
                    <asp:Image Height="80" Width="80" ID="Image2" ImageUrl="~/Images/Teacher-icon.png" BorderStyle="None" runat="server" ToolTip="Teacher Details" />
                    <br />
                    <span>Teacher Details  </span></a>
            </td>
            <td style="width: 25%;" align="center">
                <a href="EmployeeInfo.aspx" style="text-decoration: none;">
                    <asp:Image Height="80" Width="80" ID="Image3" ImageUrl="~/Images/Manager.png" BorderStyle="None" runat="server" ToolTip="Employee Details" />
                    <br />
                    <span>Employee Details  </span></a>
            </td>
            <td style="width: 25%;" align="center">
                <a href="AttendanceInfo.aspx" style="text-decoration: none;">
                    <asp:Image Height="80" Width="80" ID="Image4" ImageUrl="~/Images/Attendance_Icon_2.jpg" BorderStyle="None" runat="server" ToolTip="Attendance Details" />
                    <br />
                    <span>Attendance Details  </span></a>
            </td>
        </tr>
        <tr>
            <td style="width: 25%;" align="center">
                <a href="LibraryInfo.aspx" style="text-decoration: none;">
                    <asp:Image Height="80" Width="80" ID="Image5" ImageUrl="~/Images/library.png" BorderStyle="None" runat="server" ToolTip="Library Details" />
                    <br />
                    <span>Library Details  </span></a>
            </td>
            <td style="width: 25%;" align="center">
                <a href="FeesInfo.aspx" style="text-decoration: none;">
                    <asp:Image Height="80" Width="80" ID="Image6" ImageUrl="~/Images/Tuition Infographic.gif" BorderStyle="None" runat="server" ToolTip="Student Fees Details" />
                    <br />
                    <span>Student Fees Details  </span></a>
            </td>
            <td></td>
            <td></td>
        </tr>
    </table>
</asp:Content>
