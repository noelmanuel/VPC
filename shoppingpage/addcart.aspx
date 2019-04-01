<%@ Page Title="" Language="C#" MasterPageFile="~/guest.master" AutoEventWireup="true" CodeFile="addcart.aspx.cs" Inherits="shoppingpage_addcart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="section_backgound">
                
         <h3 style="height:40px; padding-top:10px; margin-left:10%;">YOUR CART</h3>
         <asp:GridView ID="GridView1" runat="server"></asp:GridView>
         </div>
</asp:Content>

