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
             <asp:Button ID="Button1" CssClass="btn_com" runat="server" Text="Add" /> 
             <asp:Button ID="Button2" CssClass="btn_com" runat="server" Text="Update" />
             <asp:Button ID="Button3" CssClass="btn_com" runat="server" Text="Delete" />
             <asp:Button ID="Button4" CssClass="btn_com" runat="server" Text="View" />

             </div>
             </div>


         <h3 style="padding-top:17px; margin-left:10%;">COMPANY MANAGEMENT</h3>
         <div class="cata_parts">
             
             <div class="approval">
             <asp:Button ID="Button5" CssClass="btn_com" runat="server" Text="Add" /> 
             <asp:Button ID="Button6" CssClass="btn_com" runat="server" Text="Update" />
             <asp:Button ID="Button7" CssClass="btn_com" runat="server" Text="Delete" />
             <asp:Button ID="Button8" CssClass="btn_com" runat="server" Text="Company Details" />

             </div>
             </div>

         <h3 style="padding-top:17px; margin-left:10%;">USER MANAGEMENT</h3>
         <div class="cata_parts">
             
             <div class="approval">
             <asp:Button ID="Button9" CssClass="btn_com" runat="server" Text="Add" /> 
             <asp:Button ID="Button10" CssClass="btn_com" runat="server" Text="Update" />
             <asp:Button ID="Button11" CssClass="btn_com" runat="server" Text="Delete" />
             <asp:Button ID="Button12" CssClass="btn_com" runat="server" Text="View user" />

             </div>
             </div>
         </div>

</asp:Content>

