<%@ Page Title="" Language="C#" MasterPageFile="~/Company/company.master" AutoEventWireup="true" CodeFile="addcomcompacthardware.aspx.cs" Inherits="Company_addcomcompacthardware" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .tb{
            width:300px;
            height:40px;
            border:1px solid #d1d1d1;
            outline:none;
            margin-top:5px;
            font-size:20px;
            background-color:#ededed;
            
            
            
            

        }
        .sp
        {
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size:15px;
            display: inline-block;
            width:220px;
        }
        .mb_sb
        {
            width:150px;
            height:50px;
            background-color:red;
            color:white;
            border-radius:20px;
            outline:none;
            cursor:pointer;
            border:none;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;

        }
        td
        {
            width:25%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="section_backgound">
        
            <h3 style="padding-top:17px;">CPU BUILD</h3>
            <table style="">
                <tr>
                    <td>
            
            
                 <span class="sp">Motherboard</span><br />
                 <asp:TextBox ID="TextBox1" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Motherboard price</span><br />
                 <asp:TextBox ID="TextBox14" runat="server" CssClass="tb"></asp:TextBox><br /><br /><br />

                 <span class="sp">Processor</span><br />
                 <asp:TextBox ID="TextBox2" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Processor price</span><br />
                 <asp:TextBox ID="TextBox15" runat="server" CssClass="tb"></asp:TextBox><br /><br /><br />

                 <span class="sp">RAM</span><br />
                 <asp:TextBox ID="TextBox3" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">RAM price</span><br />
                 <asp:TextBox ID="TextBox16" runat="server" CssClass="tb"></asp:TextBox><br /><br /><br />

                 <span class="sp">GPU</span><br />
                 <asp:TextBox ID="TextBox4" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">GPU price</span><br />
                 <asp:TextBox ID="TextBox17" runat="server" CssClass="tb"></asp:TextBox><br /><br /><br />

                 

             </td>
                 <td>
                 <span class="sp">CPU Cooler</span><br />
                 <asp:TextBox ID="TextBox5" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">CPU Cooler price</span><br />
                 <asp:TextBox ID="TextBox18" runat="server" CssClass="tb"></asp:TextBox><br /><br /><br />

                 <span class="sp">Power Supply</span><br />
                 <asp:TextBox ID="TextBox6" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Power Supply price</span><br />
                 <asp:TextBox ID="TextBox19" runat="server" CssClass="tb"></asp:TextBox><br /><br /><br />
                
                 <span class="sp">Optical Drive</span><br />
                 <asp:TextBox ID="TextBox7" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Optical Drive price</span><br />
                 <asp:TextBox ID="TextBox20" runat="server" CssClass="tb"></asp:TextBox><br /><br /><br />

                 <span class="sp">Sound Cards</span><br />
                 <asp:TextBox ID="TextBox8" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Sound Cards price</span><br />
                 <asp:TextBox ID="TextBox21" runat="server" CssClass="tb"></asp:TextBox><br /><br /><br />
                </td>

                <td>
                 <span class="sp">Wireless Network Adapters</span><br />
                 <asp:TextBox ID="TextBox9" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Wireless Network Adapters price</span><br />
                 <asp:TextBox ID="TextBox22" runat="server" CssClass="tb"></asp:TextBox><br /><br /><br />

                 <span class="sp">Case</span><br />
                 <asp:TextBox ID="TextBox10" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Case price</span><br />
                 <asp:TextBox ID="TextBox23" runat="server" CssClass="tb"></asp:TextBox><br /><br /><br />

                 <span class="sp">Hard Disk</span><br />
                 <asp:TextBox ID="TextBox11" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Hard Disk price</span><br />
                 <asp:TextBox ID="TextBox24" runat="server" CssClass="tb"></asp:TextBox><br /><br /><br />

                 <span class="sp">SSD</span><br />
                 <asp:TextBox ID="TextBox12" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">SSD price</span><br />
                 <asp:TextBox ID="TextBox25" runat="server" CssClass="tb"></asp:TextBox><br /><br /><br />
             
                
                 
                                          
                </td>
                    <td style="vertical-align:top;">
                        <span class="sp">Case Fans</span><br />
                        <asp:TextBox ID="TextBox13" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                        <span class="sp">Case Fans price</span><br />
                        <asp:TextBox ID="TextBox26" runat="server" CssClass="tb"></asp:TextBox><br /><br /><br />
                        <span class="sp">RAM Slot</span><br />
                        <asp:TextBox ID="TextBox27" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                        <span class="sp">GPU No</span><br />
                        <asp:TextBox ID="TextBox28" runat="server" CssClass="tb"></asp:TextBox><br /><br /><br />
                        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="mb_sb" OnClick="Button1_Click"/> &nbsp&nbsp&nbsp
                 <asp:Button ID="Button2" runat="server" Text="Clear" CssClass="mb_sb" OnClick="Button2_Click"/>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [cpubuild]"></asp:SqlDataSource>
                    </td>
                         
            </tr> 
                <tr>
                    <td>
              
          </td>
                         </tr>
                         
       </table>
           
    </div>
</asp:Content>

