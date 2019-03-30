<%@ Page Title="" Language="C#" MasterPageFile="~/guest.master" AutoEventWireup="true" CodeFile="shoppingpage.aspx.cs" Inherits="shoppingpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    
   
        .item_bx{
            width:240px;
            height:250px;
            border:1px solid #e2e2e2;
            
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
    </style>
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
    <div class="sectionbox">
        <div class="filter">fr</div>

        <div class="items">
            
                <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="3" Height="522px" Width="749px" OnItemCommand="DataList1_ItemCommand">
                    <ItemTemplate>
                        
                        <table class="item_bx">
                            <tr>
                                <td class="auto-style3">
                                    <asp:Image ID="Image1" runat="server" Height="153" Width="200" ImageUrl='<%# Eval("imageurl") %>' />
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
                                    <asp:Button ID="Button5" runat="server" Text="View Details" Width="230" ForeColor="White" BackColor="Red" BorderStyle="None" Height="30" CommandArgument='<%# Eval("mbId") %>' CommandName="viewdetail" />
                                </td>
                            </tr>
                            
                        </table>
                        
                   </ItemTemplate> 
                </asp:DataList>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                        <asp:ListItem Text="select" Value="-1"></asp:ListItem>
                                        <asp:ListItem Text="0 to 5000" Value="0 AND 5000"></asp:ListItem>
                                        <asp:ListItem Text="5000 to 6000" Value="5000 AND 6000"></asp:ListItem>
                                        <asp:ListItem Text="6000 to 9000" Value="6000 AND 9000"></asp:ListItem>
                                        
                                    </asp:DropDownList>
            
            <asp:Button ID="Button1" runat="server" Text="<<" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="<" OnClick="Button2_Click"/>
            <asp:Button ID="Button3" runat="server" Text=">" OnClick="Button3_Click"/>
            <asp:Button ID="Button4" runat="server" Text=">>" OnClick="Button4_Click" />
            </div>

        </div>



    </div>
    </asp:Content>



