<%@ Page Title="" Language="C#" MasterPageFile="~/guest.master" AutoEventWireup="true" CodeFile="addcart.aspx.cs" Inherits="shoppingpage_addcart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .aa
        {
            font-size:24px;

        }
        .txtadd
        {
            outline:none;
            border:1px solid #e7e7e7;
            background-color:white;
            height:40px;
            width:300px;
            font-size:20px;

        }
        .spa
        {
            font-size:20px;
        }
        .bo
        {
            border:1px solid #e3e3e3;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="section_backgound">
                
         <h3 style="height:40px; padding-top:10px; margin-left:10%;">YOUR CART</h3>
         <div style=" margin-left:10%;">
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="product_model" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="4" CellSpacing="2" Height="213px" OnRowDeleting="GridView1_RowDeleting" Width="1091px">
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
             <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" Height="70" />
             <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
             <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
             <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#FFF1D4" />
             <SortedAscendingHeaderStyle BackColor="#B95C30" />
             <SortedDescendingCellStyle BackColor="#F1E5CE" />
             <SortedDescendingHeaderStyle BackColor="#93451F" />
         </asp:GridView>
             <h2>GRAND TOTAL <br />₹ <asp:Label ID="Label7" runat="server" Height="50px" Width="100px" CssClass="aa"></asp:Label></h2>
             <table style="width:50%; ">
                 <tr>
                     <td style="width:35%;">
             <span class="spa">Address</span><br />
             <asp:TextBox ID="TextBox1" runat="server" CssClass="txtadd" placeholder="House No/Flat"></asp:TextBox><br /><br />
             <asp:TextBox ID="TextBox3" runat="server" CssClass="txtadd" placeholder="State"></asp:TextBox><br /><br />
             <asp:TextBox ID="TextBox4" runat="server" CssClass="txtadd" placeholder="District"></asp:TextBox><br /><br />
             <span class="spa">Phone</span><br />
             <asp:TextBox ID="TextBox2" CssClass="txtadd" runat="server"></asp:TextBox>
             <h4>PAYMENT METHOD</h4>
             <asp:Button ID="Button1"  runat="server" Text="Credit Card" ForeColor="White" BorderStyle="None" BackColor="Red" Height="40" Width="150" OnClick="Button1_Click" />
             <asp:Button ID="Button2" runat="server" Text="Debit Card" ForeColor="White" BorderStyle="None" BackColor="Red" Height="40" Width="150" OnClick="Button2_Click" /><br /><br />
             <asp:Button ID="Button3" runat="server" Text="Cash On Delivery" ForeColor="White" BorderStyle="None" BackColor="Red" Height="40" Width="150" />
             <asp:Button ID="Button4" runat="server" Text="Gift Card" ForeColor="White" BorderStyle="None" BackColor="Red" Height="40" Width="150" /><br /><br />
                         </td>
                     <td style="width:25%;">

             <asp:Panel ID="Panel1" CssClass="bo" runat="server">
                 <h4>Credit Card Details</h4>
                 <asp:TextBox ID="TextBox5" CssClass="txtadd" runat="server"></asp:TextBox><br /><br />
                 <span>Expiry</span> &nbsp
                 <asp:DropDownList ID="DropDownList1" runat="server" Height="30" Width="30"></asp:DropDownList>
                 <asp:DropDownList ID="DropDownList2" runat="server" Height="30" Width="30" ></asp:DropDownList>&nbsp&nbsp
                 <span>CVV</span>&nbsp
                 <asp:TextBox ID="TextBox6" runat="server" Height="25px" Width="50px"></asp:TextBox>
             </asp:Panel>

             <asp:Panel ID="Panel2" runat="server" CssClass="bo">
                 <h4>Debit Card Details</h4>
                 <asp:TextBox ID="TextBox7" CssClass="txtadd" runat="server"></asp:TextBox><br /><br />
                 <span>Expiry</span> &nbsp
                 <asp:DropDownList ID="DropDownList3" runat="server" Height="30" Width="30"></asp:DropDownList>
                 <asp:DropDownList ID="DropDownList4" runat="server" Height="30" Width="30" ></asp:DropDownList>&nbsp&nbsp
                 <span>CVV</span>&nbsp
                 <asp:TextBox ID="TextBox8" runat="server" Height="25px" Width="50px"></asp:TextBox>
             </asp:Panel>
                
                    </td> 
                     </tr>
                     </table>               
         
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [addcart]"></asp:SqlDataSource>
         </div>
         </div>
</asp:Content>

