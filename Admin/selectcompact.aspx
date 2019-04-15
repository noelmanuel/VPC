<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="selectcompact.aspx.cs" Inherits="Admin_selectcompact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
    .btn_com{
        width:430px;
        height:120px;
        background-color:white;
        color:red;
        font-size:15px;
        border:1px solid red;
        border-radius:20px;
        cursor:pointer;
       margin-left:20px;
       font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
       outline:none;
        
       

    }
    .btn_com:hover{
        background-color:red;
        color:white;
        
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="section_backgound">
         
    <div style="height:790px;">       
         <h3 style="padding-top:17px; margin-left:10%;">SELECT METHOD FOR COMPACTIBITY BUILD</h3>
         
         <div class="cata_parts1">
             <div class="approval1">
                
                <asp:Button ID="Button1" CssClass="btn_com" runat="server" Text="Individual" OnClick="pro_Click" />
                <asp:Button ID="Button2" CssClass="btn_com" runat="server" Text="Multiple" OnClick="gpu_Click" /><br /><br />
              
             </div>
             </div>
         </div>
         </div>
</asp:Content>
