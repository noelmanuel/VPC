<%@ Page Title="" Language="C#" MasterPageFile="~/User/usermaster.master" AutoEventWireup="true" CodeFile="expertorders.aspx.cs" Inherits="User_expertorders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .sp
        {
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size:15px;
            display: inline-block;
            width:220px;
            color:red;
        }
        .lbl
        {
            
           padding-right:5px;
            
            
        }
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="section_backgound">
        
       <div style="height:790px; padding-top:5px; margin-left:12%;"> 
        
             <h3>EXPERT ORDERS</h3><br />
           <asp:DataList ID="DataList1" RepeatColumns="1" runat="server" OnItemDataBound="DataList1_ItemDataBound">
                 <ItemTemplate> 
                        <table style="width:60%; border:1px solid #dedede">
                            <tr>
                               <td style="height:100px;" class="auto-style1">
                                   <span class="sp">Transaction ID</span><br />
                                   <asp:Label ID="Label1" runat="server" Text='<%# Eval("transactionn") %>'></asp:Label>

                               </td>

                                <td style="height:100px;" class="auto-style1">
                                   <span class="sp">Date</span><br />
                                   <asp:Label ID="Label2" runat="server" Text='<%# Eval("datee") %>'></asp:Label>
                               </td>

                                 <td style="height:100px;" class="auto-style1">
                                   <span class="sp">Grand Total</span><br />
                                   <asp:Label ID="Label3" runat="server" Text='<%# Eval("totalprice") %>'></asp:Label>
                               </td>

                                 <td style="height:100px;" class="auto-style1">
                                   <span class="sp">Payment Mode</span><br />
                                   <asp:Label ID="Label4" runat="server" Text='<%# Eval("payment_method") %>'></asp:Label>
                               </td>

                                 <td style="height:100px;" class="auto-style1">
                                   <span class="sp">Status</span><br />
                                   <asp:Label ID="Label5" runat="server" Text='<%# Eval("status") %>'></asp:Label>
                                     
                               </td>
                                
                               
                                <tr >
                                    <td></td>
                                    <td></td>                                    
                                    <td></td>
                                    <td></td>
                                    <td style="text-align:right;">
                                        <asp:Label ID="Label6" CssClass="lbl" runat="server" ForeColor="Maroon" Width="300"></asp:Label>
                                    </td>
                                </tr>
                                </tr>
                                
                            
                            
                        </table>
                        
                   </ItemTemplate> 




           </asp:DataList>
           <br />
           <asp:Panel ID="Panel1" runat="server">
            <asp:Button ID="Button1" runat="server" Text="<<" CssClass="sd" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="<" OnClick="Button2_Click"/>
            <asp:Button ID="Button3" runat="server" Text=">" OnClick="Button3_Click"/>
            <asp:Button ID="Button4" runat="server" Text=">>" OnClick="Button4_Click" />
                        </asp:Panel>
           </div>
         </div>
</asp:Content>



