<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="adminhome.aspx.cs" Inherits="Admin_adminhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
    .btn_com{
        width:180px;
        height:50px;
        background-color:red;
        color:white;
        font-size:15px;
        border:none;
        border-radius:20px;
        cursor:pointer;
       margin-left:20px;
       font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
       outline:none;
        
       

    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="section_backgound">
          <div style="height:790px;">      
         <h3 style="padding-top:17px; margin-left:10%;">APPROVAL</h3>
         
         <div class="cata_parts">
             <div class="approval">
             <asp:Button ID="com" CssClass="btn_com" runat="server" Text="Company" OnClick="com_Click" /> 
             <asp:Button ID="user" CssClass="btn_com" runat="server" Text="User" OnClick="user_Click" />
             </div>
             </div>

         <h3 style="padding-top:17px; margin-left:10%;">PRODUCT MANAGEMENT</h3>
         <div class="cata_parts">
             
             <div class="approval">
             <asp:Button ID="Button1" CssClass="btn_com" runat="server" Text="Add" OnClick="proadd_Click" /> 
             <asp:Button ID="Button3" CssClass="btn_com" runat="server" Text="Delete" OnClick="Button3_Click" />
             <asp:Button ID="Button4" CssClass="btn_com" runat="server" Text="View" OnClick="Button4_Click" />

             </div>
             </div>


         <h3 style="padding-top:17px; margin-left:10%;">COMPANY MANAGEMENT</h3>
         <div class="cata_parts">
             
             <div class="approval">
             <asp:Button ID="Button5" CssClass="btn_com" runat="server" Text="Add" OnClick="Button5_Click" /> 
             <asp:Button ID="Button6" CssClass="btn_com" runat="server" Text="Manage Company" OnClick="Button6_Click" />
             <asp:Button ID="Button8" CssClass="btn_com" runat="server" Text="Company Details" OnClick="Button8_Click" />

             </div>
             </div>

         <h3 style="padding-top:17px; margin-left:10%;">USER MANAGEMENT</h3>
         <div class="cata_parts">
             
             <div class="approval">
             <asp:Button ID="Button9" CssClass="btn_com" runat="server" Text="Add" OnClick="Button9_Click" /> 
             <asp:Button ID="Button10" CssClass="btn_com" runat="server" Text="Manage User" OnClick="Button10_Click" />
             <asp:Button ID="Button12" CssClass="btn_com" runat="server" Text="View user" OnClick="Button12_Click" />

             </div>
             </div>
         </div>
         </div>
</asp:Content>

