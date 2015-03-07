<%@ Page Title="Student Information" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentInfo.aspx.cs" Inherits="MySoftware.Account.StudentInfo" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    
    <hgroup class="title">
        <h1><%: Title %>.</h1>
    </hgroup>
    <section id="studentForm">
        <ajaxToolkit:TabContainer ID="Tabs"  runat="server"
            Height="150px" Width="402px" Visible="true">
            <ajaxToolkit:TabPanel runat="server" ID="InfoPanel" HeaderText="Student Information">
                <ContentTemplate>Student Information</ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel runat="server" ID="addressPanel" HeaderText="Student Address">
                <ContentTemplate>Student Address</ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel runat="server" ID="family" HeaderText="Family Detail">
                <ContentTemplate>Family Details</ContentTemplate>
            </ajaxToolkit:TabPanel>
        </ajaxToolkit:TabContainer>
        Hello Guys How are you?
    </section>
</asp:Content>
