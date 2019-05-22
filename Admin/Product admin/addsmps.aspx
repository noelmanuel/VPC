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
         <div style="height:790px;">
    <h3 style="padding-top:17px; margin-left:10%;">SMPS</h3>
         
         <div class="cata_parts2">
             <div class="row1">
                <span class="sp">Manufacturer</span><br />
                 <asp:TextBox ID="TextBox1" runat="server" CssClass="tb"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" ForeColor="Red" runat="server" ErrorMessage="Field Required"></asp:RequiredFieldValidator>
                 <br /><br />
                 <span class="sp">Model No</span><br />
                 <asp:TextBox ID="TextBox2" runat="server" CssClass="tb"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox2" ForeColor="Red" runat="server" ErrorMessage="Field Required"></asp:RequiredFieldValidator>
                 <br /><br />
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
             <div class="row3">
                 <span class="sp">Price</span><br />
                 <asp:TextBox ID="TextBox17" runat="server" CssClass="tb"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox17" ForeColor="Red" runat="server" ErrorMessage="Field Required"></asp:RequiredFieldValidator>
                 <br /><br />
                 <span class="sp">Stock</span><br />
                 <asp:TextBox ID="TextBox18" runat="server" CssClass="tb"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox18" ForeColor="Red" runat="server" ErrorMessage="Field Required"></asp:RequiredFieldValidator>
                 <br /><br />
                 <span class="sp">Image upload</span><br />
                 <asp:FileUpload ID="mbimg1" runat="server" />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="mbimg1" ForeColor="Red" runat="server" ErrorMessage="Field Required"></asp:RequiredFieldValidator>
                 <asp:FileUpload ID="mbimg2" runat="server" />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="mbimg2" ForeColor="Red" runat="server" ErrorMessage="Field Required"></asp:RequiredFieldValidator>
                 <asp:FileUpload ID="mbimg3" runat="server" />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="mbimg3" ForeColor="Red" runat="server" ErrorMessage="Field Required"></asp:RequiredFieldValidator>
                 
             </div>

             
            
             <div class="row5">
              <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="mb_sb" OnClick="Button1_Click"/> &nbsp&nbsp&nbsp
                 <asp:Button ID="Button2" runat="server" Text="Clear" CssClass="mb_sb" OnClick="Button2_Click"/>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [smps]"></asp:SqlDataSource>
                 </div>
             
         </div>
             </div>
</asp:Content>


