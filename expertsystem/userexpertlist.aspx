<%@ Page Title="" Language="C#" MasterPageFile="~/expertsystem/expert.master" AutoEventWireup="true" CodeFile="userexpertlist.aspx.cs" Inherits="expertsystem_userexpertlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
    
   
        .item_bx{
            width:240px;
            height:440px;
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
            font-weight:bold;
            
        }
        .auto-style5 {
            width: 127px;
            height: 28px;
            text-align: center;
            font-weight:bold;
        }
        .auto-style6 {
            width: 127px;
            height: 20px;
            text-align: center;
            font-weight:bold;
        }
        .sd{
            margin-left:5px;
        }
        .spa{
            font-weight:bold;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="section_backgound">
        <div style="margin-left:10%;">
        <table>
            <tr>
                

                <td style="width:85%; height:790px; ">
                    <a href="expertpanel.aspx" style="font-weight:bold;">EXPERT HOME</a><br /><br />
                    <a href="#">YOUR SYSTEMS BASED ON EXPERT ADVICE</a>
                    <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="4" Height="600px" Width="749px" OnItemCommand="DataList1_ItemCommand">
                    <ItemTemplate>
                        
                        <table class="item_bx">
                            <tr>
                                <td class="auto-style3">
                                    <asp:Image ID="Image1" runat="server" Height="250" Width="320" ImageUrl='<%# Eval("images1") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    BUDGET: <asp:Label ID="Label1" ForeColor="red" runat="server" Text='<%# Eval("budget") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">
                                    TYPE: <asp:Label ID="Label2" ForeColor="red" runat="server" Text='<%# Eval("type") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">
                                    COST: ₹<asp:Label ID="Label3" ForeColor="red" runat="server" Text='<%# Eval("totalprice") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">
                                    <asp:Button ID="Button5" runat="server" Text="View Details" Width="300" ForeColor="White" BackColor="Red" BorderStyle="None" Height="30" CommandArgument='<%# Eval("Id") %>' CommandName="viewdetail" />
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
                   

                </td>
            </tr>
        </table>
     
                

            </div>
        </div>

      
</asp:Content>





