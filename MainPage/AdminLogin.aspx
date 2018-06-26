<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage/MainPage.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="MainPage_AdminLogin" %>

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
            font-size: xx-small;
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
            top: 55px;
            left: 171px;
            z-index: 1;
            font-size: large;
        }
        .auto-style19 {
            position: absolute;
            top: 13px;
            left: 171px;
            z-index: 1;
            color: #660066;
            font-size: large;
        }
        .auto-style23 {
            color: #660066;
        }
        .auto-style24 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            display: block;
            font-size: large;
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
            font-size: large;
            cursor: pointer;
            text-align: center;
            outline: none;
            color: white;
            background-color: #555555;
            font-family: 'Lucida Handwriting';
            width: 85px;
            position: absolute;
            top: 114px;
            left: 161px;
            z-index: 1;
            height: 32px;
        }
        .auto-style25:hover {background-color: red}
        .auto-style26 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            display: block;
            font-size: large;
            cursor: pointer;
            text-align: center;
            outline: none;
            color: white;
            background-color: #555555;
            font-family: 'Lucida Handwriting';
            width: 102px;
            height: 33px;
            position: absolute;
            top: 112px;
            left: 291px;
            z-index: 1;
        }
        .auto-style26:hover {background-color: red}
        .auto-style27 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:Panel ID="Panel4" runat="server">
        <h1 class="auto-style12">
            <br />
            <span class="auto-style16"><em>Admin Login</em></span><br /> </h1>
        <asp:Panel ID="Panel5" runat="server" BorderColor="#00CC00" BorderStyle="Double" CssClass="auto-style15">
            <br />
            <span class="auto-style23">&nbsp;&nbsp;&nbsp; <span class="auto-style27">Username&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> </span>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style19"></asp:TextBox>
            <span class="auto-style27">
            <br class="auto-style23" />
            <br class="auto-style23" />
            </span><span class="auto-style23"><span class="auto-style27">&nbsp;&nbsp;Password </span></span><span class="auto-style27">&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style18"></asp:TextBox>
            <asp:Button ID="Button6" runat="server" CssClass="auto-style24" OnClick="Button6_Click" Text="Clear" />
            <asp:Button ID="Button7" runat="server" CssClass="auto-style25" Text="Login" OnClick="Button7_Click1" />
            <asp:Button ID="Button8" runat="server" CssClass="auto-style26" PostBackUrl="~/MainPage/Home.aspx" Text="Cancel" />
        </asp:Panel>
        <asp:Image ID="Image2" runat="server" CssClass="auto-style17" ImageUrl="~/images/6.png" />
        <h1>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT AdminId, Username, Password FROM AdminDetail WHERE (Username = @user ) AND (Password = @pass)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="user" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox2" Name="pass" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <br />
        </h1>
    </asp:Panel>
</asp:Content>


