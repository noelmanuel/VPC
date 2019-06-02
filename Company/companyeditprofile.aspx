<%@ Page Title="" Language="C#" MasterPageFile="~/Company/company.master" AutoEventWireup="true" CodeFile="companyeditprofile.aspx.cs" Inherits="Company_companyeditprofile" %>

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
            color:navy;
            font-weight:bold;
        }
        .auto-style1 {
            width: 340px;
            height: 76px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="section_backgound">

           
       <div style="height:950px;"> 
         <div style="padding-top:5px;">
             <h3 style="">SETTINGS</h3><br />
                 <table>
               <tr >
                   <td class="boxt">
                       <asp:LinkButton ID="LinkButton1" CssClass="link" runat="server" Font-Bold="True" OnClick="LinkButton1_Click" CausesValidation="False">EDIT PROFILE</asp:LinkButton>
                   </td> &nbsp



                   <td class="boxt">
                        <asp:LinkButton ID="LinkButton7" CssClass="link" runat="server" Font-Bold="True" OnClick="LinkButton31_Click" CausesValidation="False">INBOX</asp:LinkButton>
                   </td> &nbsp

                   <td class="boxt">
                        <asp:LinkButton ID="LinkButton2" CssClass="link" runat="server" Font-Bold="True" OnClick="LinkButton312_Click" CausesValidation="False">SENT MAIL</asp:LinkButton>
                   </td> &nbsp

               </tr>

               <tr>
                   <td class="boxt">
                       <asp:LinkButton ID="LinkButton4" CssClass="link" runat="server" Font-Bold="True" OnClick="LinkButton4_Click" CausesValidation="False">DELETE ACCOUNT</asp:LinkButton>
                   </td> &nbsp

                   <td class="boxt">
                       <asp:LinkButton ID="LinkButton5" CssClass="link" runat="server" Font-Bold="True" OnClick="LinkButton5_Click" CausesValidation="False">MESSAGE US</asp:LinkButton>
                   </td> &nbsp

                  

               </tr>

           </table>

             <asp:Panel ID="Panel1" runat="server">
               <table>
               <tr>
                   <td style="background-color:#efefef; padding:30px;">
               <h3>DELETE ACCOUNT</h3><br /><br />
               <p>We’re sorry to see you go!<br />
                Please note: Deletion of your account and personal data is permanent and cannot be undone.<br />
                We will not be able to recover your account or the data that is deleted.</p><br /><br< />

               <span class="spa">Password</span><br /><br />
               <asp:TextBox ID="TextBox1" runat="server" CssClass="txtadd" ></asp:TextBox><br /><br />

               <span class="spa">Choose your security question</span><br /><br />
               <asp:DropDownList ID="DropDownList1" CssClass="txtaddd" runat="server" DataSourceID="SqlDataSource1" DataTextField="compques" DataValueField="compques"></asp:DropDownList><br /><br />

               <span class="spa">Answer</span><br /><br />
               <asp:TextBox ID="TextBox2" runat="server" CssClass="txtadd"></asp:TextBox><br /><br />

                <asp:Button ID="Button1" runat="server" Text="Delete" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="250" OnClick="Button1_Click"  />

              
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [usques] FROM [compregn]"></asp:SqlDataSource>
               </td>
            </tr>
           </table>
           </asp:Panel>
             
           
           <asp:Panel ID="Panel2" runat="server">
               <table>
               <tr>
               <td style="background-color:#efefef; padding:30px;">
               <h3>Message Us</h3><br /><br />

               <span class="spa">Subject</span><br />
               <asp:TextBox ID="TextBox3" runat="server" CssClass="txtadd" ></asp:TextBox><br /><br />

               <span class="spa">Message</span><br />
               <textarea id="TextArea1" runat="server" class="auto-style1"></textarea>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextArea1" ForeColor="Red" runat="server" ErrorMessage="Enter Message" Font-Bold="True"></asp:RequiredFieldValidator><br /><br />
                <asp:Button ID="Button2" runat="server" Text="Submit" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="250" OnClick="Button2_Click"  />
                   
               </td>
              </tr>
           </table>
           </asp:Panel>
             </div>
           </div>

     </div>
</asp:Content>

