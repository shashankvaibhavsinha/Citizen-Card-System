<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage/UserPage.master" AutoEventWireup="true" CodeFile="UserGasServices.aspx.cs" Inherits="UserPage_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            text-decoration: underline;
        }
        .auto-style16 {
            width: 518px;
            height: 399px;
            position: absolute;
            top: 249px;
            left: 28px;
            z-index: 1;
        }
        .auto-style17 {
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
            top: 33px;
            left: 114px;
            z-index: 1;
        }
        .auto-style18 {
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
            top: 217px;
            left: 57px;
            z-index: 1;
        }
        .auto-style19 {
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
            top: 127px;
            left: 56px;
            z-index: 1;
        }
        .auto-style20 {
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
            top: 308px;
            left: 49px;
            z-index: 1;
        }
        
        .auto-style17:hover {background-color: red}

        .auto-style17:active {
          background-color: purple;
          box-shadow: 0 5px #666;
          transform: translateY(4px);
        }
        
        .auto-style18:hover {background-color: red}

        .auto-style18:active {
          background-color: purple;
          box-shadow: 0 5px #666;
          transform: translateY(4px);
        }
        
        .auto-style19:hover {background-color: red}

        .auto-style19:active {
          background-color: purple;
          box-shadow: 0 5px #666;
          transform: translateY(4px);
        }
        
        .auto-style20:hover {background-color: red}

        .auto-style20:active {
          background-color: purple;
          box-shadow: 0 5px #666;
          transform: translateY(4px);
        }
        .auto-style21 {
            width: 553px;
            height: 397px;
            position: absolute;
            top: 276px;
            left: 561px;
            z-index: 1;
        }
        .auto-style23 {
            color: #CCFFFF;
            background-color: #000099;
        }
        .auto-style24 {
            color: white;
            background-color: #000099;
        }
        .auto-style25 {
            text-align: center;
        }
        .auto-style26 {
            width: 100%;
        }
    .auto-style27 {
        text-align: center;
        text-decoration: underline;
    }
        .auto-style29 {
            width: 264px;
            height: 50px;
            font-size : xx-large;
            text-align : right;
        }
        .auto-style30 {
            height: 50px;
            font-size : xx-large;
            text-align : left;
        }
        .auto-style35 {
            font-size: xx-large;
        }
        .auto-style36 {
            height: 174px;
            font-size : xx-large;
            text-align: center;
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
        margin-left: 225px;
        }

        .ubutton:hover {background-color: orangered}

        .ubutton:active {
          background-color: purple;
          box-shadow: 0 5px #666;
          transform: translateY(4px);
    }
        .auto-style37 {
            width: 100%;
            height: 432px;
        }
        .auto-style41 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            display: inline-block;
            padding: 15px 30px;
            font-size: 24px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            outline: none;
            color: white;
            background-color: orange;
            box-shadow: 0 9px #999;
            float: left;
            font-family: 'Lucida Handwriting';
            border-radius: 50%;
            margin-left: 88px;
        }
        .auto-style41:hover {background-color: orangered}

        .auto-style41:active {
            background-color: purple;
            box-shadow: 0 5px #666;
            transform: translateY(4px);
        }
        .auto-style42:hover {background-color: orangered}

        .auto-style42:active {
            background-color: purple;
            box-shadow: 0 5px #666;
            transform: translateY(4px);
        }
        .auto-style42 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            display: inline-block;
            padding: 15px 30px;
            font-size: 24px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            outline: none;
            color: white;
            background-color: orange;
            box-shadow: 0 9px #999;
            float: left;
            font-family: 'Lucida Handwriting';
            border-radius: 50%;
            margin-left: 0px;
        }
        .auto-style43 {
            height: 181px;
            font-size : xx-large;
            text-align: center;
        }
        .auto-style44 {
            text-decoration: underline;
            color: #FFFFFF;
        }
        .auto-style45 {
            width: 548px;
            height: 310px;
            font-size : xx-large;
            text-align : right;
        }
        .auto-style47 {
            height: 139px;
            width: 235px;
            text-align: right;
        }
        .auto-style46 {
            text-align: center;
            height: 139px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <h1 style="text-align: center; color: #FFFFCC; height: 100px; background-color: #800000" __designer:mapid="b36">
            <br __designer:mapid="b37" />
            <span class="auto-style15">Gas Services</span></h1>
            <br />
        <asp:Panel ID="Panel5" runat="server" CssClass="auto-style21">
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <asp:Image ID="Image2" runat="server" Height="353px" ImageUrl="~/images/gas.jpg" Width="547px" />
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <asp:Panel ID="Panel10" runat="server" CssClass="auto-style23">
                        <h1 class="auto-style25"><span class="auto-style44">Pay Bill</span></h1>
                        <table class="auto-style45">
                            <tr>
                                <td class="auto-style47">Total Amount</td>
                                <td class="auto-style46">
                                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style25" colspan="2">
                                    <asp:Button ID="Button14" runat="server" CssClass="ubutton" OnClick="Button14_Click" Text="Proceed" />
                                    <cc1:ConfirmButtonExtender ID="Button14_ConfirmButtonExtender" runat="server" ConfirmText="Proceed for Payment or not?" Enabled="True" TargetControlID="Button14">
                                    </cc1:ConfirmButtonExtender>
                                </td>
                            </tr>
                        </table>
                        <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" UpdateCommand="UPDATE tbl_GasConsumerDtl SET AmountPaid = 0 WHERE (ConsumerId = @coi)">
                            <UpdateParameters>
                                <asp:ControlParameter ControlID="Label4" Name="coi" PropertyName="Text" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <br />
                    </asp:Panel>
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <asp:Panel ID="Panel7" runat="server" CssClass="auto-style24">
                        <h1 class="auto-style27">Add Connection</h1>
                        <table class="auto-style37">
                            <tr>
                                <td class="auto-style29">Gas Number</td>
                                <td class="auto-style30">
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style35" Width="250px"></asp:TextBox>
                                    <cc1:FilteredTextBoxExtender ID="TextBox1_FilteredTextBoxExtender" runat="server" Enabled="True" FilterType="Numbers" TargetControlID="TextBox1">
                                    </cc1:FilteredTextBoxExtender>
                                    <cc1:TextBoxWatermarkExtender ID="TextBox1_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="TextBox1" WatermarkText="Gas Number">
                                    </cc1:TextBoxWatermarkExtender>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style29">Gas Type</td>
                                <td class="auto-style30">
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style35" Width="250px"></asp:TextBox>
                                    <cc1:FilteredTextBoxExtender ID="TextBox2_FilteredTextBoxExtender" runat="server" Enabled="True" FilterType="UppercaseLetters" TargetControlID="TextBox2">
                                    </cc1:FilteredTextBoxExtender>
                                    <cc1:TextBoxWatermarkExtender ID="TextBox2_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="TextBox2" WatermarkText="Gas Type">
                                    </cc1:TextBoxWatermarkExtender>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style29">Regulator Number</td>
                                <td class="auto-style30">
                                    <asp:TextBox ID="TextBox9" runat="server" CssClass="auto-style35" Width="250px"></asp:TextBox>
                                    <cc1:FilteredTextBoxExtender ID="TextBox9_FilteredTextBoxExtender" runat="server" Enabled="True" FilterType="Numbers" TargetControlID="TextBox9">
                                    </cc1:FilteredTextBoxExtender>
                                    <cc1:TextBoxWatermarkExtender ID="TextBox9_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="TextBox9" WatermarkText="Regulator Number">
                                    </cc1:TextBoxWatermarkExtender>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style29">Company Name</td>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style35" Width="250px"></asp:TextBox>
                                    <cc1:TextBoxWatermarkExtender ID="TextBox3_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="TextBox3" WatermarkText="Company Name">
                                    </cc1:TextBoxWatermarkExtender>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style29">Status</td>
                                <td>
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="auto-style35" Font-Bold="False">
                                        <asp:ListItem>Connected</asp:ListItem>
                                        <asp:ListItem>Diconnected</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style29">Connection Date</td>
                                <td>
                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style35" OnTextChanged="TextBox4_TextChanged" Width="250px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style36" colspan="2">
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO tbl_GasDetail(GasNo, GasType, RegulatorNo, Company, Status, ConnectionDate, CitizenId) VALUES (@gn, @gt, @rn, @c, @s, @cd, @cid)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>">
                                        <InsertParameters>
                                            <asp:ControlParameter ControlID="TextBox1" Name="gn" PropertyName="Text" />
                                            <asp:ControlParameter ControlID="TextBox2" Name="gt" PropertyName="Text" />
                                            <asp:ControlParameter ControlID="TextBox9" Name="rn" PropertyName="Text" />
                                            <asp:ControlParameter ControlID="TextBox3" Name="c" PropertyName="Text" />
                                            <asp:ControlParameter ControlID="RadioButtonList1" Name="s" PropertyName="SelectedValue" />
                                            <asp:ControlParameter ControlID="TextBox4" Name="cd" PropertyName="Text" />
                                            <asp:SessionParameter Name="cid" SessionField="Cid" />
                                        </InsertParameters>
                                    </asp:SqlDataSource>
                                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT ConsumerId, CitizenId FROM tbl_GasDetail WHERE (CitizenId = @cid)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="cid" SessionField="Cid" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO tbl_GasConsumerDtl(ConsumerId, RefillSerialNo, RefillDate, AmountPaid) VALUES (@coi, @rs, @rd, @ap)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>">
                                        <InsertParameters>
                                            <asp:ControlParameter ControlID="Label1" Name="coi" PropertyName="Text" />
                                            <asp:Parameter DefaultValue="0" Name="rs" />
                                            <asp:ControlParameter ControlID="TextBox4" DefaultValue="" Name="rd" PropertyName="Text" />
                                            <asp:Parameter DefaultValue="0" Name="ap" />
                                        </InsertParameters>
                                    </asp:SqlDataSource>
                                    <asp:Button ID="Button10" runat="server" Text="Add" CssClass="ubutton" OnClick="Button10_Click" />
                                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </asp:View>
                <asp:View ID="View4" runat="server">
                    <asp:Panel ID="Panel8" runat="server" CssClass="auto-style24">
                        <h1 class="auto-style27">Edit Connection</h1>
                        <table class="auto-style37">
                            <tr>
                                <td class="auto-style29">Gas Number</td>
                                <td class="auto-style30">
                                    <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style35" Width="250px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style29">Gas Type</td>
                                <td class="auto-style30">
                                    <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style35" Width="250px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style29">Regulator Number</td>
                                <td>
                                    <asp:TextBox ID="TextBox10" runat="server" CssClass="auto-style35" Width="250px"></asp:TextBox>
                                    <cc1:FilteredTextBoxExtender ID="TextBox10_FilteredTextBoxExtender" runat="server" Enabled="True" FilterType="Numbers" TargetControlID="TextBox10">
                                    </cc1:FilteredTextBoxExtender>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style29">Company Name</td>
                                <td>
                                    <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style35" Width="250px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style29">Status</td>
                                <td>
                                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" CssClass="auto-style35">
                                        <asp:ListItem>Connected</asp:ListItem>
                                        <asp:ListItem>Diconnected</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style29">Connection Date</td>
                                <td>
                                    <asp:TextBox ID="TextBox8" runat="server" CssClass="auto-style35" OnTextChanged="TextBox4_TextChanged" Width="250px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style36" colspan="2">
                                    <asp:Button ID="Button11" runat="server" CssClass="ubutton" Text="Edit" OnClick="Button11_Click" />
                                    <cc1:ConfirmButtonExtender ID="Button11_ConfirmButtonExtender" runat="server" ConfirmText="Are you sure? your previous data will be deleted." Enabled="True" TargetControlID="Button11">
                                    </cc1:ConfirmButtonExtender>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT GasNo, GasType, RegulatorNo, Company, Status, ConnectionDate, CitizenId FROM tbl_GasDetail WHERE (CitizenId = @cid)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="cid" SessionField="Cid" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" UpdateCommand="UPDATE tbl_GasDetail SET GasNo = @gn, GasType = @gt, RegulatorNo = @rn, Company = @c, Status = @s, ConnectionDate = @cd WHERE (CitizenId = @cid)">
                                        <UpdateParameters>
                                            <asp:ControlParameter ControlID="TextBox5" Name="gn" PropertyName="Text" />
                                            <asp:ControlParameter ControlID="TextBox6" Name="gt" PropertyName="Text" />
                                            <asp:ControlParameter ControlID="TextBox10" Name="rn" PropertyName="Text" />
                                            <asp:ControlParameter ControlID="TextBox7" Name="c" PropertyName="Text" />
                                            <asp:ControlParameter ControlID="RadioButtonList2" Name="s" PropertyName="SelectedValue" />
                                            <asp:ControlParameter ControlID="TextBox8" Name="cd" PropertyName="Text" />
                                            <asp:SessionParameter Name="cid" SessionField="Cid" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </asp:View>
                <asp:View ID="View5" runat="server">
                    <asp:Panel ID="Panel9" runat="server" CssClass="auto-style24">
                        <h1 class="auto-style25"><span class="auto-style15">Close Connection</span></h1>
                        <table class="auto-style26">
                            <tr>
                                <td class="auto-style43" colspan="2">Are you Sure? Do you want to Close your Gas Connection?</td>
                            </tr>
                            <tr>
                                <td class="auto-style29">
                                    <asp:Button ID="Button12" runat="server" CssClass="auto-style41" Text="Close" Width="161px" OnClick="Button12_Click" />
                                    <cc1:ConfirmButtonExtender ID="Button12_ConfirmButtonExtender" runat="server" ConfirmText="Are you Sure?" Enabled="True" TargetControlID="Button12">
                                    </cc1:ConfirmButtonExtender>
                                </td>
                                <td class="auto-style30">
                                    <asp:Button ID="Button13" runat="server" CssClass="auto-style42" Text="Cancel" OnClick="Button13_Click" />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM tbl_GasDetail WHERE (CitizenId = @cid)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT ConsumerId FROM tbl_GasDetail WHERE (CitizenId = @cid)">
                            <DeleteParameters>
                                <asp:SessionParameter Name="cid" SessionField="Cid" />
                            </DeleteParameters>
                            <SelectParameters>
                                <asp:SessionParameter Name="cid" SessionField="Cid" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM tbl_GasConsumerDtl WHERE (ConsumerId = @coi)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>">
                            <DeleteParameters>
                                <asp:ControlParameter ControlID="Label2" Name="coi" PropertyName="Text" />
                            </DeleteParameters>
                        </asp:SqlDataSource>
                        <br />
                        <br />
                        <br />
                    </asp:Panel>
                </asp:View>
            </asp:MultiView>
        </asp:Panel>
        <br />
        <asp:Panel ID="Panel4" runat="server" CssClass="auto-style16">
            <asp:Button ID="Button6" runat="server" Text="Add Connection" CssClass="auto-style19" OnClick="Button6_Click" />
            <asp:Button ID="Button7" runat="server" Text="Edit Connection" CssClass="auto-style18" OnClick="Button7_Click" />
            <asp:Button ID="Button8" runat="server" Text="Pay Bill" CssClass="auto-style17" OnClick="Button8_Click" />
            <asp:Button ID="Button9" runat="server" Text="Close Connection" CssClass="auto-style20" OnClick="Button9_Click" />
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT CitizenId, ConsumerId FROM tbl_GasDetail WHERE (CitizenId = @Cid)">
            <SelectParameters>
                <asp:SessionParameter Name="Cid" SessionField="Cid" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT ConsumerId, AmountPaid FROM tbl_GasConsumerDtl WHERE (ConsumerId = @coi)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label4" Name="coi" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
        <br />
    </p>
</asp:Content>

