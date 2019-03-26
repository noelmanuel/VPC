<%@ Page Title="" Language="C#" MasterPageFile="~/Company/company.master" AutoEventWireup="true" CodeFile="comaddcddrive.aspx.cs" Inherits="Company_Product_company_comaddcddrive" %>

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
    <h3>CD DRIVE</h3>
         
         <div class="cata_parts3">
             <div class="crow1">
                <span class="sp">Manufacturer</span><br />
                 <asp:TextBox ID="TextBox1" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Model No</span><br />
                 <asp:TextBox ID="TextBox2" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Form Factor</span><br />
                 <asp:TextBox ID="TextBox3" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Interface</span><br />
                 <asp:TextBox ID="TextBox4" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Cache</span><br />
                 <asp:TextBox ID="TextBox5" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">CD-ROM Speed</span><br />
                 <asp:TextBox ID="TextBox6" runat="server" CssClass="tb"></asp:TextBox><br /><br />

             </div>
            

             <div class="crow2">
                <span class="sp">CD-R Speed</span><br />
                 <asp:TextBox ID="TextBox7" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">CD-Rw Speed</span><br />
                 <asp:TextBox ID="TextBox8" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">DVD-ROM Speed</span><br />
                 <asp:TextBox ID="TextBox9" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">DVD+R Speed</span><br />
                 <asp:TextBox ID="TextBox10" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">DVD+R Dual-Layer Speed</span><br />
                 <asp:TextBox ID="TextBox11" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">DVD+RW Speed</span><br />
                 <asp:TextBox ID="TextBox12" runat="server" CssClass="tb"></asp:TextBox><br /><br />
             </div>

             <div class="crow3">
                <span class="sp">DVD-R Speed</span><br />
                 <asp:TextBox ID="TextBox13" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">DVD-R DUAL-LAYER SPEED</span><br />
                 <asp:TextBox ID="TextBox14" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">DVD-RW Speed</span><br />
                 <asp:TextBox ID="TextBox15" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">DVD-RAM Speed</span><br />
                 <asp:TextBox ID="TextBox16" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 
                 
                
                     
             </div>
             </div>
             <div class="crow4">
              <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="mb_sb" OnClick="Button1_Click"/> &nbsp&nbsp&nbsp
                 <asp:Button ID="Button2" runat="server" Text="Clear" CssClass="mb_sb" OnClick="Button2_Click"/>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [cddrive]"></asp:SqlDataSource>
                 </div>
             
         
</asp:Content>

