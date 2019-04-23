<%@ Page Title="" Language="C#" MasterPageFile="~/Company/company.master" AutoEventWireup="true" CodeFile="viewproduct.aspx.cs" Inherits="Company_viewproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
    .btn_com{
        width:230px;
        height:70px;
        background-color:white;
        color:red;
        font-size:15px;
        border:1px solid red;
        border-radius:20px;
        cursor:pointer;
       margin-left:20px;
       font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
       outline:none;
        
       

    }
    .btn_com:hover{
        background-color:#f7d679;
        color:red;
        border:1px solid #f7d679;
    }
    .gri
    {
        margin-left:15px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 style=" margin-left:15px;">VIEW PRODUCT</h3>
         
         <br />
                <asp:Button ID="com" CssClass="btn_com" runat="server" Text="Motherboard" OnClick="mb_Click" /> 
                <asp:Button ID="user" CssClass="btn_com" runat="server" Text="RAM" OnClick="ram_Click" />
                <asp:Button ID="Button1" CssClass="btn_com" runat="server" Text="Processor" OnClick="pro_Click" />
                <asp:Button ID="Button2" CssClass="btn_com" runat="server" Text="GPU" OnClick="gpu_Click" /><br /><br />
                <asp:Button ID="Button3" CssClass="btn_com" runat="server" Text="CD Drive" OnClick="cd_Click" />
                <asp:Button ID="Button4" CssClass="btn_com" runat="server" Text="SMPS" OnClick="smps_Click" />
                <asp:Button ID="Button5" CssClass="btn_com" runat="server" Text="Hard Disk" OnClick="hd_Click" />
                <asp:Button ID="Button6" CssClass="btn_com" runat="server" Text="Sound Card" OnClick="sd_Click" /><br /><br />
                <asp:Button ID="Button7" CssClass="btn_com" runat="server" Text="SSD" OnClick="ssd_Click" />
                <asp:Button ID="Button8" CssClass="btn_com" runat="server" Text="Coolent" OnClick="coolent_Click" />
                <asp:Button ID="Button9" CssClass="btn_com" runat="server" Text="Case" OnClick="case_Click" />
                <asp:Button ID="Button10" CssClass="btn_com" runat="server" Text="Network Adaptor" OnClick="net_Click" /><br /><br />
                <asp:Button ID="Button11" CssClass="btn_com" runat="server" Text="Keyboard" OnClick="kb_Click" />
                <asp:Button ID="Button12" CssClass="btn_com" runat="server" Text="Mouse" OnClick="mice_Click" />
                <asp:Button ID="Button13" CssClass="btn_com" runat="server" Text="Monitor" OnClick="mon_Click" />
                <asp:Button ID="Button14" CssClass="btn_com" runat="server" Text="Speaker" OnClick="speaker_Click" /><br /><br />
                <asp:Button ID="Button15" CssClass="btn_com" runat="server" Text="UPS" OnClick="ups_Click" />
                <asp:Button ID="Button16" CssClass="btn_com" runat="server" Text="OS" OnClick="os_Click" /> 
                <asp:Button ID="Button17" CssClass="btn_com" runat="server" Text="Software" OnClick="so_Click" />
                <asp:Button ID="Button18" CssClass="btn_com" runat="server" Text="Case Fan" OnClick="soo_Click" />  

         <br />

    <asp:Panel ID="Panel1" runat="server">
        <h3 style=" margin-left:15px;">MOTHERBOARD</h3>
        <asp:GridView ID="GridView1" runat="server" CssClass="gri" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" Width="1409px">
            <Columns>
                <asp:BoundField DataField="mbId" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="mbId" />
                <asp:BoundField DataField="man" HeaderText="brand" SortExpression="man" />
                <asp:BoundField DataField="mod" HeaderText="model" SortExpression="mod" />
                <asp:BoundField DataField="col" HeaderText="color" SortExpression="col" />
                <asp:BoundField DataField="cpu" HeaderText="CPU Type" SortExpression="cpu" />
                <asp:BoundField DataField="chi" HeaderText="chipset" SortExpression="chi" />
                <asp:BoundField DataField="mem" HeaderText="memory" SortExpression="mem" />
                <asp:BoundField DataField="memtyp" HeaderText="memory type" SortExpression="memtyp" />
                <asp:BoundField DataField="factor" HeaderText="form factor" SortExpression="factor" />
                <asp:BoundField DataField="onbhea" HeaderText="onboard graphics" SortExpression="onbhea" />
                <asp:BoundField DataField="onbeth" HeaderText="onboard ethernet" SortExpression="onbeth" />
                <asp:BoundField DataField="sat" HeaderText="sata 6gb/s" SortExpression="sat" />
                <asp:BoundField DataField="sli" HeaderText="sli support" SortExpression="sli" />
                <asp:BoundField DataField="cro" HeaderText="crossfire" SortExpression="cro" />
                <asp:BoundField DataField="onb" HeaderText="onboard usb" SortExpression="onb" />
                <asp:BoundField DataField="rai" HeaderText="raid" SortExpression="rai" />
                <asp:BoundField DataField="max" HeaderText="supported memory" SortExpression="max" />
                <asp:BoundField DataField="pric" HeaderText="price" SortExpression="pric" />
                <asp:BoundField DataField="stock" HeaderText="stock" SortExpression="stock" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [mbId], [man], [mod], [col], [cpu], [chi], [mem], [memtyp], [factor], [onbhea], [onbeth], [sat], [sli], [cro], [onb], [rai], [max], [pric], [stock] FROM [motherboard] WHERE ([brand] = @brand)">
            <SelectParameters>
                <asp:SessionParameter Name="brand" SessionField="comp" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
         <h3 style=" margin-left:15px;">RAM</h3>
        <asp:GridView ID="GridView2" CssClass="gri" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="1409px" CellSpacing="2" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="rid" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="rid" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="man" HeaderText="brand" SortExpression="man" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="mod" HeaderText="model" SortExpression="mod" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="col" HeaderText="color" SortExpression="col" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="memtyp" HeaderText="memtype" SortExpression="memtyp" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="ddr" HeaderText="ddr" SortExpression="ddr" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="fre" HeaderText="frequecy" SortExpression="fre" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="siz" HeaderText="size" SortExpression="siz" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="cas" HeaderText="cas latency" SortExpression="cas" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="tim" HeaderText="timing" SortExpression="tim" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="vol" HeaderText="voltage" SortExpression="vol" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="hea" HeaderText="heat spreader" SortExpression="hea" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="ecc" HeaderText="ecc" SortExpression="ecc" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="regi" HeaderText="registered" SortExpression="regi" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="pric" HeaderText="price" SortExpression="pric" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="stock" HeaderText="stock" SortExpression="stock" >
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [rid], [man], [mod], [col], [memtyp], [ddr], [fre], [siz], [cas], [tim], [vol], [hea], [ecc], [regi], [pric], [stock] FROM [ram] WHERE ([brand] = @brand)">
            <SelectParameters>
                <asp:SessionParameter Name="brand" SessionField="comp" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>

    <asp:Panel ID="Panel3" runat="server">
         <h3 style=" margin-left:15px;">PROCESSOR</h3>
        <asp:GridView ID="GridView3" CssClass="gri" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
    </asp:Panel>

    <asp:Panel ID="Panel4" runat="server">
         <h3 style=" margin-left:15px;">GPU</h3>
        <asp:GridView ID="GridView4" CssClass="gri" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
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
        <asp:SqlDataSource ID="SqlDataSource4" runat="server"></asp:SqlDataSource>
    </asp:Panel>
            
</asp:Content>



