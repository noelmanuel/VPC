<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="errorpage.aspx.cs" Inherits="Admin_errorpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .btnsd
        {
            margin-left:10%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="section_backgound">
         
    <div style="height:790px;">       
         <h3 style="padding-top:17px; margin-left:10%;">ERROR MESSAGE</h3>

        <p style="padding-top:17px; color:red; margin-left:10%;">You have to select atleast one motherboard to continue</p>
        <p style=" color:green; margin-left:10%;">If you not selecting motherboard users cant choose the selected products under that motherboard</p>

        <asp:Button ID="Button1" CssClass="btnsd" runat="server" Text="Go Back" Height="50" Width="150" ForeColor="White" BackColor="Red" BorderStyle="None" OnClick="Button1_Click" />
        </div>
        </div>
</asp:Content>

