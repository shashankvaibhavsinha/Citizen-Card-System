<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage/AdminPage.master" AutoEventWireup="true" CodeFile="UserInfo.aspx.cs" Inherits="AdminPage_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style16 {
            text-decoration: underline;
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
            top: 250px;
            left: 422px;
            z-index: 1;
            right: 592px;
            width: 176px;
        }
        .auto-style17:hover {background-color: red}

        .auto-style17:active {
            background-color: purple;
            box-shadow: 0 5px #666;
            transform: translateY(4px);
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
            top: 250px;
            left: 214px;
            z-index: 1;
            width: 176px;
        }
        .auto-style18:hover {background-color: red}

        .auto-style18:active {
            background-color: purple;
            box-shadow: 0 5px #666;
            transform: translateY(4px);
    }
        .auto-style19 {
            font-family: "lucida ha";
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
            top: 250px;
            left: 635px;
            z-index: 1;
            right: 379px;
            width: 176px;
        }
        .auto-style20:hover {background-color: red}

        .auto-style20:active {
            background-color: purple;
            box-shadow: 0 5px #666;
            transform: translateY(4px);
    }
        .auto-style21 {
            font-family: "Lucida Handwriting";
            color: #800000;
            font-size: xx-large;
        }
        .auto-style22 {
            color: fuchsia;
        }
        .auto-style23 {
            text-align: center;
        }
        .auto-style24 {
            position: absolute;
            top: 254px;
            left: 908px;
            z-index: 1;
            width: 127px;
            height: 72px;
        }
        .auto-style29 {
            width: 100%;
        }
        .auto-style30 {
            height: 60px;
            font-size:xx-large;
            color: white;
        }
        .auto-style31 {
            height: 60px;
            font-size: xx-large;
            color: white;
            text-align: right;
            width: 571px;
        }
        .auto-style32 {
            font-size: xx-large;
        }
        .auto-style33 {
            height: 60px;
            font-size: xx-large;
            color: white;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel4" runat="server">
        <h1 style="text-align: center; color: #FFFFCC; height: 100px; background-color: #800000">
            <br />
            <span class="auto-style16">Citizen Information</span></h1>
            <asp:Button ID="Button6" runat="server" CssClass="auto-style18" Text="Name" OnClick="Button6_Click" />
            <asp:Button ID="Button7" runat="server" CssClass="auto-style17" Text="City" OnClick="Button7_Click" />
            <span class="auto-style21">Search By:</span><br class="auto-style19" />
            <br />
            <asp:Image ID="Image3" runat="server" CssClass="auto-style24" ImageUrl="~/images/search.jpg" />
            <br />
            <asp:Button ID="Button8" runat="server" CssClass="auto-style20" Text="State" OnClick="Button8_Click" />
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <asp:Panel ID="Panel5" runat="server" CssClass="auto-style22">
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT tbl_CitizenDetail.* FROM tbl_CitizenDetail"></asp:SqlDataSource>
                        <div class="auto-style23">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="CitizenId" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="1190px">
                                <AlternatingRowStyle BackColor="#F7F7F7" />
                                <Columns>
                                    <asp:TemplateField HeaderText="CitizenId" InsertVisible="False" SortExpression="CitizenId">
                                        <EditItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("CitizenId") %>'></asp:Label>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("CitizenId") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                                    <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
                                    <asp:BoundField DataField="EmailId" HeaderText="EmailId" SortExpression="EmailId" />
                                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                                    <asp:TemplateField HeaderText="CitizenImage" SortExpression="CitizenImage">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CitizenImage") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Image ID="Image2" runat="server" Height="106px" ImageUrl='<%# "Handler.ashx?Img_id= "+Eval("CitizenId") %>' Width="116px" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                                <SortedDescendingHeaderStyle BackColor="#3E3277" />
                            </asp:GridView>
                        </div>
                        <br />
                    </asp:Panel>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <asp:MultiView ID="MultiView2" runat="server">
                        <asp:View ID="View5" runat="server">
                            <asp:Panel ID="Panel6" runat="server" BackColor="#000066">
                                <br />
                                <table class="auto-style29">
                                    <tr>
                                        <td class="auto-style31">Enter Name</td>
                                        <td class="auto-style30">
                                            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style32"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" class="auto-style33">
                                            <asp:Button ID="Button9" runat="server" CssClass="auto-style32" OnClick="Button9_Click" Text="Button" />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                            </asp:Panel>
                        </asp:View>
                        <asp:View ID="View6" runat="server">
                            <asp:Panel ID="Panel7" runat="server" CssClass="auto-style22">
                                <br />
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT CitizenId, FirstName, LastName, Age, City, State, PhoneNo, EmailId, CitizenImage FROM tbl_CitizenDetail WHERE (FirstName = @fname)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="TextBox2" Name="fname" PropertyName="Text" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <div class="auto-style23">
                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="CitizenId" DataSourceID="SqlDataSource2" GridLines="Horizontal" Width="1190px">
                                        <AlternatingRowStyle BackColor="#F7F7F7" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="CitizenId" InsertVisible="False" SortExpression="CitizenId">
                                                <EditItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("CitizenId") %>'></asp:Label>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("CitizenId") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                                            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                                            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                                            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                                            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                                            <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
                                            <asp:BoundField DataField="EmailId" HeaderText="EmailId" SortExpression="EmailId" />
                                            <asp:TemplateField SortExpression="CitizenImage">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CitizenImage") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Image ID="Image4" runat="server" Height="140px" ImageUrl='<%# "Handler.ashx?Img_id= "+Eval("CitizenId") %>' Width="131px" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                                    </asp:GridView>
                                </div>
                                <br />
                            </asp:Panel>
                        </asp:View>
                    </asp:MultiView>
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <asp:MultiView ID="MultiView3" runat="server">
                        <asp:View ID="View7" runat="server">
                            <asp:Panel ID="Panel8" runat="server" BackColor="#000066">
                                <br />
                                <table class="auto-style29">
                                    <tr>
                                        <td class="auto-style31">Enter City</td>
                                        <td class="auto-style30">
                                            <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style32"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style33" colspan="2">
                                            <asp:Button ID="Button10" runat="server" CssClass="auto-style32" OnClick="Button10_Click" Text="Button" />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                            </asp:Panel>
                        </asp:View>
                        <asp:View ID="View8" runat="server">
                            <asp:Panel ID="Panel9" runat="server" CssClass="auto-style22">
                                <br />
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT CitizenId, FirstName, LastName, Age, City, State, PhoneNo, EmailId, CitizenImage FROM tbl_CitizenDetail WHERE (City = @city)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="TextBox3" Name="city" PropertyName="Text" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <div class="auto-style23">
                                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="CitizenId" datasourceid="SqlDataSource3" GridLines="Horizontal" Width="1190px">
                                        <AlternatingRowStyle BackColor="#F7F7F7" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="CitizenId" InsertVisible="False" SortExpression="CitizenId">
                                                <EditItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("CitizenId") %>'></asp:Label>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("CitizenId") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                                            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                                            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                                            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                                            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                                            <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
                                            <asp:BoundField DataField="EmailId" HeaderText="EmailId" SortExpression="EmailId" />
                                            <asp:TemplateField SortExpression="CitizenImage" HeaderText="CitizenImage">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CitizenImage") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Image ID="Image5" runat="server" Height="159px" ImageUrl='<%# "Handler.ashx?Img_id= "+Eval("CitizenId") %>' Width="134px" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                                    </asp:GridView>
                                </div>
                                <br />
                            </asp:Panel>
                        </asp:View>
                    </asp:MultiView>
                </asp:View>
                <asp:View ID="View4" runat="server">
                    <asp:MultiView ID="MultiView4" runat="server">
                        <asp:View ID="View9" runat="server">
                            <asp:Panel ID="Panel10" runat="server" BackColor="#000066">
                                <br />
                                <table class="auto-style29">
                                    <tr>
                                        <td class="auto-style31">Enter State</td>
                                        <td class="auto-style30">
                                            <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style32"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style33" colspan="2">
                                            <asp:Button ID="Button11" runat="server" CssClass="auto-style32" OnClick="Button11_Click" Text="Button" />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                            </asp:Panel>
                        </asp:View>
                        <asp:View ID="View10" runat="server">
                            <asp:Panel ID="Panel11" runat="server" CssClass="auto-style22">
                                <br />
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT CitizenId, FirstName, LastName, Age, City, State, PhoneNo, EmailId, CitizenImage FROM tbl_CitizenDetail WHERE (State = @state)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="TextBox4" Name="state" PropertyName="Text" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <div class="auto-style23">
                                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="CitizenId" datasourceid="SqlDataSource4" GridLines="Horizontal" Width="1190px">
                                        <AlternatingRowStyle BackColor="#F7F7F7" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="CitizenId" InsertVisible="False" SortExpression="CitizenId">
                                                <EditItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("CitizenId") %>'></asp:Label>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("CitizenId") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                                            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                                            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                                            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                                            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                                            <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
                                            <asp:BoundField DataField="EmailId" HeaderText="EmailId" SortExpression="EmailId" />
                                            <asp:TemplateField HeaderText="CitizenImage" SortExpression="CitizenImage">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CitizenImage") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Image ID="Image6" runat="server" Height="134px" ImageUrl='<%# "Handler.ashx?Img_id= "+Eval("CitizenId") %>' Width="115px" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                                    </asp:GridView>
                                </div>
                                <br />
                            </asp:Panel>
                        </asp:View>
                    </asp:MultiView>
                </asp:View>
            </asp:MultiView>

    </asp:Panel>
</asp:Content>

