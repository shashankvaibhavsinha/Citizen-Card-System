<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage/UserPage.master" AutoEventWireup="true" CodeFile="UserInfo.aspx.cs" Inherits="UserPage_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .ubutton {
         display: block;
         padding: 15px 30px;
         font-size: 24px;
         cursor: pointer;
         text-align: center;
         text-decoration: none;
         outline: none;
         color: white;
         background-color: #677889;
         border: none;
         border-radius : 50%;
         box-shadow: 0 9px #999;
         float: left;
         font-family: 'Lucida Handwriting';
        }

        .ubutton:hover {background-color: red}

        .ubutton:active {
          background-color: purple;
          box-shadow: 0 5px #666;
          transform: translateY(4px);
        }
        .auto-style15 {
            position: static;
            left: 0;
            top: 0;
            z-index: 0;
        }
        .auto-style18 {
            width: 100%;
        }
        .auto-style19 {
            width: 214px;
            text-align: center;
        }
        .auto-style20 {
            text-align: center;
            text-decoration: underline;
        }
        .auto-style21 {
            z-index: 1;
            left: 27px;
            top: 269px;
            position: absolute;
            height: 377px;
            width: 424px;
        }
        .auto-style22 {
            z-index: 1;
            left: 534px;
            top: 263px;
            position: absolute;
            height: 384px;
            width: 584px;
        }
        .auto-style23 {
            text-decoration: underline;
        }
        .auto-style24 {
            width: 117px;
            height: 145px;
            position: absolute;
            top: 99px;
            left: 1035px;
            z-index: 1;
        }
        </style>
    <asp:Panel ID="Panel4" runat="server">
        <h1 style="text-align: center; color: #FFFFCC; height: 100px; background-color: #800000">
            <br /><span class="auto-style23">Citizen Card System(View Details)</span><asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT CitizenImage, CitizenId FROM tbl_CitizenDetail WHERE (CitizenId = @Cid)">
                <SelectParameters>
                    <asp:SessionParameter Name="Cid" SessionField="Cid" />
                </SelectParameters>
            </asp:SqlDataSource>
        </h1>
        <asp:Panel ID="Panel8" runat="server" BackColor="#003399" BorderColor="#003399" BorderStyle="Double" CssClass="auto-style24">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CitizenId" DataSourceID="SqlDataSource5">
                <Columns>
                    <asp:TemplateField HeaderText="CitizenId" InsertVisible="False" ShowHeader="False" SortExpression="CitizenId" Visible="False">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("CitizenId") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("CitizenId") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle BackColor="#003399" />
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False" SortExpression="CitizenImage" HeaderText="Image">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CitizenImage") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image2" runat="server" Height="118px" ImageUrl='<%# "Handler.ashx?Img_id= "+Eval("CitizenId") %>' Width="113px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </asp:Panel>
        <br />
        <br />
        <asp:Panel ID="Panel6" runat="server" CssClass="auto-style22">
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <asp:Panel ID="Panel7" runat="server" BackColor="#000099" Font-Bold="True" Font-Size="Large" ForeColor="White">
                        <h1 class="auto-style20">Citizen Details</h1>
                        <table class="auto-style18">
                            <tr>
                                <td class="auto-style19">Name</td>
                                <td>
                                    <asp:Label ID="Label1" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style19">Age</td>
                                <td>
                                    <asp:Label ID="Label2" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style19">City</td>
                                <td>
                                    <asp:Label ID="Label3" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style19">State</td>
                                <td>
                                    <asp:Label ID="Label4" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style19">Phone No.</td>
                                <td>
                                    <asp:Label ID="Label5" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style19">Email-id</td>
                                <td>
                                    <asp:Label ID="Label6" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT FirstName, LastName, Age, State, City, PhoneNo, EmailId FROM tbl_CitizenDetail WHERE (CitizenId = @Cid)" OnSelecting="SqlDataSource1_Selecting">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="Cid" SessionField="Cid" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </asp:View>
                <asp:View ID="View2" runat="server">
                <asp:Panel ID="Panel1" runat="server" BackColor="#000099" Font-Bold="True" Font-Size="Large" ForeColor="White">
                        <h1 class="auto-style20">Electricity Details</h1>
                        <table class="auto-style18">
                            <tr>
                                <td class="auto-style19">Meter No.</td>
                                <td>
                                    <asp:Label ID="Label7" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style19">Meter Type</td>
                                <td>
                                    <asp:Label ID="Label8" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style19">Supplier</td>
                                <td>
                                    <asp:Label ID="Label9" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style19">Status</td>
                                <td>
                                    <asp:Label ID="Label10" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style19">Connection Date</td>
                                <td>
                                    <asp:Label ID="Label11" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style19">Total Unit Consumed</td>
                                <td>
                                    <asp:Label ID="Label12" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style19">Amount Paid</td>
                                <td>
                                    <asp:Label ID="Label13" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT tbl_ElectricDetail.MeterNo, tbl_ElectricDetail.MeterType, tbl_ElectricDetail.Supplier, tbl_ElectricDetail.Status, tbl_ElectricDetail.ConnectionDate, tbl_ElectricConsumerDtl.TotalUnit, tbl_ElectricConsumerDtl.AmountPaid, tbl_ElectricDetail.CitizenId FROM tbl_ElectricDetail INNER JOIN tbl_ElectricConsumerDtl ON tbl_ElectricDetail.ConsumerId = tbl_ElectricConsumerDtl.ConsumerId WHERE (tbl_ElectricDetail.CitizenId = @Cid)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="Cid" SessionField="Cid" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <asp:Panel ID="Panel2" runat="server" BackColor="#000099" Font-Bold="True" Font-Size="Large" ForeColor="White">
                        <h1 class="auto-style20">Telephone Details</h1>
                        <table class="auto-style18">
                            <tr>
                                <td class="auto-style19">Telephone No.</td>
                                <td>
                                    <asp:Label ID="Label14" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style19">Company Name</td>
                                <td>
                                    <asp:Label ID="Label15" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style19">Status</td>
                                <td>
                                    <asp:Label ID="Label16" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style19">Connection Date</td>
                                <td>
                                    <asp:Label ID="Label17" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style19">Total Amount Consumed</td>
                                <td>
                                    <asp:Label ID="Label18" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style19">Amount Paid</td>
                                <td>
                                    <asp:Label ID="Label19" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT tbl_TelephoneDetail.TelephoneNo, tbl_TelephoneDetail.CompanyName, tbl_TelephoneDetail.CitizenId, tbl_TelephoneDetail.Status, tbl_TelephoneDetail.ConnectionDate, tbl_TelephoneConsumerDtl.TotalAmountConsumed, tbl_TelephoneConsumerDtl.AmountPaid FROM tbl_TelephoneConsumerDtl INNER JOIN tbl_TelephoneDetail ON tbl_TelephoneConsumerDtl.ConsumerId = tbl_TelephoneDetail.ConsumerId WHERE (tbl_TelephoneDetail.CitizenId = @Cid)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="Cid" SessionField="Cid" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </asp:View>
                <asp:View ID="View4" runat="server">
                    <asp:Panel ID="Panel3" runat="server" BackColor="#000099" Font-Bold="True" Font-Size="Large" ForeColor="White">
                        <h1 class="auto-style20">Gas Details</h1>
                        <table class="auto-style18">
                            <tr>
                                <td class="auto-style19">Gas No.</td>
                                <td>
                                    <asp:Label ID="Label20" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style19">Regulator No.</td>
                                <td>
                                    <asp:Label ID="Label21" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style19">Comapany Name</td>
                                <td>
                                    <asp:Label ID="Label22" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style19">Status</td>
                                <td>
                                    <asp:Label ID="Label23" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style19">Connection Date</td>
                                <td>
                                    <asp:Label ID="Label24" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style19">Refill Date</td>
                                <td>
                                    <asp:Label ID="Label25" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style19">Amount Paid</td>
                                <td>
                                    <asp:Label ID="Label26" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                                <td>
                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT tbl_GasDetail.CitizenId, tbl_GasDetail.GasNo, tbl_GasDetail.RegulatorNo, tbl_GasDetail.Company, tbl_GasDetail.Status, tbl_GasDetail.ConnectionDate, tbl_GasConsumerDtl.RefillDate, tbl_GasConsumerDtl.AmountPaid FROM tbl_GasDetail INNER JOIN tbl_GasConsumerDtl ON tbl_GasDetail.ConsumerId = tbl_GasConsumerDtl.ConsumerId WHERE (tbl_GasDetail.CitizenId = @Cid)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="Cid" SessionField="Cid" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                            </table>
                    </asp:Panel>
                </asp:View>
            </asp:MultiView>
        </asp:Panel>
        <br />
        <br />
        <br />
        <asp:Panel ID="Panel5" runat="server" CssClass="auto-style21">
        
            <span class="auto-style15">
            <asp:Button ID="Button8" runat="server" CssClass="ubutton" style="z-index: 1; left: 12px; top: 177px; position: absolute; color: #000066" Text="Telephone Detail" OnClick="Button8_Click" />
            <asp:Button ID="Button6" runat="server" CssClass="ubutton" style="z-index: 1; left: 9px; top: 12px; position: absolute; color: #000066" Text="User Detail" OnClick="Button6_Click" />
            <asp:Button ID="Button9" runat="server" CssClass="ubutton" style="z-index: 1; left: 199px; top: 263px; position: absolute; color: #000066" Text="Gas Detail" OnClick="Button9_Click" />
            <asp:Button ID="Button7" runat="server" CssClass="ubutton" style="z-index: 1; left: 139px; top: 95px; position: absolute; color: #000066" Text="Electricity Detail" OnClick="Button7_Click" />
            </span>
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
    </asp:Panel>
</asp:Content>

