﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User/usermaster.master" AutoEventWireup="true" CodeFile="startpc.aspx.cs" Inherits="User_startpc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .sp
        {
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size:20px;
            padding-left:100px;
            color:red;

        }
        .spp
        {
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size:20px;
            
            color:red;

        }
        td
        {
            padding:30px;
        }
        .add
        {
            cursor:pointer;
            outline:none;
            font-weight:bold;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="section_backgound">
        <table style="border:1px solid black; height:790px; width:90%;">
            <tr>
                <td style="border:1px solid black; width:50%;">
                    <br /><br />
                    <span class="sp">CPU SPEC</span>
                    <asp:Image ID="Image1" runat="server" ImageAlign="Middle" ImageUrl="~/images/addmb.jpg" />
                    <br /><br />
                    <span class="sp">DESK SPEC</span><br /><br />
                    <asp:Image ID="Image2" runat="server" ImageAlign="Middle" ImageUrl="~/images/deskoff.jpg" />
                </td>
                <td style="border:1px solid black; width:50%; vertical-align:top;">

                    <br /><br />
                    <span class="spp">CPU SPEC</span><br /><br />
                    <asp:Label ID="Label1" runat="server"  Width="580"></asp:Label>
                    <asp:Button ID="Button1" CssClass="add" runat="server" Text="ADD" BackColor="#00CCFF" ForeColor="White" Height="20" Width="50" BorderStyle="None" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" CssClass="add" runat="server" Text="X" BackColor="red" ForeColor="White" Height="20" Width="30" BorderStyle="None" OnClick="Button2_Click" /><br /><br />

                    <asp:Panel ID="Panel1" runat="server">
                    
                    <asp:Label ID="Label2" runat="server" Width="580"></asp:Label>
                    <asp:Button ID="Button3" CssClass="add" runat="server" Text="ADD" BackColor="#00CCFF" ForeColor="White" Height="20" Width="50" BorderStyle="None" OnClick="ram1_Click" />
                    <asp:Button ID="Button4" CssClass="add" runat="server" Text="X" BackColor="red" ForeColor="White" Height="20" Width="30" BorderStyle="None" OnClick="delram11_Click" /><br /><br />
                    
                    <asp:Label ID="Label3" runat="server" Width="580"></asp:Label>
                    <asp:Button ID="Button5" CssClass="add" runat="server" Text="ADD" BackColor="#00CCFF" ForeColor="White" Height="20" Width="50" BorderStyle="None" OnClick="ram2_Click" />
                    <asp:Button ID="Button6" CssClass="add" runat="server" Text="X" BackColor="red" ForeColor="White" Height="20" Width="30" BorderStyle="None" OnClick="delram12_Click" /><br /><br />
                    </asp:Panel>

                    <asp:Panel ID="Panel2" runat="server">

                        

                        <asp:Label ID="Label4" runat="server" Width="580"></asp:Label>
                        <asp:Button ID="Button7" CssClass="add" runat="server" Text="ADD" BackColor="#00CCFF" ForeColor="White" Height="20" Width="50" BorderStyle="None" OnClick="ram11_Click" />
                        <asp:Button ID="Button8" CssClass="add" runat="server" Text="X" BackColor="red" ForeColor="White" Height="20" Width="30" BorderStyle="None" OnClick="delram1_Click" /><br /><br />

                        <asp:Label ID="Label5" runat="server" Width="580"></asp:Label>
                        <asp:Button ID="Button9" CssClass="add" runat="server" Text="ADD" BackColor="#00CCFF" ForeColor="White" Height="20" Width="50" BorderStyle="None" OnClick="ram12_Click" />
                        <asp:Button ID="Button10" CssClass="add" runat="server" Text="X" BackColor="red" ForeColor="White" Height="20" Width="30" BorderStyle="None" OnClick="delram2_Click" /><br /><br />

                        <asp:Label ID="Label6" runat="server" Width="580"></asp:Label>
                        <asp:Button ID="Button11" CssClass="add" runat="server" Text="ADD" BackColor="#00CCFF" ForeColor="White" Height="20" Width="50" BorderStyle="None" OnClick="ram13_Click" />
                        <asp:Button ID="Button12" CssClass="add" runat="server" Text="X" BackColor="red" ForeColor="White" Height="20" Width="30" BorderStyle="None" OnClick="delram3_Click" /><br /><br />

                        <asp:Label ID="Label7" runat="server" Width="580"></asp:Label>
                        <asp:Button ID="Button13" CssClass="add" runat="server" Text="ADD" BackColor="#00CCFF" ForeColor="White" Height="20" Width="50" BorderStyle="None" OnClick="ram14_Click" />
                        <asp:Button ID="Button14" CssClass="add" runat="server" Text="X" BackColor="red" ForeColor="White" Height="20" Width="30" BorderStyle="None" OnClick="delram4_Click" /><br /><br />
                     
                    </asp:Panel>


                </td>
            </tr>
           

        </table>
    </div>
</asp:Content>

