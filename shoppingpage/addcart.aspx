<%@ Page Title="" Language="C#" MasterPageFile="~/guest.master" AutoEventWireup="true" CodeFile="addcart.aspx.cs" Inherits="shoppingpage_addcart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="section_backgound">
                
         <h3 style="height:40px; padding-top:10px; margin-left:10%;">YOUR CART</h3>
         <div style=" margin-left:10%;">
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="product_model" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="213px" OnRowDeleting="GridView1_RowDeleting" Width="834px">
             <Columns>
                 <asp:TemplateField HeaderText="Product">
                     <ItemTemplate>
                         <asp:Label ID="Label1" runat="server" Text='<%# Eval("category") %>'></asp:Label>
                     </ItemTemplate>
                     <ItemStyle HorizontalAlign="Center" />
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Product Manufacturer">
                     <ItemTemplate>
                         <asp:Label ID="Label2" runat="server" Text='<%# Eval("product_name") %>'></asp:Label>
                     </ItemTemplate>
                     <ItemStyle HorizontalAlign="Center" />
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Product Model">
                     <ItemTemplate>
                         <asp:Label ID="Label3" runat="server" Text='<%# Eval("product_model") %>'></asp:Label>
                     </ItemTemplate>
                     <ItemStyle HorizontalAlign="Center" />
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Quantity">
                     <ItemTemplate>
                         <asp:Label ID="Label4" runat="server" Text='<%# Eval("quantity") %>'></asp:Label>
                     </ItemTemplate>
                     <ItemStyle HorizontalAlign="Center" />
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Item Price">
                     <ItemTemplate>
                         <asp:Label ID="Label5" runat="server" Text='<%# Eval("item_price") %>'></asp:Label>
                     </ItemTemplate>
                     <ItemStyle HorizontalAlign="Center" />
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Total price">
                     <ItemTemplate>
                         <asp:Label ID="Label6" runat="server" Text='<%# Eval("total_price") %>'></asp:Label>
                     </ItemTemplate>
                     <ItemStyle HorizontalAlign="Center" />
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Remove From Cart">
                     <ItemTemplate>
                         <asp:LinkButton ID="LinkButton1" runat="server" BackColor="Red" BorderStyle="None" CommandName="Delete" ForeColor="White" Height="20px" Width="50px">x</asp:LinkButton>
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
         <asp:Label ID="Label7" runat="server" ></asp:Label>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [addcart]"></asp:SqlDataSource>
         </div>
         </div>
</asp:Content>

