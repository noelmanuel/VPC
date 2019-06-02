<%@ Page Title="" Language="C#" MasterPageFile="~/User/usermaster.master" AutoEventWireup="true" CodeFile="listsoftware.aspx.cs" Inherits="User_product_grid_listsoftware" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .gridd
        {
            margin-left:10%;
        }
        .auto-style1 {
            margin-left: 10%;
            text-align: center;
        }
        .sp
        {
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size:20px;
            color:#f92f42;
            
            
            
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="section_backgound">
        
             <div style="height:790px;">
            <table>
            <tr >
                <td style="width:60%; padding-left:3%; vertical-align:top;">
                   <h3>SELECTED SOFTWARE</h3>
                        <div style="height:520px; width:800px; overflow:scroll;">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" OnRowCommand="GridView1_RowCommand" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="713px" OnRowDeleting="GridView1_RowDeleting" Height="206px">
                            <Columns>
                                <asp:TemplateField HeaderText="Software Name">
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("software") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Price">
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("softwareprice") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>

                                 <asp:TemplateField HeaderText="Details">
                                <ItemTemplate>
                                 <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Red" CommandName="Insert" CommandArgument="<%# Container.DataItemIndex %>" >View</asp:LinkButton>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>



                                <asp:TemplateField HeaderText="Delete">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" BackColor="Red" CommandName="Delete" EnableTheming="True" ForeColor="White" Width="50px">X</asp:LinkButton>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
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
                            
                        <br />
                         <asp:Button ID="Button2" runat="server" Text="Back" ForeColor="White" BackColor="Red" BorderStyle="None" Height="50" Width="100" OnClick="Button1_Click2" />
                            </div>
                        </td>

                         <td style="padding-left:5%; vertical-align:top; width:40%;">
                        <asp:Panel ID="Panel1" runat="server">

                        <h3 style="padding-top:20px;">SOFTWARE DETAILS</h3>

                        <span class="sp">Type</span><br />
                        <asp:Label ID="Label11" runat="server" ></asp:Label><br /><br />

                        <span class="sp">Media Type</span><br />
                        <asp:Label ID="Label12" runat="server" ></asp:Label><br /><br />

                        <span class="sp">Supported Operating Systems</span><br />
                         <asp:Label ID="Label13" runat="server" Width="250px" ></asp:Label><br /><br />

                        <span class="sp">Features</span><br />
                        <asp:Label ID="Label14" runat="server" Width="200px" ></asp:Label><br /><br />

        

         <h3 style="">COMPACTIBILITY ISSUES/ WARNING</h3>
         <asp:Label ID="Label23" Font-Bold="true" ForeColor="Red" runat="server" Width="300"></asp:Label>
                            
         </asp:Panel> 
      </td>
      </tr>
      </table>
            </div>


                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [software], [softwareprice] FROM [makecart] WHERE ([userr] = @userr)">
                            <SelectParameters>
                                <asp:SessionParameter Name="userr" SessionField="user" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                   
</asp:Content>

