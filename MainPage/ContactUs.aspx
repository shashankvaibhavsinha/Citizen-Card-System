<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage/MainPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="MainPage_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            width: 676px;
            height: 272px;
            position: absolute;
            top: 146px;
            left: 514px;
            z-index: 1;
            font-family: "MV Boli";
            font-size: larger;
            text-decoration: blink;
            color: #FF0000;
        }
        .auto-style16 {
            position: absolute;
            top: 131px;
            left: 18px;
            z-index: 1;
            width: 466px;
            height: 257px;
        }
    .auto-style17 {
        color: #003399;
    }
    .auto-style18 {
        text-decoration: underline;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:Panel ID="Panel4" runat="server">
        <br />
        <br />
        <br />
        <br />
        <strong>
        <asp:Panel ID="Panel5" runat="server" CssClass="auto-style15">
            &nbsp;&nbsp;&nbsp;<span class="auto-style17"> <span class="auto-style18">Contact Us:</span><br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Shashank Vaibhav Sinha<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ph. (+91)8603693443<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email-id - <a href="mailto:shashankvaibhavsinha@gmail.com">shashankvaibhavsinha@gmail.com</a><br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address - Patia Chowk, Chandrashekharpur,<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bhubaneswar, Odisa</span><br /> 
        </asp:Panel>
        </strong>
        <br />
        <br />
        <br />
        <asp:Image ID="Image2" runat="server" CssClass="auto-style16" ImageUrl="~/images/4.jpg" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
</asp:Panel>
</asp:Content>


