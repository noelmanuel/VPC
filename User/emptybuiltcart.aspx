<%@ Page Title="" Language="C#" MasterPageFile="~/User/usermaster.master" AutoEventWireup="true" CodeFile="emptybuiltcart.aspx.cs" Inherits="User_emptybuiltcart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .emp
        {
            
            margin-top:7%;
            margin-left:20%;
        }
        .linemp
        {
            margin-left:25%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="section_backgound">
        <div style="height:790px;">
        <asp:Image ID="Image1" runat="server"  ImageUrl="~/images/hghg.png" CssClass="emp" ImageAlign="Middle" /><br />
        
        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="linemp" PostBackUrl="~/User/startpc.aspx">CLICK HERE</asp:LinkButton>
    </div>
        </div>
</asp:Content>

