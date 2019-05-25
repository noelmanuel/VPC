<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="addcompacthardware.aspx.cs" Inherits="Admin_addcompacthardware" %>

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
            width:50%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="section_backgound">
        
            <h3 style="padding-top:17px; margin-left:10%;">CPU BUILD</h3>
            <table style="padding-left:10%;">
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
                
                    <td style="vertical-align:top;">

                 <span class="sp">Power Supply</span><br />
                 <asp:TextBox ID="TextBox6" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Power Supply price</span><br />
                 <asp:TextBox ID="TextBox19" runat="server" CssClass="tb"></asp:TextBox><br /><br /><br />                            
                
                 <span class="sp">Case</span><br />
                 <asp:TextBox ID="TextBox10" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Case price</span><br />
                 <asp:TextBox ID="TextBox23" runat="server" CssClass="tb"></asp:TextBox><br /><br /><br />
                       
                        <span class="sp">RAM Slot</span><br />
                        <asp:TextBox ID="TextBox27" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                        <span class="sp">GPU No</span><br />
                        <asp:TextBox ID="TextBox28" runat="server" CssClass="tb"></asp:TextBox><br /><br /><br />
                        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="mb_sb" OnClick="Button1_Click"/> &nbsp&nbsp&nbsp
                 <asp:Button ID="Button2" runat="server" Text="Clear" CssClass="mb_sb" OnClick="Button2_Click"/>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [cpubuild]"></asp:SqlDataSource>
                    </td>
                         
            </tr> 
                
                         
       </table>
           
    </div>
</asp:Content>

