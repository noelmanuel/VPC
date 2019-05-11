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
                       <asp:LinkButton ID="LinkButton5" CssClass="link" runat="server" Font-Bold="True" OnClick="LinkButton5_Click">MESSAGE US</asp:LinkButton>
                   </td> &nbsp

                   <td class="boxt">
                       <asp:LinkButton ID="LinkButton6" CssClass="link" runat="server" Font-Bold="True" OnClick="LinkButton6_Click">EXPERT ORDERS</asp:LinkButton>
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
               <asp:DropDownList ID="DropDownList1" CssClass="txtaddd" runat="server" DataSourceID="SqlDataSource1" DataTextField="usques" DataValueField="usques"></asp:DropDownList><br /><br />

               <span class="spa">Answer</span><br /><br />
               <asp:TextBox ID="TextBox2" runat="server" CssClass="txtadd"></asp:TextBox><br /><br />

                <asp:Button ID="Button1" runat="server" Text="Delete" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="250" OnClick="Button1_Click"  />

              
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [usques] FROM [cregn]"></asp:SqlDataSource>
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

               <span class="spa">Transaction ID</span><br />
               <asp:Button ID="Button3" runat="server" Text="Order" Width="105" Height="40"  BackColor="Blue" BorderStyle="None" ForeColor="White" OnClick="Button3_Click" /> &nbsp
               <asp:Button ID="Button4" runat="server" Text="Build Order" Width="105" Height="40"  BackColor="Blue" BorderStyle="None" ForeColor="White" OnClick="Button4_Click" /> &nbsp
               <asp:Button ID="Button5" runat="server" Text="Expert Order" Width="105" Height="40"  BackColor="Blue" BorderStyle="None" ForeColor="White" OnClick="Button5_Click" /> &nbsp <br /><br />

                       <asp:Label ID="Label1" runat="server" ></asp:Label>

               <asp:Panel ID="Panel3" runat="server">
               <asp:DropDownList ID="DropDownList2" CssClass="txtaddd" DataTextField="Transid" DataValueField="Transid" runat="server" DataSourceID="SqlDataSource2"></asp:DropDownList><br /><br />
               </asp:Panel>

               <asp:Panel ID="Panel4" runat="server">
               <asp:DropDownList ID="DropDownList3" CssClass="txtaddd" DataTextField="transactionn" DataValueField="transactionn" runat="server" DataSourceID="SqlDataSource3"></asp:DropDownList><br /><br />
               </asp:Panel>

               <asp:Panel ID="Panel5" runat="server">
               <asp:DropDownList ID="DropDownList4" CssClass="txtaddd" DataTextField="transactionn" DataValueField="transactionn" runat="server" DataSourceID="SqlDataSource4"></asp:DropDownList><br /><br />
               </asp:Panel>


               <span class="spa">Message</span><br />
               <textarea id="TextArea1" runat="server" class="auto-style1"></textarea><br /><br />

                <asp:Button ID="Button2" runat="server" Text="Submit" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="250" OnClick="Button2_Click"  />

               <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Transid] FROM [orderrr] WHERE ([username] = @username)">
                   <SelectParameters>
                       <asp:SessionParameter Name="username" SessionField="user" Type="String" />
                   </SelectParameters>
               </asp:SqlDataSource>
               <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [transactionn] FROM [pastorder] WHERE ([userr] = @userr)">
                   <SelectParameters>
                       <asp:SessionParameter Name="userr" SessionField="user" Type="String" />
                   </SelectParameters>
               </asp:SqlDataSource>
               <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [transactionn] FROM [expertpastorder] WHERE ([username] = @username)">
                   <SelectParameters>
                       <asp:SessionParameter Name="username" SessionField="user" Type="String" />
                   </SelectParameters>
               </asp:SqlDataSource>
                        </td>
                   </tr>
           </table>
           </asp:Panel>
                      
           </div>
        </div>
</asp:Content>

