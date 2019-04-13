<%@ Page Title="" Language="C#" MasterPageFile="~/User/usermaster.master" AutoEventWireup="true" CodeFile="buildcart.aspx.cs" Inherits="User_buildcart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="section_backgound">
          <h3 style="height:40px; padding-top:10px; margin-left:10%;">YOUR CART</h3>
         <div style=" height:790px; margin-left:10%;">
            
             <asp:GridView ID="GridView1" runat="server"></asp:GridView>
             
             </div>
         </div>
</asp:Content>

