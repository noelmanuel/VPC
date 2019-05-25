<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="addcompact.aspx.cs" Inherits="Admin_addcompact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .drd
        {
            border:1px solid #d9d9d9;
            outline:none;
        }
        .sp
        {
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size:15px;
            width:200px;
        }
        td
        {
            width:25%;
            padding-left:30px;
           
        }
        .scr
        {
            height:650px; 
            overflow:scroll;
        }
       
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="section_backgound">
    <table>
        <h3 style="padding-top:17px; margin-left:10%;">BUILT YOUR COMPACTIBILITY FOR EACH MOTHERBOARD</h3>
        <tr>
            <td style="vertical-align:top">
                <div class="scr">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1">
                <Columns>
                 <asp:TemplateField HeaderText="Select">
                     <ItemTemplate>
                         <asp:CheckBox ID="CheckBox1" runat="server" />
                     </ItemTemplate>
                     <ItemStyle HorizontalAlign="Center" />
                 </asp:TemplateField>
                 <asp:BoundField DataField="man" HeaderText="Motherboard" SortExpression="man">
                 <ItemStyle HorizontalAlign="Center" />
                 </asp:BoundField>
                 <asp:BoundField DataField="pric" HeaderText="Price" SortExpression="pric">
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
                    
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [pric] FROM [motherboard]"></asp:SqlDataSource>       
                    </div>                  
        </td>

        <td style="vertical-align:top">
            <div class="scr">
          <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource2">
              <Columns>
                  <asp:TemplateField HeaderText="Select">
                      <ItemTemplate>
                          <asp:CheckBox ID="CheckBox2" runat="server" />
                      </ItemTemplate>
                      <ItemStyle HorizontalAlign="Center" />
                  </asp:TemplateField>
                  <asp:BoundField DataField="man" HeaderText="RAM" SortExpression="man">
                  <ItemStyle HorizontalAlign="Center" />
                  </asp:BoundField>
                  <asp:BoundField DataField="pric" HeaderText="Price" SortExpression="pric">
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
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [pric] FROM [ram]"></asp:SqlDataSource>
                </div>
        </td>
        
                 
         <td style="vertical-align:top">
             <div class="scr">
             <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource3">
                 <Columns>
                     <asp:TemplateField HeaderText="Select">
                         <ItemTemplate>
                             <asp:CheckBox ID="CheckBox3" runat="server" />
                         </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" />
                     </asp:TemplateField>
                     <asp:BoundField DataField="man" HeaderText="GPU" SortExpression="man">
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:BoundField>
                     <asp:BoundField DataField="pric" HeaderText="Price" SortExpression="pric">
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
             <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [pric] FROM [gpu]"></asp:SqlDataSource>
            </div>
            </td>
        
            
        </tr>



        <tr>
            
            


            <td style="vertical-align:top">
                <div class="scr">
                <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource8">
                    <Columns>
                        <asp:TemplateField HeaderText="Select">
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox8" runat="server" />
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="man" HeaderText="Processor" SortExpression="man">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="pric" HeaderText="Price" SortExpression="pric">
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
                <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [pric] FROM [processor]"></asp:SqlDataSource>
                </div>
                </td>
            
            
        

        
            

            

            <td style="vertical-align:top">
                <div class="scr">
                <asp:GridView ID="GridView11" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource11">
                    <Columns>
                        <asp:TemplateField HeaderText="Select">
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox11" runat="server" />
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="man" HeaderText="Case" SortExpression="man">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="pric" HeaderText="Price" SortExpression="pric">
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
                <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [pric] FROM [casee]"></asp:SqlDataSource>
                </div>
                </td>           

        



        
            <td style="vertical-align:top">
                <div class="scr">
                <asp:GridView ID="GridView13" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource13">
                    <Columns>
                        <asp:TemplateField HeaderText="Select">
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox13" runat="server" />
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="man" HeaderText="SMPS" SortExpression="man">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="pric" HeaderText="Price" SortExpression="pric">
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
                <asp:SqlDataSource ID="SqlDataSource13" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [pric] FROM [smps]"></asp:SqlDataSource>
                </div>
                </td>
            </tr>
        <tr>
            
            <td>
                <span class="sp">RAM SLOT</span><br />
                <asp:DropDownList ID="DropDownList1" runat="server" Height="50px" Width="150px" CssClass="drd">
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                </asp:DropDownList><br /><br />
                <span class="sp">GPU SLOT</span><br />
                <asp:DropDownList ID="DropDownList2" Height="50px" Width="150px" CssClass="drd" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                </asp:DropDownList><br /><br />

                <asp:Button ID="Button1" runat="server" Text="SUBMIT" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="250" OnClick="Button1_Click" />
            </td>

            
        </tr>
    </table>
        
         
     
         
     
     
     
     </div>
</asp:Content>

