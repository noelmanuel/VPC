<%@ Page Title="" Language="C#" MasterPageFile="~/Company/company.master" AutoEventWireup="true" CodeFile="viewcombuild.aspx.cs" Inherits="Company_viewcombuild" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .drd
        {
            border:1px solid #d9d9d9;
            outline:none;
            max-height: 300px;
            height:30px;
            outline:none;
            font-size:12px;
                             
            
        }
        .sp
        {
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size:15px;
            width:200px;
            
            
        }
        .bt
        {
             border-radius:50px;
            cursor:pointer;
            font-weight:bold;
        }
        td{
            padding:30px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="section_backgound">
    <div style="height:790px;">

        <h3 style="">VIEW BUILT</h3>
        <div style="overflow:scroll;  height:350px; width:1000px;">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderWidth="1px" CellPadding="4" BorderStyle="None" Height="196px"   OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:TemplateField HeaderText="Id">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Motherboard">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Motherboard") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="RAM Slots">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("RamSlots") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="GPU Slots">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("GPUSlots") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Motherboard Price">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Product ID">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("productid") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
               
               
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Delete" ForeColor="Red">Delete</asp:LinkButton>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" ForeColor="#663399" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
            </div>
        <br />

        <table style=" border:1px solid #e4e4e4;">
            <tr>
                <td>
                    <span class="sp">SELECT PRODUCT ID</span><br /><br />
                    <asp:DropDownList ID="DropDownList2" Width="220px" CssClass="drd" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="productid" DataValueField="productid"></asp:DropDownList><br /><br /><br />
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [productid] FROM [cpubuildmb] WHERE ([author] = @author)">
                        <SelectParameters>
                            <asp:SessionParameter Name="author" SessionField="comp" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style=" border:1px solid #e4e4e4; ">

                    <span class="sp">RAM</span><br /><br />
                    <asp:DropDownList ID="DropDownList1" Width="220px" DataTextField="Ram" DataValueField="Ram" CssClass="drd" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3"></asp:DropDownList><br /><br /><br />
                     <asp:Button ID="Button1" runat="server" Text=" Delete" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="140" OnClick="Button1_Click"  />
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Ram] FROM [cpubuildram] WHERE ([productid] = @productid)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList2" Name="productid" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>

                <td  style=" border:1px solid #e4e4e4;">

                    <span class="sp">GPU</span><br /><br />
                    <asp:DropDownList ID="DropDownList3" Width="220px" DataTextField="GPU" DataValueField="GPU" CssClass="drd" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4"></asp:DropDownList><br /><br /><br />
                     <asp:Button ID="Button2" runat="server" Text=" Delete" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="140" OnClick="Button2_Click"  />

                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [GPU] FROM [cpubuildgpu] WHERE ([productid] = @productid)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList2" Name="productid" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>

                <td  style=" border:1px solid #e4e4e4;">

                    <span class="sp">CASE</span><br /><br />
                    <asp:DropDownList ID="DropDownList4" Width="220px" DataTextField="Casee" DataValueField="Casee" CssClass="drd" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5"></asp:DropDownList><br /><br /><br />
                     <asp:Button ID="Button3" runat="server" Text=" Delete" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="140" OnClick="Button3_Click"  />

                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Casee] FROM [cpubuildcase] WHERE ([productid] = @productid)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList2" Name="productid" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>

                <td  style=" border:1px solid #e4e4e4;">

                    <span class="sp">PROCESSOR</span><br /><br />
                    <asp:DropDownList ID="DropDownList5" Width="220px" DataTextField="Processor" DataValueField="Processor" CssClass="drd" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6"></asp:DropDownList><br /><br /><br />
                     <asp:Button ID="Button4" runat="server" Text=" Delete" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="140" OnClick="Button4_Click"  />

                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Processor] FROM [cpubuildpro] WHERE ([productid] = @productid)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList2" Name="productid" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>

                <td  style=" border:1px solid #e4e4e4;">

                    <span class="sp">SMPS</span><br /><br />
                    <asp:DropDownList ID="DropDownList6" Width="220px" CssClass="drd" DataTextField="smps" DataValueField="smps" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource7"></asp:DropDownList><br /><br /><br />
                     <asp:Button ID="Button5" runat="server" Text=" Delete" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="140" OnClick="Button5_Click"  />

                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [smps] FROM [cpubuildsmps] WHERE ([productid] = @productid)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList2" Name="productid" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>

               

            </tr>
            
            

        </table>
        <br />


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [cpubuildmb] WHERE ([author] = @author)">
            <SelectParameters>
                <asp:SessionParameter Name="author" SessionField="comp" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>



        </div>
          </div>
</asp:Content>
