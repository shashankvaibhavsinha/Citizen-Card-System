<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage/MainPage.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="MainPage_AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            width: 545px;
            height: 633px;
            position: absolute;
            top: 207px;
            left: 533px;
            z-index: 1;
             font-family: 'Lucida Handwriting';
        }
        .auto-style16 {
            color: #800000;
        }
        .auto-style17 {
            position: absolute;
            top: 210px;
            left: 26px;
            z-index: 1;
            width: 467px;
            height: 358px;
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
            top: 585px;
            left: 38px;
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
            top: 585px;
            left: 200px;
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
            top: 585px;
            left: 377px;
            z-index: 1;
        }
        .auto-style26:hover {background-color: red}
        .auto-style37 {
            width: 100%;
        }
        .auto-style38 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:Panel ID="Panel4" runat="server">
        <h1 class="auto-style12">
            <br />
            <span class="auto-style16"><em>Citizen Registration Form</em></span><br /> </h1>
        <asp:Panel ID="Panel5" runat="server" BorderColor="#00CC00" BorderStyle="Double" CssClass="auto-style15">
            <table class="auto-style37">
                <tr>
                    <td class="auto-style38">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style38"><span class="auto-style23">First Name&nbsp;</span></td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12" colspan="2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter First Name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style38"><span class="auto-style23">Last Name</span></td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12" colspan="2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Last Name" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style38"><span class="auto-style23">Age</span></td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12" colspan="2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Age" ForeColor="Red" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style38"><span class="auto-style23">&nbsp;City</span></td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12" colspan="2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter City" ForeColor="Red" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style38"><span class="auto-style23">State</span></td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12" colspan="2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter State" ForeColor="Red" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style38"><span class="auto-style23">Phone Number</span></td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12" colspan="2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter Phone Number" ForeColor="Red" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style38"><span class="auto-style23">Email-id</span></td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" Height="16px" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12" colspan="2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please Enter Email-Id" ForeColor="Red" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style38"><span class="auto-style23">Username</span></td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12" colspan="2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please Enter Username" ForeColor="Red" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style38"><span class="auto-style23">Password</span></td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12" colspan="2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Please Enter Password" ForeColor="Red" ControlToValidate="TextBox9"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style38">&nbsp; <span class="auto-style23">Confirm Password</span></td>
                    <td>
                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12" colspan="2">
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox10" ControlToValidate="TextBox9" ErrorMessage="Incorrect Password" Font-Bold="False" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style38"><span class="auto-style23">Citizen Image</span></td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12" colspan="2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Please Select the required Photo" ForeColor="Red" Display="None" ControlToValidate="FileUpload1"></asp:RequiredFieldValidator>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO tbl_CitizenDetail(FirstName, LastName, Age, City, State, PhoneNo, EmailId, Username, Password, CitizenImage) VALUES (@f, @l, @a, @c, @s, @ph, @e, @u, @p, @i)" SelectCommand="SELECT * FROM [AdminDetail]">
                            <InsertParameters>
                                <asp:ControlParameter ControlID="TextBox1" Name="f" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox2" Name="l" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox3" Name="a" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox4" Name="c" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox5" Name="s" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox6" Name="ph" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox7" Name="e" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox8" Name="u" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox9" Name="p" PropertyName="Text" />
                                <asp:ControlParameter ControlID="FileUpload1" Name="i" PropertyName="FileBytes" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            &nbsp;
            <asp:Button ID="Button6" runat="server" CssClass="auto-style24" OnClick="Button6_Click" Text="Clear" CausesValidation="False" />
            <asp:Button ID="Button7" runat="server" CssClass="auto-style25" Text="Signup" OnClick="Button7_Click" />
            <asp:Button ID="Button8" runat="server" CssClass="auto-style26" PostBackUrl="~/MainPage/Home.aspx" Text="Cancel" CausesValidation="False" />
            &nbsp;</asp:Panel>
        <asp:Image ID="Image2" runat="server" CssClass="auto-style17" ImageUrl="~/images/email.jpg" />
        <h1>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </h1>
        <h1>&nbsp;</h1>
        <h1>&nbsp;</h1>
        <h1>
            <br />
            <br />
        </h1>
        <p>
            &nbsp;</p>
        <h1>&nbsp;</h1>
        <h1>
            <br />
        </h1>
    </asp:Panel>
</asp:Content>


