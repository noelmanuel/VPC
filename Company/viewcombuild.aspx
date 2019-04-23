<%@ Page Title="" Language="C#" MasterPageFile="~/Company/company.master" AutoEventWireup="true" CodeFile="viewcombuild.aspx.cs" Inherits="Company_viewcombuild" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 style=" margin-left:15px;">VIEW COMPANY BUILD</h3>
         
         <br />
    <div style="height:710px; overflow:scroll;">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="4" CellSpacing="1" DataSourceID="SqlDataSource1" Height="202px" Width="1608px">
        <Columns>
            <asp:BoundField DataField="motherboard" HeaderText="Motherboard" SortExpression="motherboard">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="processor" HeaderText="Processor" SortExpression="processor">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="ram" HeaderText="Ram" SortExpression="ram">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="gpu" HeaderText="Gpu" SortExpression="gpu">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="cool" HeaderText="CPU Cooler" SortExpression="cool">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="powerr" HeaderText="Power" SortExpression="powerr">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="cd" HeaderText="CD Drive" SortExpression="cd">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="sound" HeaderText="Soundcard" SortExpression="sound">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="network" HeaderText="Networkcard" SortExpression="network">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="casee" HeaderText="Case" SortExpression="casee">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="hd" HeaderText="HDD" SortExpression="hd">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="ssd" HeaderText="SSD" SortExpression="ssd">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="casefan" HeaderText="Casefan" SortExpression="casefan">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [motherboard], [processor], [ram], [gpu], [cool], [powerr], [cd], [sound], [network], [casee], [hd], [ssd], [casefan] FROM [cpubuild] WHERE ([author] = @author)">
        <SelectParameters>
            <asp:SessionParameter Name="author" SessionField="comp" Type="String" />
        </SelectParameters>
        
    </asp:SqlDataSource>
</asp:Content>

