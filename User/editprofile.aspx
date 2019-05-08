<%@ Page Title="" Language="C#" MasterPageFile="~/User/usermaster.master" AutoEventWireup="true" CodeFile="editprofile.aspx.cs" Inherits="User_editprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .boxt
        {
            
            border:1px solid #dedede;
            padding:50px;
            text-align:center;

        }
        .boxt:hover
        {
            border:2px solid #f9c32f;
        }
        .link
        {
            text-align:center;
            
        }
        .link:hover
        {
            color:red;        

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="section_backgound">
        
       <div style="height:790px; padding-top:5px; margin-left:12%;"> 
        
             <h3>SETTINGS</h3><br />
           <table>
               <tr >
                   <td class="boxt">
                       <asp:LinkButton ID="LinkButton1" CssClass="link" runat="server" Font-Bold="True">EDIT PROFILE</asp:LinkButton>
                   </td> &nbsp


                   <td class="boxt">
                       <asp:LinkButton ID="LinkButton2" CssClass="link" runat="server" Font-Bold="True" OnClick="LinkButton2_Click">ORDERS</asp:LinkButton>
                   </td> &nbsp

                   <td class="boxt">
                        <asp:LinkButton ID="LinkButton3" CssClass="link" runat="server" Font-Bold="True">BUILD ORDERS</asp:LinkButton>
                   </td> &nbsp

               </tr>

               <tr>
                   <td class="boxt">
                       <asp:LinkButton ID="LinkButton4" CssClass="link" runat="server" Font-Bold="True">MANAGE ACCOUNT</asp:LinkButton>
                   </td> &nbsp

                   <td class="boxt">
                       <asp:LinkButton ID="LinkButton5" CssClass="link" runat="server" Font-Bold="True">MESSAGE US</asp:LinkButton>
                   </td> &nbsp

                   <td class="boxt">
                       <asp:LinkButton ID="LinkButton6" CssClass="link" runat="server" Font-Bold="True">EXPERT ORDERS</asp:LinkButton>
                   </td> &nbsp

               </tr>

           </table>

            
           </div>
        </div>
</asp:Content>

