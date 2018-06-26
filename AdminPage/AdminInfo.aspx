<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage/AdminPage.master" AutoEventWireup="true" CodeFile="AdminInfo.aspx.cs" Inherits="AdminPage_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style16 {
            width: 599px;
            height: 373px;
            position: absolute;
            top: 264px;
            z-index: 1;
            left: 81px;
        }
        .auto-style17 {
            position: absolute;
            top: 274px;
            left: 718px;
            z-index: 1;
            width: 361px;
            height: 342px;
        }
        .auto-style20 {
            text-align: center;
            text-decoration: underline;
            color: #000066;
        }
        .auto-style21 {
            width: 100%;
            font-size: x-large;
        }
        .auto-style25 {
            color: #000099;
            text-align: center;
            width: 213px;
            height: 64px;
        }
        .auto-style26 {
            color: #000099;
            height: 64px;
        }
        .auto-style29 {
            color: #000099;
            text-align: center;
            width: 213px;
        }
        .auto-style30 {
            width: 591px;
            height: 371px;
            position: absolute;
            top: 283px;
            z-index: 1;
            left: 62px;
        }
        .auto-style31 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel4" runat="server">
        <h1 style="text-align: center; color: #FFFFCC; height: 100px; background-color: #800000">
            <br />
            Admin Information</h1>
        <br />
        <br />
        <br />
        <asp:Panel ID="Panel5" runat="server" BackColor="#00FF99" CssClass="auto-style30">
        <h1 class="auto-style20">Admin Details</h1>
                        

            <table class="auto-style21">
                <tr>
                    <td class="auto-style29">Name</td>
                    <td class="auto-style26">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style29">Address</td>
                    <td class="auto-style26">
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style29">Phone Number</td>
                    <td class="auto-style26">
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">Email Id</td>
                    <td class="auto-style26">
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT AdminId, Name, Address, PhoneNo,  EmailId FROM AdminDetail WHERE (AdminId = @Aid)">
                          <SelectParameters>
                              <asp:SessionParameter Name="Aid" SessionField="Aid" />
                          </SelectParameters>
            </asp:SqlDataSource>
                      <br />  

        </asp:Panel>
        <asp:Image ID="Image2" runat="server" CssClass="auto-style17" ImageUrl="~/images/admin (1).png" />
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

