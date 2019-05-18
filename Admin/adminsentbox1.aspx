<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="adminsentbox1.aspx.cs" Inherits="Admin_adminsentbox1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <style>
        .auto-style1 
        {
            width: 540px;
            height: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="section_backgound">
    <div style="height:870px; margin-left:185px;">
        <h3 style="">SENT MAIL</h3>
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="16" Font-Underline="False" Font-Overline="False" ForeColor="Red"></asp:Label>

         <div style=" overflow:scroll; height:500px;">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" Width="1145px" OnRowDeleting="GridView1_RowDeleting" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                 <Columns>
                     <asp:TemplateField HeaderText="No">
                         <ItemTemplate>
                             <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                         </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" />
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="User">
                         <ItemTemplate>
                             <asp:Label ID="Label2" runat="server" Text='<%# Eval("userr") %>'></asp:Label>
                         </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" />
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Subject">
                         <ItemTemplate>
                             <asp:Label ID="Label3" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                         </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                    
                    
                     <asp:TemplateField HeaderText="Message">
                         <ItemTemplate>
                             <asp:LinkButton ID="LinkButton1" runat="server" BackColor="Red" CommandName="Select" ForeColor="White" CommandArgument="<%# Container.DataItemIndex %>" Height="20px" Width="50px">View</asp:LinkButton>
                         </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" />
                     </asp:TemplateField>
                    
                     <asp:TemplateField HeaderText="Remove">
                         <ItemTemplate>
                             <asp:LinkButton ID="LinkButton2" runat="server" BackColor="Red" CommandName="Delete" CommandArgument="<%# Container.DataItemIndex %>" ForeColor="White" Height="20px"  Width="50px">X</asp:LinkButton>
                         </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" />
                     </asp:TemplateField>
                 </Columns>
                 <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
                 <HeaderStyle BackColor="#990000" Height="40px" Font-Bold="True" ForeColor="White" />
                 <PagerStyle ForeColor="#333333" HorizontalAlign="Center" BackColor="#FFCC66" />
                 <RowStyle BackColor="#FFFBD6" Height="30px" ForeColor="#333333" />
                
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                
                 <SortedAscendingCellStyle BackColor="#FDF5AC" />
                 <SortedAscendingHeaderStyle BackColor="#4D0000" />
                 <SortedDescendingCellStyle BackColor="#FCF6C0" />
                 <SortedDescendingHeaderStyle BackColor="#820000" />
             </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [recompmessage]">
            </asp:SqlDataSource>
        </div>

        <table>
            <tr>
                <td style="background-color:#efefef; padding:30px;">
                    <asp:Panel ID="Panel1" runat="server">
                        <span class="spa">Message</span><br />
                        <textarea id="TextArea1" runat="server" class="auto-style1"></textarea><br />
                       

                    </asp:Panel>

                </td>

                
                  </tr>
                  </table>
        </div>
         </div>
</asp:Content>


