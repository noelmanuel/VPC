<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="approveorder.aspx.cs" Inherits="Admin_approveorder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="section_backgound">
    <div style="height:1190px;margin-left:10%;">

        <h3 style="">APPROVE USER</h3><br />
        <div style="overflow:scroll; height:400px; width:80%;">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Transid" HeaderText="Transid" SortExpression="Transid" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="grandtot" HeaderText="grandtot" SortExpression="grandtot" />
                <asp:BoundField DataField="addr1" HeaderText="addr1" SortExpression="addr1" />
                <asp:BoundField DataField="addr2" HeaderText="addr2" SortExpression="addr2" />
                <asp:BoundField DataField="addr3" HeaderText="addr3" SortExpression="addr3" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="payment_method" HeaderText="payment_method" SortExpression="payment_method" />
                <asp:BoundField DataField="cardno" HeaderText="cardno" SortExpression="cardno" />
                <asp:BoundField DataField="exp_month" HeaderText="exp_month" SortExpression="exp_month" />
                <asp:BoundField DataField="exp_year" HeaderText="exp_year" SortExpression="exp_year" />
                <asp:BoundField DataField="cvv" HeaderText="cvv" SortExpression="cvv" />
                <asp:BoundField DataField="datee" HeaderText="datee" SortExpression="datee" />
                <asp:BoundField DataField="cardholder_name" HeaderText="cardholder_name" SortExpression="cardholder_name" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
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
        <BR />
        <h3 style="">SELECT USER</h3>

        <div style="overflow:scroll; height:400px; width:80%;">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnRowUpdating="GridView2_RowUpdating" style="text-align: center" Width="1352px" OnRowDeleting="GridView2_RowDeleting">
            <Columns>
                <asp:TemplateField HeaderText="Transaction ID">
                    <ItemTemplate>
                        &nbsp;<asp:Label ID="Label1" runat="server" Text='<%# Eval("Transid") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle Height="50px" />
                    <ItemStyle HorizontalAlign="Center" Height="30px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="update" ForeColor="#0099CC">Approve</asp:LinkButton>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Delete" ForeColor="Red">Delete</asp:LinkButton>
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


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [orderrr]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [orderpp]"></asp:SqlDataSource>
        </div>
        </div>
</asp:Content>

