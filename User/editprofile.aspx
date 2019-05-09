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
        .txtadd
        {
            outline:none;
            border:1px solid #e7e7e7;
            background-color:white;
            height:40px;
            width:340px;
            font-size:18px;


        }
        .txtaddd
        {
            outline:none;
            border:1px solid #e7e7e7;
            background-color:white;
            height:40px;
            width:340px;
            font-size:14px;


        }
        .spa
        {
            font-size:20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="section_backgound">
        
       <div style="height:950px; padding-top:5px; margin-left:12%;"> 
        
             <h3>SETTINGS</h3><br />
           <table>
               <tr >
                   <td class="boxt">
                       <asp:LinkButton ID="LinkButton1" CssClass="link" runat="server" Font-Bold="True" OnClick="LinkButton1_Click">EDIT PROFILE</asp:LinkButton>
                   </td> &nbsp


                   <td class="boxt">
                       <asp:LinkButton ID="LinkButton2" CssClass="link" runat="server" Font-Bold="True" OnClick="LinkButton2_Click">ORDERS</asp:LinkButton>
                   </td> &nbsp

                   <td class="boxt">
                        <asp:LinkButton ID="LinkButton3" CssClass="link" runat="server" Font-Bold="True" OnClick="LinkButton3_Click">BUILD ORDERS</asp:LinkButton>
                   </td> &nbsp

               </tr>

               <tr>
                   <td class="boxt">
                       <asp:LinkButton ID="LinkButton4" CssClass="link" runat="server" Font-Bold="True" OnClick="LinkButton4_Click">DELETE ACCOUNT</asp:LinkButton>
                   </td> &nbsp

                   <td class="boxt">
                       <asp:LinkButton ID="LinkButton5" CssClass="link" runat="server" Font-Bold="True">MESSAGE US</asp:LinkButton>
                   </td> &nbsp

                   <td class="boxt">
                       <asp:LinkButton ID="LinkButton6" CssClass="link" runat="server" Font-Bold="True" OnClick="LinkButton6_Click">EXPERT ORDERS</asp:LinkButton>
                   </td> &nbsp

               </tr>

           </table>

           <asp:Panel ID="Panel1" runat="server">
               <h3>DELETE ACCOUNT</h3><br /><br />
               <p>We’re sorry to see you go!<br />
                Please note: Deletion of your account and personal data is permanent and cannot be undone.<br />
                We will not be able to recover your account or the data that is deleted.</p><br /><br< />

               <span class="spa">Password</span><br /><br />
               <asp:TextBox ID="TextBox1" runat="server" CssClass="txtadd" ></asp:TextBox><br /><br />

               <span class="spa">Choose your security question</span><br /><br />
               <asp:DropDownList ID="DropDownList1" CssClass="txtaddd" runat="server" DataSourceID="SqlDataSource1" DataTextField="usques" DataValueField="usques"></asp:DropDownList><br /><br />

               <span class="spa">Answer</span><br /><br />
               <asp:TextBox ID="TextBox2" runat="server" CssClass="txtadd"></asp:TextBox><br /><br />

                <asp:Button ID="Button1" runat="server" Text="Delete" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="250" OnClick="Button1_Click"  />

               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [usques] FROM [cregn]"></asp:SqlDataSource>
           </asp:Panel>
            
           </div>
        </div>
</asp:Content>

