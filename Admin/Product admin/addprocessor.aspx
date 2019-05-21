<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="addprocessor.aspx.cs" Inherits="Admin_Product_admin_addprocessor" %>

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
    <h3 style="padding-top:17px; margin-left:10%;">PROCESSOR</h3>
         
         <div class="cata_parts2">
             <div class="row1">
                <span class="sp">Manufacturer</span><br />
                 <asp:TextBox ID="TextBox1" runat="server" CssClass="tb"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox1" ForeColor="Red" runat="server" ErrorMessage="Field Required"></asp:RequiredFieldValidator>
                 <br /><br />
                 <span class="sp">Model No</span><br />
                 <asp:TextBox ID="TextBox2" runat="server" CssClass="tb"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox2" ForeColor="Red" runat="server" ErrorMessage="Field Required"></asp:RequiredFieldValidator>
                 <br /><br />
                 <span class="sp">Data Width</span><br />
                 <asp:TextBox ID="TextBox3" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Socket</span><br />
                 <asp:TextBox ID="TextBox4" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Operating Frequency</span><br />
                 <asp:TextBox ID="TextBox5" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Turbo Frequency</span><br />
                 <asp:TextBox ID="TextBox6" runat="server" CssClass="tb"></asp:TextBox><br /><br />

             </div>
            

             <div class="row2">
                <span class="sp">Cores</span><br />
                 <asp:TextBox ID="TextBox7" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Maximum Supported Memory</span><br />
                 <asp:TextBox ID="TextBox8" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">L1 Cache</span><br />
                 <asp:TextBox ID="TextBox9" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">L2 Cache</span><br />
                 <asp:TextBox ID="TextBox10" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">L3 Cache</span><br />
                 <asp:TextBox ID="TextBox11" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Lithography</span><br />
                 <asp:TextBox ID="TextBox12" runat="server" CssClass="tb"></asp:TextBox><br /><br />
             </div>

             <div class="row3">
                <span class="sp">Thermal Design Power</span><br />
                 <asp:TextBox ID="TextBox13" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Include CPU Cooler</span><br />
                 <asp:TextBox ID="TextBox14" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Simultaneous Multithreading</span><br />
                 <asp:TextBox ID="TextBox15" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 <span class="sp">Integrated Graphics</span><br />
                 <asp:TextBox ID="TextBox16" runat="server" CssClass="tb"></asp:TextBox><br /><br />
                 
                
                     
             </div>
             <div class="row3">
                 <span class="sp">Price</span><br />
                 <asp:TextBox ID="TextBox17" runat="server" CssClass="tb"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="TextBox17" ForeColor="Red" runat="server" ErrorMessage="Field Required"></asp:RequiredFieldValidator>
                 <br /><br />
                 <span class="sp">Stock</span><br />
                 <asp:TextBox ID="TextBox18" runat="server" CssClass="tb"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="TextBox18" ForeColor="Red" runat="server" ErrorMessage="Field Required"></asp:RequiredFieldValidator>
                 <br /><br />
                 <span class="sp">Image upload</span><br />
                 <asp:FileUpload ID="mbimg1" runat="server" />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="mbimg1" ForeColor="Red" runat="server" ErrorMessage="Field Required"></asp:RequiredFieldValidator>
                 <asp:FileUpload ID="mbimg2" runat="server" />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="mbimg2" ForeColor="Red" runat="server" ErrorMessage="Field Required"></asp:RequiredFieldValidator>
                 <asp:FileUpload ID="mbimg3" runat="server" />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="mbimg3" ForeColor="Red" runat="server" ErrorMessage="Field Required"></asp:RequiredFieldValidator>
             </div>
             </div>
             <div class="row4">
              <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="mb_sb" OnClick="Button1_Click"/> &nbsp&nbsp&nbsp
                 <asp:Button ID="Button2" runat="server" Text="Clear" CssClass="mb_sb" OnClick="Button2_Click"/>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [processor]"></asp:SqlDataSource>
                 </div>
             
         </div>
        </div>
</asp:Content>

