﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User/usermaster.master" AutoEventWireup="true" CodeFile="upsgrid.aspx.cs" Inherits="User_product_grid_upsgrid" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .gridd
        {
            margin-left:10%;
        }
        .auto-style1 {
            margin-left: 10%;
            text-align: center;
        }
        .sp
        {
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size:18px;
            color:#f92f42;
            
            
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="section_backgound">
        <div style="height:790px;">
            <table>
            <tr >
                <td style=" width:60%; vertical-align:top;">
        <h3 style="padding-top:17px; margin-left:10%;">SELECT UPS</h3>
                    <div style="height:520px; width:1000px; overflow:scroll;">
    <asp:GridView ID="GridView1" CssClass="gridd" runat="server" AutoGenerateColumns="False"  BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="5" CellSpacing="3" Width="843px" OnRowCommand="GridView1_RowCommand" >
        <Columns>
            <asp:TemplateField HeaderText="UPS">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("man") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Price">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("pric") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Details">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Red" CommandName="Insert" CommandArgument="<%# Container.DataItemIndex %>" >View</asp:LinkButton>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Action">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Red" CommandName="Select" >Add</asp:LinkButton>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
                        </div>
                    </td>

     <td style="padding-left:3%; vertical-align:top;">
     <asp:Panel ID="Panel1" runat="server">

      <h3 style="padding-top:20px;">UPS DETAILS</h3>

         

                        <span class="sp">ALARM</span><br />
                        <asp:Label ID="Label11" runat="server" ></asp:Label><br /><br />
                        <span class="sp">BACKUP/RUN TIME (FULL LOAD)</span><br />
                        <asp:Label ID="Label12" runat="server" ></asp:Label><br /><br />
                        <span class="sp">BACKUP/RUN TIME (HALF LOAD)</span><br />
                        <asp:Label ID="Label13" runat="server" ></asp:Label><br /><br />
                        <span class="sp">BATTERY CHEMISTRY</span><br />
                        <asp:Label ID="Label14" runat="server" ></asp:Label><br /><br />
                        <span class="sp">BATTERY LIFE</span><br />
                        <asp:Label ID="Label15" runat="server" ></asp:Label><br /><br /><br />

         <h3 style="">COMPATIBILITY ISSUES/ WARNING</h3><br />
         <asp:Label ID="Label23" Font-Bold="true" ForeColor="Red" runat="server" ></asp:Label>

         </asp:Panel> 
      </td>
      </tr>
      </table>
            </div>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ups]"></asp:SqlDataSource>

    </div>
</asp:Content>


