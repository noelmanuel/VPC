﻿<%@ Page Title="" Language="C#" MasterPageFile="~/expertsystem/expert.master" AutoEventWireup="true" CodeFile="expertcart.aspx.cs" Inherits="expertsystem_expertcart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
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
            padding:50px;
            background-color:#e3e3e3;
        }
        ::placeholder 
        { 
            font-size:14px;
            
             
        }
        .bt
        {
            cursor:pointer;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="section_backgound">
                
         <h3 style="height:40px; padding-top:10px; margin-left:10%;">YOUR CART</h3>
         <div style=" margin-left:10%; height:780px;">
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="131px" Width="1000px" OnRowDeleting="GridView1_RowDeleting">
                 <Columns>
                     <asp:TemplateField HeaderText="Transaction ID">
                         <ItemTemplate>
                             <asp:Label ID="Label1" runat="server" Text='<%# Eval("transac") %>'></asp:Label>
                         </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" />
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Date">
                         <ItemTemplate>
                             <asp:Label ID="Label2" runat="server" Text='<%# Eval("datee") %>'></asp:Label>
                         </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" />
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Monitor">
                         <ItemTemplate>
                             <asp:Label ID="Label3" runat="server" Text='<%# Eval("monitor") %>'></asp:Label>
                         </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" />
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Motherboard">
                         <ItemTemplate>
                             <asp:Label ID="Label4" runat="server" Text='<%# Eval("motherboard") %>'></asp:Label>
                         </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" />
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Total Amount">
                         <ItemTemplate>
                             <asp:Label ID="Label5" runat="server" Text='<%# Eval("totalprice") %>'></asp:Label>
                         </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" />
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Delete">
                         <ItemTemplate>
                             <asp:LinkButton ID="LinkButton1" runat="server" BackColor="Red" CommandName="Delete" ForeColor="White" Width="50px" CausesValidation="False">X</asp:LinkButton>
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

             <table style="width:60%; ">
                 <tr>
                     <td style="width:35%; border:1px solid #efefef; padding:30px; ">
             <span class="spa">Address</span><br />
             <asp:TextBox ID="TextBox1" runat="server" CssClass="txtadd" placeholder="House No/Flat"></asp:TextBox>&nbsp <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Textbox1" ForeColor="red" ErrorMessage="Field Required"></asp:RequiredFieldValidator><br /><br />
             <asp:TextBox ID="TextBox3" runat="server" CssClass="txtadd" placeholder="State"></asp:TextBox>&nbsp <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Textbox3" ForeColor="red" ErrorMessage="Field Required"></asp:RequiredFieldValidator><br /><br />
             <asp:TextBox ID="TextBox4" runat="server" CssClass="txtadd" placeholder="District"></asp:TextBox>&nbsp <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Textbox4" ForeColor="red" ErrorMessage="Field Required"></asp:RequiredFieldValidator><br /><br />
             <span class="spa">Phone</span><br />
             <asp:TextBox ID="TextBox2" CssClass="txtadd" runat="server"></asp:TextBox>&nbsp <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Textbox2" ForeColor="red" ErrorMessage="Field Required"></asp:RequiredFieldValidator>
             <h4>PAYMENT METHOD</h4>
             <asp:Button ID="Button1"  runat="server" Text="Credit Card" ForeColor="White" BorderStyle="None" BackColor="Red" Height="40" Width="150" OnClick="Button1_Click" CssClass="bt" CausesValidation="False" />&nbsp&nbsp&nbsp
             <asp:Button ID="Button2" runat="server" Text="Debit Card" ForeColor="White" BorderStyle="None" BackColor="Red" Height="40" Width="150" OnClick="Button2_Click" CssClass="bt"  CausesValidation="False" /><br /><br />
             <asp:Button ID="Button3" runat="server" Text="Cash On Delivery" ForeColor="White" BorderStyle="None" BackColor="Red" Height="40" Width="150" OnClick="Button3_Click" CssClass="bt"  CausesValidation="False" />&nbsp&nbsp&nbsp
             <asp:Button ID="Button4" runat="server" Text="Gift Card" ForeColor="White" BorderStyle="None" BackColor="Red" Height="40" Width="150" OnClick="Button4_Click"  CssClass="bt" CausesValidation="False" /><br /><br />
                         </td>
                     <td style="width:25%; border:1px solid #efefef; padding:30px;">

             <asp:Panel ID="Panel1" CssClass="bo" runat="server" >
                 <asp:Image ID="Image1" ImageUrl="~/images/visa.jpg" runat="server" />
                 <h4>Credit Card Details</h4>
                 <asp:TextBox ID="TextBox5" CssClass="txtadd" placeholder="Card Number" runat="server"></asp:TextBox>&nbsp <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Textbox5" ForeColor="red" ErrorMessage="Field Required"></asp:RequiredFieldValidator><br /><br />
                 <asp:TextBox ID="TextBox9" CssClass="txtadd" placeholder="Name" runat="server"></asp:TextBox>&nbsp <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Textbox9" ForeColor="red" ErrorMessage="Field Required"></asp:RequiredFieldValidator><br /><br />
                 <span>Expiry</span> &nbsp
                 <asp:DropDownList ID="DropDownList1" runat="server" Height="30" Width="50">
                     <asp:ListItem Enabled="False" Selected="True">MM</asp:ListItem>
                     <asp:ListItem>01</asp:ListItem>
                     <asp:ListItem>02</asp:ListItem>
                     <asp:ListItem>03</asp:ListItem>
                     <asp:ListItem>04</asp:ListItem>
                     <asp:ListItem>05</asp:ListItem>
                     <asp:ListItem>06</asp:ListItem>
                     <asp:ListItem>07</asp:ListItem>
                     <asp:ListItem>08</asp:ListItem>
                     <asp:ListItem>09</asp:ListItem>
                     <asp:ListItem>10</asp:ListItem>
                     <asp:ListItem>11</asp:ListItem>
                     <asp:ListItem>12</asp:ListItem>
                    
                 </asp:DropDownList>
                 <asp:DropDownList ID="DropDownList2" runat="server" Height="30" Width="50" ></asp:DropDownList>&nbsp&nbsp
                 <span>CVV</span>&nbsp
                 <asp:TextBox ID="TextBox6" runat="server" Height="25px" Width="50px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="TextBox6" runat="server" ForeColor="Red" ErrorMessage="Field Required"></asp:RequiredFieldValidator><br /><br />

                 <asp:Button ID="Button8" runat="server" Text="Confirm Order" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="250" OnClick="Button8_Click"  />
             </asp:Panel>

             <asp:Panel ID="Panel2" runat="server" CssClass="bo">
                 <asp:Image ID="Image2" ImageUrl="~/images/visa.jpg" runat="server" />
                 <h4>Debit Card Details</h4>
                 <asp:TextBox ID="TextBox7" CssClass="txtadd" placeholder="Card Number" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="TextBox7" runat="server" ForeColor="Red" ErrorMessage="Field Required"></asp:RequiredFieldValidator><br /><br />

                 <asp:TextBox ID="TextBox10" CssClass="txtadd" placeholder="Name" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="TextBox10" runat="server" ForeColor="Red" ErrorMessage="Field Required"></asp:RequiredFieldValidator><br /><br />

                 <span>Expiry</span> &nbsp
                 <asp:DropDownList ID="DropDownList3" runat="server" Height="30" Width="50">
                     <asp:ListItem Enabled="False" Selected="True">MM</asp:ListItem>
                     <asp:ListItem>01</asp:ListItem>
                     <asp:ListItem>02</asp:ListItem>
                     <asp:ListItem>03</asp:ListItem>
                     <asp:ListItem>04</asp:ListItem>
                     <asp:ListItem>05</asp:ListItem>
                     <asp:ListItem>06</asp:ListItem>
                     <asp:ListItem>07</asp:ListItem>
                     <asp:ListItem>08</asp:ListItem>
                     <asp:ListItem>09</asp:ListItem>
                     <asp:ListItem>10</asp:ListItem>
                     <asp:ListItem>11</asp:ListItem>
                     <asp:ListItem>12</asp:ListItem>
                 </asp:DropDownList>
                 <asp:DropDownList ID="DropDownList4" runat="server" Height="30" Width="50" ></asp:DropDownList>&nbsp&nbsp 
                 <span>CVV</span>&nbsp
                 <asp:TextBox ID="TextBox8" runat="server" Height="25px" Width="50px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="TextBox8" runat="server" ForeColor="Red" ErrorMessage="Field Required"></asp:RequiredFieldValidator><br /><br />

                 <asp:Button ID="Button7" runat="server" Text="Confirm Order" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="250" OnClick="Button7_Click"  />
             </asp:Panel>

                         <asp:Panel ID="Panel3" runat="server" CssClass="bo">
                            <h4>CASH ON DELIVERY</h4>
           
                             <asp:Button ID="Button5" runat="server" CssClass="bt" Text="Confirm Order" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="250" OnClick="Button5_Click"  />
                         </asp:Panel>
                
                         <asp:Panel ID="Panel4" runat="server" CssClass="bo">
                             <h4>Enter Your Gift Card</h4>
                             <asp:TextBox ID="TextBox11" runat="server" CssClass="txtadd" placeholder="Gift card no"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="TextBox11" runat="server" ForeColor="Red" ErrorMessage="Field Required"></asp:RequiredFieldValidator><br /><br />

                             <asp:Button ID="Button6" runat="server" Text="Confirm Order" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="250" OnClick="Button6_Click"  />

                         </asp:Panel>
                    </td> 
                     </tr>
                     </table>               

             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [expertcart]"></asp:SqlDataSource>
             </div>
        </div>
</asp:Content>

