﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Company/company.master" AutoEventWireup="true" CodeFile="comaddcase.aspx.cs" Inherits="Company_Product_company_comaddcase" %>

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
    <h3>CASE</h3>
         <div class="section_backgound">
            
         
             <div class="crow1">
                <span class="sp">Manufacturer</span><br />
                 <asp:TextBox ID="TextBox1" runat="server" CssClass="tb"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ForeColor="Red" ErrorMessage="field Required"></asp:RequiredFieldValidator><br /><br />
                 <span class="sp">Model No</span><br />
                 <asp:TextBox ID="TextBox2" runat="server" CssClass="tb"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ForeColor="Red" ErrorMessage="field Required"></asp:RequiredFieldValidator><br /><br />
                 <span class="sp">Part</span><br />
                 <asp:TextBox ID="TextBox3" runat="server" CssClass="tb"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ForeColor="Red" ErrorMessage="field Required"></asp:RequiredFieldValidator><br /><br />
                 <span class="sp">Color</span><br />
                 <asp:TextBox ID="TextBox4" runat="server" CssClass="tb"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ForeColor="Red" ErrorMessage="field Required"></asp:RequiredFieldValidator><br /><br />
                 <span class="sp">Type</span><br />
                 <asp:TextBox ID="TextBox5" runat="server" CssClass="tb"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ForeColor="Red" ErrorMessage="field Required"></asp:RequiredFieldValidator><br /><br />
                 <span class="sp">Include Power Supply</span><br />
                 <asp:TextBox ID="TextBox6" runat="server" CssClass="tb"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ForeColor="Red" ErrorMessage="field Required"></asp:RequiredFieldValidator><br /><br />

             </div>
            

             <div class="crow2">
                 <span class="sp">Internal 2.5 Bays</span><br />
                <asp:TextBox ID="TextBox7" runat="server" CssClass="tb"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ForeColor="Red" ErrorMessage="field Required"></asp:RequiredFieldValidator><br /><br />
                 <span class="sp">Internal 3.5 Bays</span><br />
                 <asp:TextBox ID="TextBox8" runat="server" CssClass="tb"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ForeColor="Red" ErrorMessage="field Required"></asp:RequiredFieldValidator><br /><br />
                 <span class="sp">Motherboard Compatibility</span><br />
                 <asp:TextBox ID="TextBox9" runat="server" CssClass="tb"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox9" ForeColor="Red" ErrorMessage="field Required"></asp:RequiredFieldValidator><br /><br />
                 <span class="sp">Front Panel USB 3.0 Ports</span><br />
                 <asp:TextBox ID="TextBox10" runat="server" CssClass="tb"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox10" ForeColor="Red" ErrorMessage="field Required"></asp:RequiredFieldValidator><br /><br />
                 <span class="sp">Maximum Video Card Length</span><br />
                 <asp:TextBox ID="TextBox11" runat="server" CssClass="tb"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox11" ForeColor="Red" ErrorMessage="field Required"></asp:RequiredFieldValidator><br /><br />
                 <span class="sp">Dimensions</span><br />
                 <asp:TextBox ID="TextBox12" runat="server" CssClass="tb"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox12" ForeColor="Red" ErrorMessage="field Required"></asp:RequiredFieldValidator><br /><br />
               

             </div>

            <div class="crow3">
                 <span class="sp">Price</span><br />
                 <asp:TextBox ID="TextBox17" runat="server" CssClass="tb"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBox17" ForeColor="Red" ErrorMessage="field Required"></asp:RequiredFieldValidator><br /><br />
                 <span class="sp">Stock</span><br />
                 <asp:TextBox ID="TextBox18" runat="server" CssClass="tb"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox18" ForeColor="Red" ErrorMessage="field Required"></asp:RequiredFieldValidator><br /><br />
                 <span class="sp">Image upload</span><br />
                 <asp:FileUpload ID="mbimg1" runat="server" /><asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="mbimg1" ForeColor="Red" ErrorMessage="field Required"></asp:RequiredFieldValidator>
                 <asp:FileUpload ID="mbimg2" runat="server" /><asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="mbimg2" ForeColor="Red" ErrorMessage="field Required"></asp:RequiredFieldValidator>
                 <asp:FileUpload ID="mbimg3" runat="server" /><asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="mbimg3" ForeColor="Red" ErrorMessage="field Required"></asp:RequiredFieldValidator><br /><br />
             </div>

           
             
             <div class="crow5">
              <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="mb_sb" OnClick="Button1_Click"/> &nbsp&nbsp&nbsp
                 <asp:Button ID="Button2" runat="server" Text="Clear" CssClass="mb_sb" OnClick="Button2_Click" CausesValidation="False" />
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [case]"></asp:SqlDataSource>
                 </div>
             
             
             </div>
             
</asp:Content>

