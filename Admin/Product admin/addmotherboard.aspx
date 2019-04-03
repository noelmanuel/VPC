<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="addmotherboard.aspx.cs" Inherits="Admin_Product_admin_addmotherboard" %>

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
                
         <h3 style="padding-top:17px; margin-left:10%;">MOTHERBOARD</h3>
         
         <div class="cata_parts2">
             <div class="row1">
                <span class="sp">Manufacturer</span><br />
                 <asp:TextBox ID="TextBox1" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Model No</span><br />
                 <asp:TextBox ID="TextBox2" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Color</span><br />
                 <asp:TextBox ID="TextBox3" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Form Factor</span><br />
                 <asp:TextBox ID="TextBox4" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">CPU Socket</span><br />
                 <asp:TextBox ID="TextBox5" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Chipset</span><br />
                 <asp:TextBox ID="TextBox6" runat="server" CssClass="tb"></asp:TextBox><br /><br />

             </div>
            

             <div class="row2">
                <span class="sp">Memory Slot</span><br />
                 <asp:TextBox ID="TextBox7" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Memory Type</span><br />
                 <asp:TextBox ID="TextBox8" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Maximum Supported Memory</span><br />
                 <asp:TextBox ID="TextBox9" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Raid Support</span><br />
                 <asp:TextBox ID="TextBox10" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Onboard Video</span><br />
                 <asp:TextBox ID="TextBox11" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Crossfire Support</span><br />
                 <asp:TextBox ID="TextBox12" runat="server" CssClass="tb"></asp:TextBox><br /><br />
             </div>

             <div class="row3">
                <span class="sp">SLI Support</span><br />
                 <asp:TextBox ID="TextBox13" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Sata 6 GB/s</span><br />
                 <asp:TextBox ID="TextBox14" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Onboard Ethernet</span><br />
                 <asp:TextBox ID="TextBox15" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Onboard USB 3.0 Header(s)</span><br />
                 <asp:TextBox ID="TextBox16" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Price</span><br />
                 <asp:TextBox ID="TextBox17" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Stock</span><br />
                 <asp:TextBox ID="TextBox18" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Image upload</span><br />
                 <asp:FileUpload ID="mbimg1" runat="server" />
                 <asp:FileUpload ID="mbimg2" runat="server" />
                 <asp:FileUpload ID="mbimg3" runat="server" />



                 
                
                     
             </div>
             </div>
             <div class="row4">
              <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="mb_sb" OnClick="Button1_Click"/> &nbsp&nbsp&nbsp
                 <asp:Button ID="Button2" runat="server" Text="Clear" CssClass="mb_sb" OnClick="Button2_Click"/>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [motherboard]"></asp:SqlDataSource>
                 </div>
             
         </div>
</asp:Content>

