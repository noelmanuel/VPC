﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Company/company.master" AutoEventWireup="true" CodeFile="comaddgpu.aspx.cs" Inherits="Company_Product_company_comaddgpu" %>

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
            width:200px;
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
      
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>GPU</h3>
         
         <div class="cata_parts3">
             <div class="crow1">
                <span class="sp">Manufacturer</span><br />
                 <asp:TextBox ID="TextBox1" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Model No</span><br />
                 <asp:TextBox ID="TextBox2" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Color</span><br />
                 <asp:TextBox ID="TextBox3" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Interface</span><br />
                 <asp:TextBox ID="TextBox4" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Chipset</span><br />
                 <asp:TextBox ID="TextBox5" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Memory Size</span><br />
                 <asp:TextBox ID="TextBox6" runat="server" CssClass="tb"></asp:TextBox><br /><br />

             </div>
            

             <div class="crow2">
                <span class="sp">Memory Type</span><br />
                 <asp:TextBox ID="TextBox7" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Core Clock</span><br />
                 <asp:TextBox ID="TextBox8" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Boost Clock</span><br />
                 <asp:TextBox ID="TextBox9" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">TDP</span><br />
                 <asp:TextBox ID="TextBox10" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Fan</span><br />
                 <asp:TextBox ID="TextBox11" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">SLI Support</span><br />
                 <asp:TextBox ID="TextBox12" runat="server" CssClass="tb"></asp:TextBox><br /><br />
             </div>

             <div class="crow3">
                <span class="sp">Crossfire Support</span><br />
                 <asp:TextBox ID="TextBox13" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Length</span><br />
                 <asp:TextBox ID="TextBox14" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Support Freesync</span><br />
                 <asp:TextBox ID="TextBox15" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">DVI-D Dual Link</span><br />
                 <asp:TextBox ID="TextBox16" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Displayport</span><br />
                 <asp:TextBox ID="TextBox17" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">HDMI</span><br />
                 <asp:TextBox ID="TextBox18" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 
                
                     
             </div>
             </div>
             <div class="crow4">
              <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="mb_sb" OnClick="Button1_Click"/> &nbsp&nbsp&nbsp
                 <asp:Button ID="Button2" runat="server" Text="Clear" CssClass="mb_sb" OnClick="Button2_Click"/>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [gpu]"></asp:SqlDataSource>
                 </div>
             
</asp:Content>

