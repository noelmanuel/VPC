<%@ Page Title="" Language="C#" MasterPageFile="~/User/usermaster.master" AutoEventWireup="true" CodeFile="softwaregrid.aspx.cs" Inherits="User_product_grid_softwaregrid" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="section_backgound">
        
            <table style="width:100%; height:790px;">

                <tr>

                    <td style="vertical-align:top; padding-left:10%; width:50%; border-right:1px solid #c3c3c3;">
                   <h3>SELECT SOFTWARE</h3>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" Height="194px" Width="670px">
                            <Columns>
                                <asp:TemplateField HeaderText="Select">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="CheckBox1" runat="server" />
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="man" HeaderText="Manufacturer" SortExpression="man">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="pric" HeaderText="Price" SortExpression="pric">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
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


            
            
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [pric] FROM [software]"></asp:SqlDataSource>

   

                        <br /><br />
                        <asp:Label ID="Label1" runat="server"></asp:Label><br /><br />
                        <asp:Button ID="Button1" runat="server" Text="ADD"  ForeColor="White" BackColor="Red" BorderStyle="None" Height="50" Width="100" OnClick="Button1_Click1" /> &nbsp &nbsp
                        <asp:Button ID="Button2" runat="server" Text="Back" ForeColor="White" BackColor="Red" BorderStyle="None" Height="50" Width="100" OnClick="Button1_Click2" />
                    </td>

                   
                </tr>
            </table>

         </div>
</asp:Content>








