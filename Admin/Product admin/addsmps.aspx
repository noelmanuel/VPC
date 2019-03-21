<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="addsmps.aspx.cs" Inherits="Admin_Product_admin_addsmps" %>

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
     <div class="section_backgound">
    <h3 style="padding-top:17px; margin-left:10%;">SMPS</h3>
         
         <div class="cata_parts2">
             <div class="row1">
                <span class="sp">Manufacturer</span><br />
                 <asp:TextBox ID="TextBox1" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Model No</span><br />
                 <asp:TextBox ID="TextBox2" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Part</span><br />
                 <asp:TextBox ID="TextBox3" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Type</span><br />
                 <asp:TextBox ID="TextBox4" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 

             </div>
            

             <div class="row2">
                 <span class="sp">Wattage</span><br />
                 <asp:TextBox ID="TextBox5" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Modular</span><br />
                 <asp:TextBox ID="TextBox6" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                <span class="sp">Efficency Certification</span><br />
                 <asp:TextBox ID="TextBox7" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">PCI-Express 6+2-PIN Connectors</span><br />
                 <asp:TextBox ID="TextBox8" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 
             </div>

             
            
             <div class="row5">
              <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="mb_sb" OnClick="Button1_Click"/> &nbsp&nbsp&nbsp
                 <asp:Button ID="Button2" runat="server" Text="Clear" CssClass="mb_sb" OnClick="Button2_Click"/>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [smps]"></asp:SqlDataSource>
                 </div>
             
         </div>
</asp:Content>

