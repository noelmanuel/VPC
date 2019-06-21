<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/usermaster.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="Guest_contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
    .btn_com{
        width:230px;
        height:70px;
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
         <div style="padding-top:5px; margin-left:12%;">
             <h3 style="">CONTACT US</h3><br />
               
             <h5>For Queries and Feedback

            Toll Free Number: 1-800-115-565

            Email: dipp-startups@nic.in</h5>


            </div>
         </div> 
    </div>
</asp:Content>



