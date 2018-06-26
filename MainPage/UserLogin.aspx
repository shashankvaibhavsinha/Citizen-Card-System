<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage/MainPage.master" AutoEventWireup="true" CodeFile="UserLogin.aspx.cs" Inherits="MainPage_AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            width: 430px;
            height: 184px;
            position: absolute;
            top: 219px;
            left: 387px;
            z-index: 1;
             font-family: 'Lucida Handwriting';
        }
        .auto-style16 {
            color: #800000;
        }
        .auto-style17 {
            position: absolute;
            top: 210px;
            left: 108px;
            z-index: 1;
            width: 148px;
            height: 165px;
        }
        .auto-style18 {
            position: absolute;
            top: 61px;
            left: 170px;
            z-index: 1;
        }
        .auto-style19 {
            position: absolute;
            top: 20px;
            left: 170px;
            z-index: 1;
            color: #660066;
        }
        .auto-style23 {
            color: #660066;
        }
        .auto-style24 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            display: block;
            font-size: 18px;
            cursor: pointer;
            text-align: center;
            outline: none;
            color: white;
            background-color: #555555;
            font-family: 'Lucida Handwriting';
            width: 79px;
            height: 31px;
            position: absolute;
            top: 116px;
            left: 24px;
            z-index: 1;
        }
        .auto-style24:hover {background-color: red}
        .auto-style25 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            display: block;
            font-size: 18px;
            cursor: pointer;
            text-align: center;
            outline: none;
            color: white;
            background-color: #555555;
            font-family: 'Lucida Handwriting';
            width: 85px;
            height: 31px;
            position: absolute;
            top: 115px;
            left: 144px;
            z-index: 1;
        }
        .auto-style25:hover {background-color: red}
        .auto-style26 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            display: block;
            font-size: 18px;
            cursor: pointer;
            text-align: center;
            outline: none;
            color: white;
            background-color: #555555;
            font-family: 'Lucida Handwriting';
            width: 102px;
            height: 31px;
            position: absolute;
            top: 115px;
            left: 268px;
            z-index: 1;
        }
        .auto-style26:hover {background-color: red}
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:Panel ID="Panel4" runat="server">
        <h1 class="auto-style12">
            <br />
            <span class="auto-style16"><em>Citizen Login</em></span><br /> </h1>
        <asp:Panel ID="Panel5" runat="server" BorderColor="#00CC00" BorderStyle="Double" CssClass="auto-style15">
            <br />
            <span class="auto-style23">&nbsp;&nbsp;&nbsp; Username&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style19"></asp:TextBox>
            <br class="auto-style23" />
            <br class="auto-style23" />
            <span class="auto-style23">&nbsp;&nbsp;&nbsp; Password </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style18"></asp:TextBox>
            <asp:Button ID="Button6" runat="server" CssClass="auto-style24" OnClick="Button6_Click" Text="Clear" />
            <asp:Button ID="Button7" runat="server" CssClass="auto-style25" Text="Login" OnClick="Button7_Click" />
            <asp:Button ID="Button8" runat="server" CssClass="auto-style26" PostBackUrl="~/MainPage/Home.aspx" Text="Cancel" OnClick="Button8_Click" />
        </asp:Panel>
        <asp:Image ID="Image2" runat="server" CssClass="auto-style17" ImageUrl="~/images/6.png" />
        <h1>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT CitizenId, Username, Password FROM tbl_CitizenDetail WHERE (Username = @user ) AND (Password = @pass)">
                <SelectParameters>
                    <asp:Parameter Name="user" />
                    <asp:Parameter Name="pass" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
        </h1>
    </asp:Panel>
</asp:Content>


