<%@ Page Title="" Language="C#" MasterPageFile="~/guest.master" AutoEventWireup="true" CodeFile="forgot.aspx.cs" Inherits="forgot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .tb{
            width:300px;
            height:40px;
            border:1px solid #d1d1d1;
            outline:none;
            margin-top:5px;
            font-size:20px;
            background-color:#ededed;
            
            
            
            

        }
        .sp
        {
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size:15px;
            display: inline-block;
            width:200px;
        }
        .mb_sb
        {
            width:150px;
            height:50px;
            background-color:red;
            color:white;
            border-radius:20px;
            outline:none;
            cursor:pointer;
            border:none;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;

        }
      
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="section_backgound">
        <h3 style="padding-top:17px; margin-left:10%;">FORGOT PASSWORD</h3>
        <div style="height:790px; margin-left:10%;">

            <asp:Button ID="Button5" runat="server" Text="USER" CssClass="mb_sb" OnClick="user" /> &nbsp&nbsp&nbsp
            <asp:Button ID="Button6" runat="server" Text="COMPANY" CssClass="mb_sb" OnClick="company" /><br /><br />

            <asp:Panel ID="Panel2" runat="server">
            <span class="sp">Enter your username</span><br />
            <asp:TextBox ID="TextBox1" runat="server" CssClass="tb"></asp:TextBox><br /><br />

            <span class="sp">Enter your email</span><br />
            <asp:TextBox ID="TextBox2" runat="server" CssClass="tb"></asp:TextBox><br /><br />

            <span class="sp">Pick your Question</span><br />
            <asp:DropDownList ID="DropDownList1" CssClass="tb" runat="server" DataSourceID="SqlDataSource1" DataTextField="usques" DataValueField="usques">
            </asp:DropDownList><br /><br />

            <span class="sp">Enter your answer</span><br />
            <asp:TextBox ID="TextBox3" runat="server" CssClass="tb"></asp:TextBox><br /><br />

            
            <asp:Label ID="Label1" runat="server"></asp:Label><br /><br />


             <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="mb_sb" OnClick="Button1_Click"/> &nbsp&nbsp&nbsp
             <asp:Button ID="Button2" runat="server" Text="Clear" CssClass="mb_sb" OnClick="Button2_Click" CausesValidation="False"/>

                </asp:Panel>

            <asp:Panel ID="Panel1" runat="server">
            <span class="sp">Your Password</span><br />
            
            <asp:Label ID="Label3" runat="server" ></asp:Label>
            </asp:Panel>

            <asp:Panel ID="Panel3" runat="server">
                <span class="sp">Enter your username</span><br />
            <asp:TextBox ID="TextBox5" runat="server" CssClass="tb"></asp:TextBox><br /><br />

            <span class="sp">Enter your email</span><br />
            <asp:TextBox ID="TextBox6" runat="server" CssClass="tb"></asp:TextBox><br /><br />

            <span class="sp">Pick your Question</span><br />
            <asp:DropDownList ID="DropDownList2" CssClass="tb" runat="server" DataSourceID="SqlDataSource2" DataTextField="compques" DataValueField="compques">
            </asp:DropDownList><br /><br />

            <span class="sp">Enter your answer</span><br />
            <asp:TextBox ID="TextBox7" runat="server" CssClass="tb"></asp:TextBox><br /><br />

            


             <asp:Button ID="Button3" runat="server" Text="Submit" CssClass="mb_sb" OnClick="Button3_Click"/> &nbsp&nbsp&nbsp
             <asp:Button ID="Button4" runat="server" Text="Clear" CssClass="mb_sb" OnClick="Button4_Click" CausesValidation="False"/>


            </asp:Panel>

            <asp:Panel ID="Panel4" runat="server">
            <span class="sp">Your Password</span><br />
             <asp:Label ID="Label4" runat="server" ></asp:Label>

            </asp:Panel>
            <asp:Label ID="Label2" runat="server"></asp:Label><br /><br />

        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [usques] FROM [cregn]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [compques] FROM [compregn]"></asp:SqlDataSource>
    </div>
</asp:Content>

