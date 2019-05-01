<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/usermaster.master" AutoEventWireup="true" CodeFile="caselist.aspx.cs" Inherits="Guest_Product_Page_caselist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
    
   
        .item_bx{
            width:240px;
            height:340px;
            border:1px solid #e2e2e2;
           margin-left:2px;
           margin-bottom:10px;
            
        }
        .sectionbox
        {
            width:100%;
            height:100%;
            margin:0px;
            padding:0px;
        }
        .filter
        {
            height:100%;
            width:190px;
            float:left;
            border:1px solid black;
        }
        .items
        {
            height:100%;
            width:auto;
            float:left;
           
            padding-left:10px;
            padding-top:10px;
        }
        .img_item
        {
            width:100%;
            height:250px;
            border:1px solid black;
        }
        .man
        {
            width:100%;
            height:30px;
            border:1px solid black;
        }
        .auto-style3 {
            width: 127px;
            height: 154px;
            text-align: center;
        }
        .auto-style4 {
            width: 127px;
            height: 22px;
            text-align: center;
        }
        .auto-style5 {
            width: 127px;
            height: 28px;
            text-align: center;
        }
        .auto-style6 {
            width: 127px;
            height: 20px;
            text-align: center;
        }
        .sd{
            margin-left:10px;
        }
        .spa{
            font-weight:bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="section_backgound">
        <table>
            <tr>
                <td style="width:15%; padding:10px; border-left:1px solid #C07C05;">
                   <span class="spa">Price Filter</span><br /><br />
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Min" Height="30" Width="55" BorderColor="#E2E2E2" BorderStyle="Solid"></asp:TextBox> &nbsp-&nbsp
                    <asp:TextBox ID="TextBox2" BorderColor="#E2E2E2" placeholder="Max" BorderStyle="Solid" Height="30" Width="55" runat="server"></asp:TextBox>&nbsp
                    <asp:Button ID="Button6" runat="server" Height="30" Width="50" Text="Go" ForeColor="White" BackColor="#C07C05" BorderStyle="None" OnClick="Button6_Click" /><br /><br /><br /><br />
                    
                    <span class="spa">Brand</span><br /><br />
                    <asp:DropDownList ID="DropDownList1" DataTextField="brand" DataValueField="brand" Height="30" Width="143" BorderColor="#E2E2E2" BorderStyle="Solid" runat="server"></asp:DropDownList>&nbsp
                    <asp:Button ID="Button11" runat="server" Height="30" Width="50" Text="Go" ForeColor="White" BackColor="#C07C05" BorderStyle="None" OnClick="Button11_Click" /><br /><br /><br /><br />

                    <span class="spa">Type</span><br /><br />
                    <asp:DropDownList ID="DropDownList2" DataTextField="typ" DataValueField="typ" Height="30" Width="143" BorderColor="#E2E2E2" BorderStyle="Solid" runat="server"></asp:DropDownList>&nbsp
                    <asp:Button ID="Button16" runat="server" Height="30" Width="50" Text="Go" ForeColor="White" BackColor="#C07C05" BorderStyle="None" OnClick="Button16_Click" /><br /><br /><br /><br />

                     <span class="spa">Dimension</span><br /><br />
                    <asp:DropDownList ID="DropDownList3" DataTextField="dime" DataValueField="dime" Height="30" Width="143" BorderColor="#E2E2E2" BorderStyle="Solid" runat="server"></asp:DropDownList>&nbsp
                    <asp:Button ID="Button17" runat="server" Height="30" Width="50" Text="Go" ForeColor="White" BackColor="#C07C05" BorderStyle="None" OnClick="Button17_Click" /><br /><br /><br /><br />

                </td>

                <td style="width:85%; height:790px; border-left:1px solid #E2E2E2; ">
                    <a href="../Product category.aspx" class="sd">PRODUCT CATEGORY</a>
                    <a href="caselist.aspx" style=""><h3 class="sd">CASE</h3></a>
                    <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="5" Height="600px" Width="749px" OnItemCommand="DataList1_ItemCommand">
                    <ItemTemplate>
                        
                        <table class="item_bx">
                            <tr>
                                <td class="auto-style3">
                                    <asp:Image ID="Image1" runat="server" Height="190" Width="260" ImageUrl='<%# Eval("imageurl") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("man") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("mod") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">
                                    ₹<asp:Label ID="Label3" runat="server" Text='<%# Eval("pric") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">
                                    <asp:Button ID="Button5" runat="server" Text="View Details" Width="250" ForeColor="White" BackColor="Red" BorderStyle="None" Height="30" CommandArgument='<%# Eval("caseid") %>' CommandName="viewdetail" />
                                </td>
                            </tr>
                            
                        </table>
                        
                   </ItemTemplate> 
                </asp:DataList>
            
            
            <asp:Panel ID="Panel1" runat="server">
            <asp:Button ID="Button1" runat="server" Text="<<" CssClass="sd" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="<" OnClick="Button2_Click"/>
            <asp:Button ID="Button3" runat="server" Text=">" OnClick="Button3_Click"/>
            <asp:Button ID="Button4" runat="server" Text=">>" OnClick="Button4_Click" />
                        </asp:Panel><br />
                    <asp:Panel ID="Panel2" runat="server">
            <asp:Button ID="Button7" runat="server" Text="<<" CssClass="sd" OnClick="Button7_Click" />
            <asp:Button ID="Button8" runat="server" Text="<" OnClick="Button8_Click"/>
            <asp:Button ID="Button9" runat="server" Text=">" OnClick="Button9_Click"/>
            <asp:Button ID="Button10" runat="server" Text=">>" OnClick="Button10_Click" />
                        </asp:Panel>
                    <asp:Panel ID="Panel3" runat="server">
            
            <asp:Button ID="Button13" runat="server" Text="<" OnClick="Button13_Click"/>
            <asp:Button ID="Button14" runat="server" Text=">" OnClick="Button14_Click"/>
            
                        </asp:Panel>
                    <asp:Panel ID="Panel4" runat="server">
            
            <asp:Button ID="Button12" runat="server" Text="<" OnClick="Button12_Click"/>
            <asp:Button ID="Button15" runat="server" Text=">" OnClick="Button15_Click"/>
            
                        </asp:Panel>
                    <asp:Panel ID="Panel5" runat="server">
            
            <asp:Button ID="Button18" runat="server" Text="<" OnClick="Button18_Click"/>
            <asp:Button ID="Button19" runat="server" Text=">" OnClick="Button19_Click"/>
            
                        </asp:Panel>

                </td>
            </tr>
        </table>
     
                

            </div>

      
</asp:Content>




