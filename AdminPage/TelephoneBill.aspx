<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage/AdminPage.master" AutoEventWireup="true" CodeFile="TelephoneBill.aspx.cs" Inherits="AdminPage_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style16 {
            margin-left: 108px;
        }
        .auto-style17 {
            text-align: center;
        }
        .auto-style18 {
            width: 557px;
            height: 477px;
            position: absolute;
            top: 268px;
            left: 503px;
            z-index: 1;
            text-align: left;
        }
        .auto-style19 {
            text-decoration: underline;
        }
        .auto-style20 {
            width: 100%;
        }
        .auto-style22 {
            text-align: left;
        }
        .auto-style23 {
            text-align: right;
            width: 269px;
        }
        .auto-style24 {
            font-size: xx-large;
        }
        .auto-style25 {
            text-align: center;
            height: 479px;
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
           margin-left: 199px;
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
            Telephone Bill</h1>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT CitizenId, FirstName, LastName FROM tbl_CitizenDetail"></asp:SqlDataSource>
        <div class="auto-style17">
            <asp:Panel ID="Panel5" runat="server" BackColor="#000099" CssClass="auto-style18" Font-Size="XX-Large" ForeColor="White">
                <div class="auto-style25">
                    <span class="auto-style19">Update Telephone Bill</span><br />
                    <table class="auto-style20">
                        <tr>
                            <td class="auto-style23">Consumer Id</td>
                            <td class="auto-style22">
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style24" Width="250px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23">STD Amount</td>
                            <td class="auto-style22">
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style24" Width="250px" AutoPostBack="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23">ISD Amount</td>
                            <td class="auto-style22">
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style24" Width="250px" AutoPostBack="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23">Local Amount</td>
                            <td class="auto-style22">
                                <asp:TextBox ID="TextBox8" runat="server" AutoPostBack="True" CssClass="auto-style24" OnTextChanged="TextBox8_TextChanged" Width="250px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23">Total Amount</td>
                            <td class="auto-style22">
                                <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style24" Width="250px" AutoPostBack="True" Enabled="False" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23">Consume Date</td>
                            <td class="auto-style22">
                                <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style24" Width="250px" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23">Amount </td>
                            <td class="auto-style22">
                                <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style24" Width="250px" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <asp:Button ID="Button6" runat="server" Text="Update" CssClass="ubutton" OnClick="Button6_Click" />
                    <br />
                </div>
            </asp:Panel>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="auto-style16" DataKeyNames="CitizenId" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="CitizenId" HeaderText="CitizenId" InsertVisible="False" ReadOnly="True" SortExpression="CitizenId" />
                    <asp:TemplateField HeaderText="FirstName" SortExpression="FirstName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Text='<%# Eval("FirstName") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
        </div>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT ConsumerId, CitizenId FROM tbl_TelephoneDetail WHERE (CitizenId = @Cid)">
            <SelectParameters>
                <asp:Parameter Name="Cid" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" UpdateCommand="UPDATE tbl_TelephoneConsumerDtl SET ConsumerId =@coi , STDAmount = @std, ISDAmount = @isd, LocalAmount = @la, TotalAmountConsumed = @ta, ConsumeDate = @cd, AmountPaid = @ap">
            <UpdateParameters>
                <asp:ControlParameter ControlID="TextBox2" Name="coi" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox3" Name="std" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox4" Name="isd" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox8" Name="la" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox5" Name="ta" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox6" Name="cd" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox7" Name="ap" PropertyName="Text" />
            </UpdateParameters>
        </asp:SqlDataSource>
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

