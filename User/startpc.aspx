﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User/usermaster.master" AutoEventWireup="true" CodeFile="startpc.aspx.cs" Inherits="User_startpc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .sp
        {
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size:24px;
            padding-left:100px;
            color:red;

        }
        .spp
        {
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size:24px;
            
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
        .bt
        {
            cursor:pointer;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="section_backgound">
        <table style=" height:790px; width:97%;">
            <tr>
                <td style="border-right:1px solid #dddddd; width:50%;">
                    <br /><br /><br />
                    <span class="sp">CPU SPEC</span>
                    <asp:Image ID="Image1" runat="server" ImageAlign="Middle" ImageUrl="~/images/addmb.jpg" />
                    <br /><br /><br /><br /><br /><br /><br /><br />
                    <span class="sp">DESK SPEC</span><br /><br />
                    <asp:Image ID="Image2" runat="server" ImageAlign="Middle" ImageUrl="~/images/em.jpg" />
                </td>
                <td style="border-left:1px solid #dddddd; width:50%; vertical-align:top;">

                    <br /><br />
                    <span class="spp">CPU SPEC</span><br /><br />
                    <asp:Label ID="Label1" runat="server"  Width="580"></asp:Label>
                    <asp:Button ID="Button1" CssClass="add" runat="server" Text="ADD MOTHERBOARD" BackColor="#00CCFF" ForeColor="White" Height="20" Width="150" BorderStyle="None" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" CssClass="add" runat="server" Text="X" BackColor="red" ForeColor="White" Height="20" Width="30" BorderStyle="None" OnClick="Button2_Click" /><br /><br />

                    <asp:Panel ID="Panel1" runat="server">
                    
                    <asp:Label ID="Label2" runat="server" Width="580"></asp:Label>
                    <asp:Button ID="Button3" CssClass="add" runat="server" Text="ADD RAM" BackColor="#00CCFF" ForeColor="White" Height="20" Width="150" BorderStyle="None" OnClick="ram1_Click" />
                    <asp:Button ID="Button4" CssClass="add" runat="server" Text="X" BackColor="red" ForeColor="White" Height="20" Width="30" BorderStyle="None" OnClick="delram11_Click" /><br /><br />
                    
                    <asp:Label ID="Label3" runat="server" Width="580"></asp:Label>
                    <asp:Button ID="Button5" CssClass="add" runat="server" Text="ADD RAM" BackColor="#00CCFF" ForeColor="White" Height="20" Width="150" BorderStyle="None" OnClick="ram2_Click" />
                    <asp:Button ID="Button6" CssClass="add" runat="server" Text="X" BackColor="red" ForeColor="White" Height="20" Width="30" BorderStyle="None" OnClick="delram12_Click" /><br /><br />
                    </asp:Panel>

                    <asp:Panel ID="Panel2" runat="server">

                        

                        <asp:Label ID="Label4" runat="server" Width="580"></asp:Label>
                        <asp:Button ID="Button7" CssClass="add" runat="server" Text="ADD RAM" BackColor="#00CCFF" ForeColor="White" Height="20" Width="150" BorderStyle="None" OnClick="ram11_Click" />
                        <asp:Button ID="Button8" CssClass="add" runat="server" Text="X" BackColor="red" ForeColor="White" Height="20" Width="30" BorderStyle="None" OnClick="delram1_Click" /><br /><br />

                        <asp:Label ID="Label5" runat="server" Width="580"></asp:Label>
                        <asp:Button ID="Button9" CssClass="add" runat="server" Text="ADD RAM" BackColor="#00CCFF" ForeColor="White" Height="20" Width="150" BorderStyle="None" OnClick="ram12_Click" />
                        <asp:Button ID="Button10" CssClass="add" runat="server" Text="X" BackColor="red" ForeColor="White" Height="20" Width="30" BorderStyle="None" OnClick="delram2_Click" /><br /><br />

                        <asp:Label ID="Label6" runat="server" Width="580"></asp:Label>
                        <asp:Button ID="Button11" CssClass="add" runat="server" Text="ADD RAM" BackColor="#00CCFF" ForeColor="White" Height="20" Width="150" BorderStyle="None" OnClick="ram13_Click" />
                        <asp:Button ID="Button12" CssClass="add" runat="server" Text="X" BackColor="red" ForeColor="White" Height="20" Width="30" BorderStyle="None" OnClick="delram3_Click" /><br /><br />

                        <asp:Label ID="Label7" runat="server" Width="580"></asp:Label>
                        <asp:Button ID="Button13" CssClass="add" runat="server" Text="ADD RAM" BackColor="#00CCFF" ForeColor="White" Height="20" Width="150" BorderStyle="None" OnClick="ram14_Click" />
                        <asp:Button ID="Button14" CssClass="add" runat="server" Text="X" BackColor="red" ForeColor="White" Height="20" Width="30" BorderStyle="None" OnClick="delram4_Click" /><br /><br />
                     
                    </asp:Panel>

                    <asp:Panel ID="Panel3" runat="server">
                        <asp:Label ID="Label8" runat="server" Width="580"></asp:Label>
                        <asp:Button ID="Button15" CssClass="add" runat="server" Text="ADD GPU" BackColor="#00CCFF" ForeColor="White" Height="20" Width="150" BorderStyle="None" OnClick="gpu15_Click" />
                        <asp:Button ID="Button16" CssClass="add" runat="server" Text="X" BackColor="red" ForeColor="White" Height="20" Width="30" BorderStyle="None" OnClick="delgpu16_Click" /><br /><br />
                    </asp:Panel>

                    <asp:Panel ID="Panel4" runat="server">
                        <asp:Label ID="Label9" runat="server" Width="580"></asp:Label>
                        <asp:Button ID="Button17" CssClass="add" runat="server" Text="ADD GPU" BackColor="#00CCFF" ForeColor="White" Height="20" Width="150" BorderStyle="None" OnClick="gpu17_Click" />
                        <asp:Button ID="Button18" CssClass="add" runat="server" Text="X" BackColor="red" ForeColor="White" Height="20" Width="30" BorderStyle="None" OnClick="delgpu18_Click" /><br /><br />

                        <asp:Label ID="Label10" runat="server" Width="580"></asp:Label>
                        <asp:Button ID="Button19" CssClass="add" runat="server" Text="ADD GPU" BackColor="#00CCFF" ForeColor="White" Height="20" Width="150" BorderStyle="None" OnClick="gpu19_Click" />
                        <asp:Button ID="Button20" CssClass="add" runat="server" Text="X" BackColor="red" ForeColor="White" Height="20" Width="30" BorderStyle="None" OnClick="delgpu20_Click" /><br /><br />

                    </asp:Panel>

                    <asp:Label ID="Label11" runat="server" Width="580"></asp:Label>
                        <asp:Button ID="Button21" CssClass="add" runat="server" Text="ADD HDD" BackColor="#00CCFF" ForeColor="White" Height="20" Width="150" BorderStyle="None" OnClick="hdd21_Click" />
                        <asp:Button ID="Button22" CssClass="add" runat="server" Text="X" BackColor="red" ForeColor="White" Height="20" Width="30" BorderStyle="None" OnClick="delhdd22_Click" /><br /><br />

                    <asp:Label ID="Label12" runat="server" Width="580"></asp:Label>
                        <asp:Button ID="Button23" CssClass="add" runat="server" Text="ADD SSD" BackColor="#00CCFF" ForeColor="White" Height="20" Width="150" BorderStyle="None" OnClick="ssd23_Click" />
                        <asp:Button ID="Button24" CssClass="add" runat="server" Text="X" BackColor="red" ForeColor="White" Height="20" Width="30" BorderStyle="None" OnClick="delssd24_Click" /><br /><br />

                    <asp:Label ID="Label13" runat="server" Width="580"></asp:Label>
                        <asp:Button ID="Button25" CssClass="add" runat="server" Text="ADD PROCESSOR" BackColor="#00CCFF" ForeColor="White" Height="20" Width="150" BorderStyle="None" OnClick="pro23_Click" />
                        <asp:Button ID="Button26" CssClass="add" runat="server" Text="X" BackColor="red" ForeColor="White" Height="20" Width="30" BorderStyle="None" OnClick="delpro24_Click" /><br /><br />

                    <asp:Label ID="Label14" runat="server" Width="580"></asp:Label>
                        <asp:Button ID="Button27" CssClass="add" runat="server" Text="ADD CPU COOLER" BackColor="#00CCFF" ForeColor="White" Height="20" Width="150" BorderStyle="None" OnClick="cool23_Click" />
                        <asp:Button ID="Button28" CssClass="add" runat="server" Text="X" BackColor="red" ForeColor="White" Height="20" Width="30" BorderStyle="None" OnClick="delcool24_Click" /><br /><br />

                    <asp:Label ID="Label15" runat="server" Width="580"></asp:Label>
                        <asp:Button ID="Button29" CssClass="add" runat="server" Text="ADD SOUNDCARD" BackColor="#00CCFF" ForeColor="White" Height="20" Width="150" BorderStyle="None" OnClick="sound23_Click" />
                        <asp:Button ID="Button30" CssClass="add" runat="server" Text="X" BackColor="red" ForeColor="White" Height="20" Width="30" BorderStyle="None" OnClick="delsound24_Click" /><br /><br />

                    <asp:Label ID="Label16" runat="server" Width="580"></asp:Label>
                        <asp:Button ID="Button31" CssClass="add" runat="server" Text="ADD NETWORKCARD" BackColor="#00CCFF" ForeColor="White" Height="20" Width="150" BorderStyle="None" OnClick="net23_Click" />
                        <asp:Button ID="Button32" CssClass="add" runat="server" Text="X" BackColor="red" ForeColor="White" Height="20" Width="30" BorderStyle="None" OnClick="delnet24_Click" /><br /><br />

                    <asp:Label ID="Label17" runat="server" Width="580"></asp:Label>
                        <asp:Button ID="Button33" CssClass="add" runat="server" Text="ADD OPTICALDRIVE" BackColor="#00CCFF" ForeColor="White" Height="20" Width="150" BorderStyle="None" OnClick="cd23_Click" />
                        <asp:Button ID="Button34" CssClass="add" runat="server" Text="X" BackColor="red" ForeColor="White" Height="20" Width="30" BorderStyle="None" OnClick="delcd24_Click" /><br /><br />

                    <asp:Label ID="Label18" runat="server" Width="580"></asp:Label>
                        <asp:Button ID="Button35" CssClass="add" runat="server" Text="ADD SMPS" BackColor="#00CCFF" ForeColor="White" Height="20" Width="150" BorderStyle="None" OnClick="power23_Click" />
                        <asp:Button ID="Button36" CssClass="add" runat="server" Text="X" BackColor="red" ForeColor="White" Height="20" Width="30" BorderStyle="None" OnClick="delpower24_Click" /><br /><br />

                    <asp:Label ID="Label19" runat="server" Width="580"></asp:Label>
                        <asp:Button ID="Button37" CssClass="add" runat="server" Text="ADD CASE" BackColor="#00CCFF" ForeColor="White" Height="20" Width="150" BorderStyle="None" OnClick="case23_Click" />
                        <asp:Button ID="Button38" CssClass="add" runat="server" Text="X" BackColor="red" ForeColor="White" Height="20" Width="30" BorderStyle="None" OnClick="delcase24_Click" /><br /><br />

                    <asp:Label ID="Label20" runat="server" Width="580"></asp:Label>
                        <asp:Button ID="Button39" CssClass="add" runat="server" Text="ADD CASE FAN" BackColor="#00CCFF" ForeColor="White" Height="20" Width="150" BorderStyle="None" OnClick="casefan23_Click" />
                        <asp:Button ID="Button40" CssClass="add" runat="server" Text="X" BackColor="red" ForeColor="White" Height="20" Width="30" BorderStyle="None" OnClick="delcasefan24_Click" /><br /><br />
                
                    <br /><br /><br /><br /><br /><br /><br />
                <span class="spp">DESK SPEC</span><br /><br />


                    <asp:Label ID="Label21" runat="server" Width="580"></asp:Label>
                        <asp:Button ID="Button41" CssClass="add" runat="server" Text="ADD MONITOR" BackColor="#00CCFF" ForeColor="White" Height="20" Width="150" BorderStyle="None" OnClick="mon23_Click" />
                        <asp:Button ID="Button42" CssClass="add" runat="server" Text="X" BackColor="red" ForeColor="White" Height="20" Width="30" BorderStyle="None" OnClick="delmon24_Click" /><br /><br />

                    <asp:Label ID="Label22" runat="server" Width="580"></asp:Label>
                        <asp:Button ID="Button43" CssClass="add" runat="server" Text="ADD KEYBOARD" BackColor="#00CCFF" ForeColor="White" Height="20" Width="150" BorderStyle="None" OnClick="key23_Click" />
                        <asp:Button ID="Button44" CssClass="add" runat="server" Text="X" BackColor="red" ForeColor="White" Height="20" Width="30" BorderStyle="None" OnClick="delkey24_Click" /><br /><br />
            
                <asp:Label ID="Label23" runat="server" Width="580"></asp:Label>
                        <asp:Button ID="Button45" CssClass="add" runat="server" Text="ADD MICE" BackColor="#00CCFF" ForeColor="White" Height="20" Width="150" BorderStyle="None" OnClick="mouse23_Click" />
                        <asp:Button ID="Button46" CssClass="add" runat="server" Text="X" BackColor="red" ForeColor="White" Height="20" Width="30" BorderStyle="None" OnClick="delmouse24_Click" /><br /><br />
                

                    <asp:Label ID="Label24" runat="server" Width="580"></asp:Label>
                        <asp:Button ID="Button47" CssClass="add" runat="server" Text="ADD SPEAKER" BackColor="#00CCFF" ForeColor="White" Height="20" Width="150" BorderStyle="None" OnClick="speaker23_Click" />
                        <asp:Button ID="Button48" CssClass="add" runat="server" Text="X" BackColor="red" ForeColor="White" Height="20" Width="30" BorderStyle="None" OnClick="delspeaker24_Click" /><br /><br />

                    <asp:Label ID="Label25" runat="server" Width="580"></asp:Label>
                        <asp:Button ID="Button49" CssClass="add" runat="server" Text="ADD UPS" BackColor="#00CCFF" ForeColor="White" Height="20" Width="150" BorderStyle="None" OnClick="ups23_Click" />
                        <asp:Button ID="Button50" CssClass="add" runat="server" Text="X" BackColor="red" ForeColor="White" Height="20" Width="30" BorderStyle="None" OnClick="delups24_Click" /><br /><br />

                            
                            <asp:Label ID="Label26" Width="580" runat="server" ></asp:Label>
                    
                        <asp:Button ID="Button51" CssClass="add" runat="server" Text="ADD SOFTWARE" BackColor="#00CCFF" ForeColor="White" Height="20" Width="150" BorderStyle="None" OnClick="software23_Click" />
                        <asp:Button ID="Button52" CssClass="add" runat="server" Text="X" BackColor="red" ForeColor="White" Height="20" Width="30" BorderStyle="None" OnClick="delsoftware24_Click" /><br />
                    <asp:DropDownList ID="DropDownList1" DataTextField="software" DataValueField="software" runat="server"></asp:DropDownList> &nbsp&nbsp&nbsp  <asp:Button ID="Button57" CssClass="add" runat="server" Text="Edit" BackColor="#00CCFF" ForeColor="White" Height="20" Width="50" BorderStyle="None" OnClick="softwarelist_Click" />
                    <br /><br />

                    <asp:Label ID="Label27" runat="server" Width="580"></asp:Label>
                        <asp:Button ID="Button53" CssClass="add" runat="server" Text="ADD OS" BackColor="#00CCFF" ForeColor="White" Height="20" Width="150" BorderStyle="None" OnClick="os23_Click" />
                        <asp:Button ID="Button54" CssClass="add" runat="server" Text="X" BackColor="red" ForeColor="White" Height="20" Width="30" BorderStyle="None" OnClick="delos24_Click" /><br /><br /><br /><br />


                    <asp:Label ID="Label28" runat="server"></asp:Label>

                    <asp:Button ID="Button55" runat="server" Text="ADD TO CART" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="250" OnClick="Button55_Click" /> &nbsp&nbsp&nbsp&nbsp
                    <asp:Button ID="Button56" runat="server" Text="CLEAR" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="250" OnClick="Button56_Click" />
                </td>
          </tr>
           

        </table>
    </div>
</asp:Content>

