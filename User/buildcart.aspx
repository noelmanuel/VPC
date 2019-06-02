<%@ Page Title="" Language="C#" MasterPageFile="~/User/usermaster.master" AutoEventWireup="true" CodeFile="buildcart.aspx.cs" Inherits="User_buildcart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .sp
        {
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size:18px;
            color:red;
            
        }
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
            width:340px;
            font-size:20px;


        }
        .spa
        {
            font-size:20px;
        }
        .bo
        {
            border:1px solid #efefef;
            
            background-color:#e3e3e3;
            padding-left:120px;
            padding-top:60px;
            padding-bottom:60px;
        }
        ::placeholder 
        { 
            font-size:14px;
            
             
        }
        .bt
        {
            cursor:pointer;
        }
        #main{
  position:absolute;
  width:87%;
  height:440px;

  
}

#d1{
  width:34%;
  height:900px;
  float:right;
  border:1px solid #efefef;
  
  padding-left:10px;
  
}

#d2{
  width:65%;
  height:200px;
  border:1px solid #efefef;
}
#d3{
  width:65%;
  height:500px;
 
  float:left;
}
       
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="section_backgound">
        <h3 style="height:40px; padding-top:10px; margin-left:10%;">YOUR CART</h3>
        <div style=" margin-left:10%; height:1300px;">

            <div id="main">
                <div id="d1">
                    <table>
                        <tr>
                            <td style=" width:60%; font-size:15px;">
                                <asp:Panel ID="Panel1" runat="server">
                                <h4>Item List</h4><br />
                                <span class="sp">MOTHERBOARD</span><br />
                                <asp:Label ID="Label3" runat="server"></asp:Label><br /><br />

                                <span class="sp">RAM</span><br />
                                <asp:Label ID="Label4" runat="server"></asp:Label>,<br />
                                <asp:Label ID="Label5" runat="server"></asp:Label>,<br />
                                <asp:Label ID="Label6" runat="server"></asp:Label>,<br />
                                <asp:Label ID="Label7" runat="server"></asp:Label>,<br /><br />  
                     
                                <span class="sp">GPU</span><br />
                                <asp:Label ID="Label8" runat="server"></asp:Label>,<br />
                                <asp:Label ID="Label9" runat="server"></asp:Label>,<br /><br />
                     
                                <span class="sp">PROCESSOR</span><br />
                                <asp:Label ID="Label10" runat="server"></asp:Label>,<br /><br />

                                <span class="sp">HARD DISK</span><br />
                                <asp:Label ID="Label11" runat="server"></asp:Label>,<br /><br />

                                <span class="sp">SSD</span><br />
                                <asp:Label ID="Label12" runat="server"></asp:Label>,<br /><br />

                                <span class="sp">CPU COOLER</span><br />
                                <asp:Label ID="Label13" runat="server"></asp:Label>,<br /><br />

                                <span class="sp">SOUNDCARD</span><br />
                                <asp:Label ID="Label14" runat="server"></asp:Label>,<br /><br />

                                <span class="sp">NETWORKCARD</span><br />
                                <asp:Label ID="Label15" runat="server"></asp:Label>,<br /><br />

                                <span class="sp">OPTICAL DRIVE</span><br />
                                <asp:Label ID="Label16" runat="server"></asp:Label>,<br /><br />

                                <span class="sp">POWER</span><br />
                                <asp:Label ID="Label17" runat="server"></asp:Label>,<br /><br />

                                <span class="sp">CASE</span><br />
                                <asp:Label ID="Label18" runat="server"></asp:Label>,<br /><br />

                                <span class="sp">CASE FAN</span><br />
                                <asp:Label ID="Label19" runat="server"></asp:Label>,<br /><br />

                                <span class="sp">MONITOR</span><br />
                                    <asp:Label ID="Label20" runat="server"></asp:Label>,<br /><br />

                                    <span class="sp">KEYBOARD</span><br />
                                    <asp:Label ID="Label21" runat="server"></asp:Label>,<br /><br />

                                    <span class="sp">MICE</span><br />
                                    <asp:Label ID="Label22" runat="server"></asp:Label>,<br /><br />

                                    <span class="sp">SPEAKER</span><br />
                                    <asp:Label ID="Label23" runat="server"></asp:Label>,<br /><br />

                                    <span class="sp">OS</span><br />
                                    <asp:Label ID="Label24" runat="server"></asp:Label>,<br /><br />

                                    <span class="sp">UPS</span><br />
                                    <asp:Label ID="Label25" runat="server"></asp:Label>,<br /><br />

                                    <span class="sp">SOFTWARE</span><br />
                                    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                                    <asp:Label ID="Label26" runat="server"></asp:Label>

                                </asp:Panel>
                                </td>
                                
                                    
                            </tr>
                        </table>  
                </div>

                <div id="d2">

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" Width="1046px" OnRowDeleting="GridView1_RowDeleting" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                 <Columns>
                     <asp:TemplateField HeaderText="Build No">
                         <ItemTemplate>
                             <asp:Label ID="Label1" runat="server" Text='<%# Eval("transactionn") %>'></asp:Label>
                         </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" />
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Total Price">
                         <ItemTemplate>
                             <asp:Label ID="Label2" runat="server" Text='<%# Eval("totalp") %>'></asp:Label>
                         </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" />
                     </asp:TemplateField>
                    
                     <asp:TemplateField HeaderText="Item List">
                         <ItemTemplate>
                             <asp:LinkButton ID="LinkButton1" runat="server" BackColor="Red" CommandName="Select" ForeColor="White" CommandArgument="<%# Container.DataItemIndex %>" Height="20px" Width="50px" CausesValidation="False">View</asp:LinkButton>
                         </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" />
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Remove">
                         <ItemTemplate>
                             <asp:LinkButton ID="LinkButton2" runat="server" BackColor="Red" CommandName="Delete" CommandArgument="<%# Container.DataItemIndex %>" ForeColor="White" Height="20px"  Width="50px" CausesValidation="False">X</asp:LinkButton>
                         </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" />
                     </asp:TemplateField>
                 </Columns>
                 <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
                 <HeaderStyle BackColor="#990000" Height="40px" Font-Bold="True" ForeColor="White" />
                 <PagerStyle ForeColor="#333333" HorizontalAlign="Center" BackColor="#FFCC66" />
                 <RowStyle BackColor="#FFFBD6" Height="30px" ForeColor="#333333" />
                
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                
                 <SortedAscendingCellStyle BackColor="#FDF5AC" />
                 <SortedAscendingHeaderStyle BackColor="#4D0000" />
                 <SortedDescendingCellStyle BackColor="#FCF6C0" />
                 <SortedDescendingHeaderStyle BackColor="#820000" />
             </asp:GridView>
                </div>

                <div id="d3">
                    <table>
                        <tr>
                            <td style="vertical-align:top; padding:20px; border:1px solid #efefef; width:1%;">
                                <span class="spa">Address</span><br />
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="txtadd" placeholder="House No/Flat"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="TextBox1" runat="server" ForeColor="Red" ErrorMessage="Field Required"></asp:RequiredFieldValidator><br /><br />

                                <asp:TextBox ID="TextBox3" runat="server" CssClass="txtadd" placeholder="State"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox3" runat="server" ForeColor="Red" ErrorMessage="Field Required"></asp:RequiredFieldValidator><br /><br />

                                <asp:TextBox ID="TextBox4" runat="server" CssClass="txtadd" placeholder="District"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox4" runat="server" ForeColor="Red" ErrorMessage="Field Required"></asp:RequiredFieldValidator><br /><br />

                                <span class="spa">Phone</span><br />
                                <asp:TextBox ID="TextBox2" CssClass="txtadd" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox2" runat="server" ForeColor="Red" ErrorMessage="Field Required"></asp:RequiredFieldValidator>

                                <h4>PAYMENT METHOD</h4>
                                <asp:Button ID="Button1"  runat="server" Text="Credit Card" ForeColor="White" BorderStyle="None" BackColor="Red" Height="40" Width="150" OnClick="Button1_Click" CssClass="bt" CausesValidation="False" />&nbsp&nbsp&nbsp
                                <asp:Button ID="Button2" runat="server" Text="Debit Card" ForeColor="White" BorderStyle="None" BackColor="Red" Height="40" Width="150" OnClick="Button2_Click" CssClass="bt"  CausesValidation="False" /><br /><br />
                                <asp:Button ID="Button3" runat="server" Text="Cash On Delivery" ForeColor="White" BorderStyle="None" BackColor="Red" Height="40" Width="150" OnClick="Button3_Click" CssClass="bt"  CausesValidation="False" />&nbsp&nbsp&nbsp
                                <asp:Button ID="Button4" runat="server" Text="Gift Card" ForeColor="White" BorderStyle="None" BackColor="Red" Height="40" Width="150" OnClick="Button4_Click"  CssClass="bt" CausesValidation="False" /><br /><br />
                            </td>
                            <td style="vertical-align:top; padding:20px; border:1px solid #efefef; width:5%;">

                                <asp:Panel ID="Panel3" CssClass="bo" runat="server" >
                                <asp:Image ID="Image1" ImageUrl="~/images/visa.jpg" runat="server" Width="350px" />
                                <h4>Credit Card Details</h4>
                                <asp:TextBox ID="TextBox5" CssClass="txtadd" placeholder="Card Number" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox5" runat="server" ForeColor="Red" ErrorMessage="Field Required"></asp:RequiredFieldValidator><br /><br />

                                <asp:TextBox ID="TextBox9" CssClass="txtadd" placeholder="Name" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="TextBox9" runat="server" ForeColor="Red" ErrorMessage="Field Required"></asp:RequiredFieldValidator><br /><br />

                                <span>Expiry</span> &nbsp
                                <asp:DropDownList ID="DropDownList2" runat="server" Height="30" Width="50">
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
                                <asp:DropDownList ID="DropDownList3" runat="server" Height="30" Width="50" ></asp:DropDownList>&nbsp&nbsp
                                <span>CVV</span>&nbsp
                                <asp:TextBox ID="TextBox6" runat="server" Height="25px" Width="50px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="TextBox6" runat="server" ForeColor="Red" ErrorMessage="Field Required"></asp:RequiredFieldValidator><br /><br />

                                <asp:Button ID="Button8" runat="server" Text="Confirm Order" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="250" OnClick="Button8_Click"   />
                            </asp:Panel>

             <asp:Panel ID="Panel4" runat="server" CssClass="bo">
                 <asp:Image ID="Image2" ImageUrl="~/images/visa.jpg" runat="server" />
                 <h4>Debit Card Details</h4>
                 <asp:TextBox ID="TextBox7" CssClass="txtadd" placeholder="Card Number" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="TextBox7" runat="server" ForeColor="Red" ErrorMessage="Field Required"></asp:RequiredFieldValidator><br /><br />

                 <asp:TextBox ID="TextBox10" CssClass="txtadd" placeholder="Name" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="TextBox10" runat="server" ForeColor="Red" ErrorMessage="Field Required"></asp:RequiredFieldValidator><br /><br />

                 <span>Expiry</span> &nbsp
                 <asp:DropDownList ID="DropDownList4" runat="server" Height="30" Width="50">
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
                 <asp:DropDownList ID="DropDownList5" runat="server" Height="30" Width="50" ></asp:DropDownList>&nbsp&nbsp 
                 <span>CVV</span>&nbsp
                 <asp:TextBox ID="TextBox8" runat="server" Height="25px" Width="50px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="TextBox8" runat="server" ForeColor="Red" ErrorMessage="Field Required"></asp:RequiredFieldValidator><br /><br />

                 <asp:Button ID="Button7" runat="server" Text="Confirm Order" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="250" OnClick="Button7_Click"  />
             </asp:Panel>

                         <asp:Panel ID="Panel5" runat="server" CssClass="bo">
                            <h4>CASH ON DELIVERY</h4>
                             
                             <asp:Button ID="Button5" runat="server" CssClass="bt" Text="Confirm Order" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="250"  />
                         </asp:Panel>
                
                         <asp:Panel ID="Panel6" runat="server" CssClass="bo">
                             <h4>Enter Your Gift Card</h4>
                             <asp:TextBox ID="TextBox11" runat="server" CssClass="txtadd" placeholder="Gift card no"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="TextBox11" runat="server" ForeColor="Red" ErrorMessage="Field Required"></asp:RequiredFieldValidator><br /><br />

                             <asp:Button ID="Button6" runat="server" Text="Confirm Order" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="250"  />

                         </asp:Panel>
                            </td>
                        </tr>
                    </table>

             
                        

                 

                </div>
  
            </div>





             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [transactionn], [mb], [totalp] FROM [finalcart]"></asp:SqlDataSource>
             
                </div>
         </div>
</asp:Content>

