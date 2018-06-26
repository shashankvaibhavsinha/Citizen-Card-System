<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage/UserPage.master" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="UserPage_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel4" runat="server" >
        <h1 style="text-align: center; color: #FFFFCC; height: 100px; background-color: #800000">
            <br />
            Welcome to Citizen Card System</h1>
        <asp:Panel ID="Panel5" runat="server" BackImageUrl="~/images/backgroundtile.gif" style="z-index: 1; left: 559px; top: 255px; position: absolute; height: 582px; width: 585px; color: #003366; font-size: large; font-family: 'Kristen ITC'; font-weight: 700">
            The proposed system aims at satisfying the needs of an organization in an effective manner as well as attempting to overcome the shortcomings of an existing system.
            <br />
            <br />
            The proposed system has the following objectives:
            <br />
            <br />
            Providing Adequate Security of Data : In the existing system, since the records are maintained manually in different registers, no provision of security is available in the existing system. So a provision of adequate security is the current requirement, which fulfilled by existing system.
            <br />
            <br />
            Making A User Friendly System : The proposed system aims at providing a user-friendly system with the user doing the least work and the system providing all the related information for updating. The new software provides easy to use windows graphical user interface.
            <br />
            <br />
            Making Data Retrieval Fast : Since the proposed system does not involve record maintenance in different registers, so the procedure of data retrieval becomes much faster as compared to manual procedures of retrieving the required information etc.
        </asp:Panel>
        <asp:Panel ID="Panel6" runat="server" style="z-index: 1; left: 40px; top: 257px; position: absolute; height: 564px; width: 460px">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/images/Blue_Card.jpg" style="z-index: 1; left: -18px; top: -107px; position: absolute; height: 72px" Width="128px" />
            <br />
            <br />
            <br />
            <br />
            <asp:Image ID="Image3" runat="server" Height="193px" ImageUrl="~/images/7.jpg" Width="479px" />
        </asp:Panel>
        <h1>
            <br />
            <br />
            <br />
            <br />
        </h1>
        <h1>&nbsp;</h1>
        <h1>&nbsp;</h1>
        <h1>&nbsp;</h1>
        <h1>
            <br />
        </h1>
        <h1>
            <br />
            <br />
            <br />
            <br />
        </h1>
    </asp:Panel>
</asp:Content>

