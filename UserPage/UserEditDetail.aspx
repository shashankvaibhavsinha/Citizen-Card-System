<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage/UserPage.master" AutoEventWireup="true" CodeFile="UserEditDetail.aspx.cs" Inherits="UserPage_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style23 {
            text-decoration: underline;
        }
        .auto-style25 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            display: block;
            padding: 15px 30px;
            font-size: 24px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            outline: none;
            color: white;
            background-color: #677889;
            border-radius : 50%;
            box-shadow: 0 9px #999;
            float: left;
            font-family: 'Lucida Handwriting';
            position: absolute;
            top: 327px;
            left: 122px;
            z-index: 1;
        }
        
        .auto-style26 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            display: block;
            padding: 15px 30px;
            font-size: 24px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            outline: none;
            color: white;
            background-color: #677889;
            border-radius : 50%;
            box-shadow: 0 9px #999;
            float: left;
            font-family: 'Lucida Handwriting';
            position: absolute;
            top: 242px;
            left: 82px;
            z-index: 1;
        }
        .auto-style27 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            display: block;
            padding: 15px 30px;
            font-size: 24px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            outline: none;
            color: white;
            background-color: #677889;
            border-radius : 50%;
            box-shadow: 0 9px #999;
            float: left;
            font-family: 'Lucida Handwriting';
            position: absolute;
            top: 153px;
            left: 128px;
            z-index: 1;
        }
        .auto-style28 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            display: block;
            padding: 15px 30px;
            font-size: 24px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            outline: none;
            color: white;
            background-color: #677889;
            border-radius : 50%;
            box-shadow: 0 9px #999;
            float: left;
            font-family: 'Lucida Handwriting';
            position: absolute;
            top: 69px;
            left: 153px;
            z-index: 1;
        }
        .auto-style29 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            display: block;
            padding: 15px 30px;
            font-size: 24px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            outline: none;
            color: white;
            background-color: #677889;
            border-radius : 50%;
            box-shadow: 0 9px #999;
            float: left;
            font-family: 'Lucida Handwriting';
            position: absolute;
            top: -10px;
            left: 136px;
            z-index: 1;
        }
        .auto-style25:hover {background-color: red}

        .auto-style25:active {
            background-color: purple;
            box-shadow: 0 5px #666;
            transform: translateY(4px);
        }
        .auto-style26:hover {background-color: red}

        .auto-style26:active {
            background-color: purple;
            box-shadow: 0 5px #666;
            transform: translateY(4px);
        }
        .auto-style27:hover {background-color: red}
        .auto-style27:active {
            background-color: purple;
            box-shadow: 0 5px #666;
            transform: translateY(4px);
        }
        .auto-style28:hover {background-color: red}

        .auto-style28:active {
            background-color: purple;
            box-shadow: 0 5px #666;
            transform: translateY(4px);
        }
        .auto-style29:hover {background-color: red}

        .auto-style29:active {
            background-color: purple;
            box-shadow: 0 5px #666;
            transform: translateY(4px);
        }
        .auto-style30 {
            width: 636px;
            height: 418px;
            position: absolute;
            top: 247px;
            left: 518px;
            z-index: 1;
        }
        .auto-style32 {
            color: white;
            background-color: #000099;
        }
        .auto-style34 {
            text-align: center;
            text-decoration: underline;
        }
        .auto-style36 {
            width: 100%;
        }
        .auto-style38 {
            text-align: center;
        }
        .auto-style39 {
            text-align: center;
            width: 255px;
            height: 56px;
        }
        .auto-style40 {
            height: 56px;
        }
        .auto-style41 {
            text-align: right;
            width: 255px;
            height: 141px;
        }
        .auto-style42 {
            height: 141px;
        }
        .ubutton {
         display: inline-block;
         padding: 15px 30px;
         font-size: 24px;
         cursor: pointer;
         text-align: center;
         text-decoration: none;
         outline: none;
         color: white;
         background-color:  orange;
         border: none;
         box-shadow: 0 9px #999;
         float: left;
         font-family: 'Lucida Handwriting';
         border-radius: 50%;
        }

        .ubutton:hover {background-color: orangered}

        .ubutton:active {
          background-color: purple;
          box-shadow: 0 5px #666;
          transform: translateY(4px);
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel4" runat="server">
    <h1 style="text-align: center; color: #FFFFCC; height: 100px; background-color: #800000">
        <br />
        <span class="auto-style23">Citizen Card System(Edit Details)</span></h1>
        <asp:Panel ID="Panel6" runat="server" CssClass="auto-style21" style="z-index: 1; width: 483px; height: 414px; position: absolute; top: 266px; left: 22px">
            <asp:Button ID="Button6" runat="server" CssClass="auto-style29" Text="Name" OnClick="Button6_Click1" CausesValidation="False"/>
            <asp:Button ID="Button7" runat="server" CssClass="auto-style28" Text="Age" OnClick="Button7_Click" CausesValidation="False"/>
            <br />
            <br />
            <br />
            <asp:Button ID="Button8" runat="server" CssClass="auto-style27" Text="Address" OnClick="Button8_Click" CausesValidation="False"/>
            <br />
            <asp:Button ID="Button9" runat="server" CssClass="auto-style26" Text="Contact Details" OnClick="Button9_Click" CausesValidation="False"/>
            <br />
            <asp:Button ID="Button10" runat="server" CssClass="auto-style25" Text="Password" OnClick="Button10_Click" CausesValidation="False"/>
            <br />
        </asp:Panel>
        <asp:Panel ID="Panel7" runat="server" CssClass="auto-style30">
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <asp:Image ID="Image2" runat="server" Height="418px" ImageUrl="~/images/man.jpg" Width="502px" />
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <asp:Panel ID="Panel8" runat="server" CssClass="auto-style32">
                        <h1 class="auto-style34">Update Citizen Name</h1>
                        <table class="auto-style36">
                            <tr>
                                <td class="auto-style39">Enter Fisrt Name</td>
                                <td class="auto-style40">
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter First Name"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style39">Enter Last Name</td>
                                <td class="auto-style40">
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Last Name"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style41">
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" UpdateCommand="UPDATE tbl_CitizenDetail SET FirstName = @f, LastName = @l WHERE (CitizenId = @Cid)">
                                        <UpdateParameters>
                                            <asp:ControlParameter ControlID="TextBox1" Name="f" PropertyName="Text" />
                                            <asp:ControlParameter ControlID="TextBox2" Name="l" PropertyName="Text" />
                                            <asp:SessionParameter Name="Cid" SessionField="Cid" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td class="auto-style42">
                                    <asp:Button ID="Button11" runat="server" CssClass="ubutton" Text="Update" OnClick="Button11_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style38" colspan="2">&nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <div>
                        <asp:Panel ID="Panel9" runat="server" CssClass="auto-style32">
                            <h1 class="auto-style34">Update Citizen Age</h1>
                            <table class="auto-style36">
                                <tr>
                                    <td class="auto-style39">Enter you Age</td>
                                    <td class="auto-style40">
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter your Age"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style41">
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" UpdateCommand="UPDATE tbl_CitizenDetail SET Age = @a WHERE (CitizenId = @Cid)">
                                            <UpdateParameters>
                                                <asp:ControlParameter ControlID="TextBox3" Name="a" PropertyName="Text" />
                                                <asp:SessionParameter Name="Cid" SessionField="Cid" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                    <td class="auto-style42">
                                        <asp:Button ID="Button12" runat="server" CssClass="ubutton" Text="Update" OnClick="Button12_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style38" colspan="2">&nbsp;</td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </div>
                </asp:View>
                <asp:View ID="View4" runat="server">
                    <asp:Panel ID="Panel10" runat="server" CssClass="auto-style32">
                        <h1 class="auto-style34">Update Citizen Address</h1>
                        <table class="auto-style36">
                            <tr>
                                <td class="auto-style39">Enter your City</td>
                                <td class="auto-style40">
                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter your City"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style39">Enter your State</td>
                                <td class="auto-style40">
                                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter your State"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style41">
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" UpdateCommand="UPDATE tbl_CitizenDetail SET City = @c, State = @s WHERE (CitizenId = @Cid)">
                                        <UpdateParameters>
                                            <asp:ControlParameter ControlID="TextBox5" Name="c" PropertyName="Text" />
                                            <asp:ControlParameter ControlID="TextBox6" Name="s" PropertyName="Text" />
                                            <asp:SessionParameter Name="Cid" SessionField="Cid" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td class="auto-style42">
                                    <asp:Button ID="Button13" runat="server" CssClass="ubutton" Text="Update" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style38" colspan="2">&nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </asp:View>
                <asp:View ID="View5" runat="server">
                    <asp:Panel ID="Panel11" runat="server" CssClass="auto-style32">
                        <h1 class="auto-style34">Update Citizen Contact Details</h1>
                        <table class="auto-style36">
                            <tr>
                                <td class="auto-style39">Enter your Phone Number</td>
                                <td class="auto-style40">
                                    <asp:TextBox ID="TextBox7" runat="server" Height="22px" Width="131px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7" ErrorMessage="Enter Phone Number"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style39">Enter your Email Id</td>
                                <td class="auto-style40">
                                    <asp:TextBox ID="TextBox8" runat="server" Height="22px" Width="240px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox8" ErrorMessage="Enter Email Id"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style41">
                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" UpdateCommand="UPDATE tbl_CitizenDetail SET PhoneNo = @ph, EmailId = @e WHERE (CitizenId = @Cid)">
                                        <UpdateParameters>
                                            <asp:ControlParameter ControlID="TextBox7" Name="ph" PropertyName="Text" />
                                            <asp:ControlParameter ControlID="TextBox8" Name="e" PropertyName="Text" />
                                            <asp:SessionParameter Name="Cid" SessionField="Cid" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td class="auto-style42">
                                    <asp:Button ID="Button14" runat="server" CssClass="ubutton" Text="Update" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style38" colspan="2">&nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </asp:View>
                <asp:View ID="View6" runat="server">
                    <asp:Panel ID="Panel12" runat="server" CssClass="auto-style32">
                        <h1 class="auto-style34">Update Password</h1>
                        <table class="auto-style36">
                            <tr>
                                <td class="auto-style39">Enter Password</td>
                                <td class="auto-style40">
                                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox9" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style39">Confirm Password</td>
                                <td class="auto-style40">
                                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox10" ControlToValidate="TextBox9" ErrorMessage="Password Not Matches"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style41">
                                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" UpdateCommand="UPDATE tbl_CitizenDetail SET Password = @p WHERE (CitizenId = @Cid)">
                                        <UpdateParameters>
                                            <asp:ControlParameter ControlID="TextBox9" Name="p" PropertyName="Text" />
                                            <asp:SessionParameter Name="Cid" SessionField="Cid" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td class="auto-style42">
                                    <asp:Button ID="Button15" runat="server" CssClass="ubutton" Text="Update" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style38" colspan="2">&nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </asp:View>
            </asp:MultiView>
        </asp:Panel>
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
    <br />
        <br />
        <br />
    <br />
    <br />
</asp:Panel>
</asp:Content>

