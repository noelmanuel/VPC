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
        width:1409px;
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
    <div style="height:400px; overflow:scroll;">

    <asp:Panel ID="Panel1" runat="server">
        <h3 style=" margin-left:15px;">MOTHERBOARD</h3>
        <asp:GridView ID="GridView1" runat="server" CssClass="gri" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1">
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
        <asp:GridView ID="GridView2" CssClass="gri" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="4" CellSpacing="2" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
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
        <asp:GridView ID="GridView3" CssClass="gri" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:BoundField DataField="man" HeaderText="Manufacturer" SortExpression="man" />
                <asp:BoundField DataField="mod" HeaderText="Model" SortExpression="mod" />
                <asp:BoundField DataField="wid" HeaderText="Data Width" SortExpression="wid" />
                <asp:BoundField DataField="soc" HeaderText="Socket" SortExpression="soc" />
                <asp:BoundField DataField="fre" HeaderText="Operating Frequency" SortExpression="fre" />
                <asp:BoundField DataField="tur" HeaderText="Turbo Frequency" SortExpression="tur" />
                <asp:BoundField DataField="cor" HeaderText="Cores" SortExpression="cor" />
                <asp:BoundField DataField="max" HeaderText="max" SortExpression="max" />
                <asp:BoundField DataField="l1" HeaderText="L1 Cache" SortExpression="l1" />
                <asp:BoundField DataField="l2" HeaderText="L2 Cache" SortExpression="l2" />
                <asp:BoundField DataField="l3" HeaderText="L3 Cache" SortExpression="l3" />
                <asp:BoundField DataField="lit" HeaderText="Lithography" SortExpression="lit" />
                <asp:BoundField DataField="the" HeaderText="Thermal Design Power" SortExpression="the" />
                <asp:BoundField DataField="inc" HeaderText="Includes CPU Cooler" SortExpression="inc" />
                <asp:BoundField DataField="sim" HeaderText="Simultaneous Multithreading" SortExpression="sim" />
                <asp:BoundField DataField="inte" HeaderText="Maximum Supported Memory" SortExpression="inte" />
                <asp:BoundField DataField="pric" HeaderText="Price" SortExpression="pric" />
                <asp:BoundField DataField="stock" HeaderText="Stock" SortExpression="stock" />
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [mod], [wid], [soc], [fre], [tur], [cor], [max], [l1], [l2], [l3], [lit], [the], [inc], [sim], [inte], [pric], [stock] FROM [processor] WHERE ([brand] = @brand)">
            <SelectParameters>
                <asp:SessionParameter Name="brand" SessionField="comp" Type="String" />
            </SelectParameters>
         </asp:SqlDataSource>
    </asp:Panel>

    <asp:Panel ID="Panel4" runat="server">
         <h3 style=" margin-left:15px;">GPU</h3>
        <asp:GridView ID="GridView4" CssClass="gri" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" AutoGenerateColumns="False" DataSourceID="SqlDataSource4">
            <Columns>
                <asp:BoundField DataField="man" HeaderText="Manufacturer" SortExpression="man" />
                <asp:BoundField DataField="mod" HeaderText="Model" SortExpression="mod" />
                <asp:BoundField DataField="col" HeaderText="Color" SortExpression="col" />
                <asp:BoundField DataField="inte" HeaderText="Interface" SortExpression="inte" />
                <asp:BoundField DataField="chi" HeaderText="Chipset" SortExpression="chi" />
                <asp:BoundField DataField="mem" HeaderText="Memory Size" SortExpression="mem" />
                <asp:BoundField DataField="memtyp" HeaderText="Memory Type" SortExpression="memtyp" />
                <asp:BoundField DataField="cor" HeaderText="Core Clock" SortExpression="cor" />
                <asp:BoundField DataField="boo" HeaderText="Boost Clock" SortExpression="boo" />
                <asp:BoundField DataField="tdp" HeaderText="TDP" SortExpression="tdp" />
                <asp:BoundField DataField="fan" HeaderText="Fan" SortExpression="fan" />
                <asp:BoundField DataField="cro" HeaderText="CrossFire Support" SortExpression="cro" />
                <asp:BoundField DataField="sli" HeaderText="SLI Support" SortExpression="sli" />
                <asp:BoundField DataField="len" HeaderText="Length" SortExpression="len" />
                <asp:BoundField DataField="sup" HeaderText="Supports G-Sync" SortExpression="sup" />
                <asp:BoundField DataField="dvi" HeaderText="dvi" SortExpression="dvi" />
                <asp:BoundField DataField="dis" HeaderText="DisplayPort" SortExpression="dis" />
                <asp:BoundField DataField="hdm" HeaderText="hdmi" SortExpression="hdm" />
                <asp:BoundField DataField="pric" HeaderText="Price" SortExpression="pric" />
                <asp:BoundField DataField="stock" HeaderText="Stock" SortExpression="stock" />
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
        
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [mod], [col], [inte], [chi], [mem], [memtyp], [cor], [boo], [tdp], [fan], [cro], [sli], [len], [sup], [dvi], [dis], [hdm], [pric], [stock] FROM [gpu] WHERE ([brand] = @brand)">
        <SelectParameters>
                <asp:SessionParameter Name="brand" SessionField="comp" Type="String" />
            </SelectParameters>
         </asp:SqlDataSource>
    </asp:Panel>

    <asp:Panel ID="Panel5" runat="server">
         <h3 style=" margin-left:15px;">CD DRIVE</h3>
        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource5">
            <Columns>
                <asp:BoundField DataField="man" HeaderText="MANUFACTURER" SortExpression="man">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="mod" HeaderText="MODEL" SortExpression="mod">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="forr" HeaderText="FORM FACTOR" SortExpression="forr">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="inte" HeaderText="INTERFACE" SortExpression="inte" />
                <asp:BoundField DataField="cac" HeaderText="CACHE" SortExpression="cac" />
                <asp:BoundField DataField="cd1" HeaderText="CD-ROM SPEED" SortExpression="cd1" />
                <asp:BoundField DataField="cd2" HeaderText="cd2" SortExpression="cd2" />
                <asp:BoundField DataField="cd3" HeaderText="CD-R SPEED" SortExpression="cd3" />
                <asp:BoundField DataField="dvd1" HeaderText="CD-RW SPEED" SortExpression="dvd1" />
                <asp:BoundField DataField="dvd2" HeaderText="DVD-ROM SPEED" SortExpression="dvd2" />
                <asp:BoundField DataField="dvd3" HeaderText="DVD+R SPEED" SortExpression="dvd3" />
                <asp:BoundField DataField="dvd4" HeaderText="DVD+R DUAL-LAYER SPEED" SortExpression="dvd4" />
                <asp:BoundField DataField="dvd5" HeaderText="DVD+RW SPEED" SortExpression="dvd5" />
                <asp:BoundField DataField="dvd6" HeaderText="DVD-R SPEED" SortExpression="dvd6" />
                <asp:BoundField DataField="dvd7" HeaderText="DVD-R DUAL-LAYER SPEED" SortExpression="dvd7" />
                <asp:BoundField DataField="dvd8" HeaderText="DVD-RW SPEED" SortExpression="dvd8" />
                <asp:BoundField DataField="pric" HeaderText="PRICE" SortExpression="pric" />
                <asp:BoundField DataField="stock" HeaderText="STOCK" SortExpression="stock" />
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
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [mod], [forr], [inte], [cac], [cd1], [cd2], [cd3], [dvd1], [dvd2], [dvd3], [dvd4], [dvd5], [dvd6], [dvd7], [dvd8], [pric], [stock] FROM [cddrive] WHERE ([brand] = @brand)">
            <SelectParameters>
                <asp:SessionParameter Name="brand" SessionField="comp" Type="String" />
            </SelectParameters>
         </asp:SqlDataSource>
    </asp:Panel>

    

    <asp:Panel ID="Panel9" runat="server">
         <h3 style=" margin-left:15px;">SMPS</h3>
        <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource9">
            <Columns>
                <asp:BoundField DataField="man" HeaderText="MANUFACTURER" SortExpression="man" />
                <asp:BoundField DataField="mod" HeaderText="MODEL" SortExpression="mod" />
                <asp:BoundField DataField="par" HeaderText="PART" SortExpression="par" />
                <asp:BoundField DataField="typ" HeaderText="TYPE" SortExpression="typ" />
                <asp:BoundField DataField="wat" HeaderText="WATTAGE" SortExpression="wat" />
                <asp:BoundField DataField="modu" HeaderText="MODULAR" SortExpression="modu" />
                <asp:BoundField DataField="eff" HeaderText="EFFICIENCY CERTIFICATION" SortExpression="eff" />
                <asp:BoundField DataField="pci" HeaderText="PCI-EXPRESS 6+2-PIN CONNECTORS" SortExpression="pci" />
                <asp:BoundField DataField="pric" HeaderText="PRICE" SortExpression="pric" />
                <asp:BoundField DataField="stock" HeaderText="STOCK" SortExpression="stock" />
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
        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [mod], [par], [typ], [wat], [modu], [eff], [pci], [pric], [stock] FROM [smps] WHERE ([brand] = @brand)">
            <SelectParameters>
                <asp:SessionParameter Name="brand" SessionField="comp" Type="String" />
            </SelectParameters>
         </asp:SqlDataSource>
    </asp:Panel>

    <asp:Panel ID="Panel10" runat="server">
         <h3 style=" margin-left:15px;">HARD DISK</h3>
        <asp:GridView ID="GridView10" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource10">
            <Columns>
                <asp:BoundField DataField="man" HeaderText="MANUFACTURER" SortExpression="man" />
                <asp:BoundField DataField="mod" HeaderText="MODEL" SortExpression="mod" />
                <asp:BoundField DataField="cap" HeaderText="CAPACITY" SortExpression="cap" />
                <asp:BoundField DataField="inte" HeaderText="INTERFACE" SortExpression="inte" />
                <asp:BoundField DataField="cac" HeaderText="CACHE" SortExpression="cac" />
                <asp:BoundField DataField="rpm" HeaderText="RPM" SortExpression="rpm" />
                <asp:BoundField DataField="fac" HeaderText="FORM FACTOR" SortExpression="fac" />
                <asp:BoundField DataField="gb" HeaderText="GB" SortExpression="gb" />
                <asp:BoundField DataField="pric" HeaderText="PRICE" SortExpression="pric" />
                <asp:BoundField DataField="stock" HeaderText="STOCK" SortExpression="stock" />
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
        <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [mod], [cap], [inte], [cac], [rpm], [fac], [gb], [pric], [stock] FROM [hdd] WHERE ([brand] = @brand)">
            <SelectParameters>
                <asp:SessionParameter Name="brand" SessionField="comp" Type="String" />
            </SelectParameters>
         </asp:SqlDataSource>
    </asp:Panel>

    <asp:Panel ID="Panel11" runat="server">
         <h3 style=" margin-left:15px;">SOUNDCARD</h3>
        <asp:GridView ID="GridView11" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource11">
            <Columns>
                <asp:BoundField DataField="man" HeaderText="MANUFACTURER" SortExpression="man" />
                <asp:BoundField DataField="mod" HeaderText="MODEL" SortExpression="mod" />
                <asp:BoundField DataField="par" HeaderText="PART" SortExpression="par" />
                <asp:BoundField DataField="cha" HeaderText="CHANNELS" SortExpression="cha" />
                <asp:BoundField DataField="inte" HeaderText="INTERFACE" SortExpression="inte" />
                <asp:BoundField DataField="dig" HeaderText="DIGITAL AUDIO" SortExpression="dig" />
                <asp:BoundField DataField="sig" HeaderText="SIGNAL-TO-NOISE RATIO" SortExpression="sig" />
                <asp:BoundField DataField="sam" HeaderText="SAMPLE RATE" SortExpression="sam" />
                <asp:BoundField DataField="pric" HeaderText="PRICE" SortExpression="pric" />
                <asp:BoundField DataField="stock" HeaderText="STOCK" SortExpression="stock" />
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
        <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [mod], [par], [cha], [inte], [dig], [sig], [sam], [pric], [stock] FROM [soundcard] WHERE ([brand] = @brand)">
            <SelectParameters>
                <asp:SessionParameter Name="brand" SessionField="comp" Type="String" />
            </SelectParameters>
         </asp:SqlDataSource>
    </asp:Panel>

    <asp:Panel ID="Panel12" runat="server">
         <h3 style=" margin-left:15px;">SSD</h3>
        <asp:GridView ID="GridView12" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource12">
            <Columns>
                <asp:BoundField DataField="man" HeaderText="MANUFACTURER" SortExpression="man" />
                <asp:BoundField DataField="mod" HeaderText="MODEL" SortExpression="mod" />
                <asp:BoundField DataField="par" HeaderText="PART" SortExpression="par" />
                <asp:BoundField DataField="inte" HeaderText="INTERFACE" SortExpression="inte" />
                <asp:BoundField DataField="fac" HeaderText="FORM FACTOR" SortExpression="fac" />
                <asp:BoundField DataField="cap" HeaderText="CAPACITY" SortExpression="cap" />
                <asp:BoundField DataField="ope" HeaderText="OPERATION" SortExpression="ope" />
                <asp:BoundField DataField="pric" HeaderText="PRICE" SortExpression="pric" />
                <asp:BoundField DataField="stock" HeaderText="STOCK" SortExpression="stock" />
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
        <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [mod], [par], [inte], [fac], [cap], [ope], [pric], [stock] FROM [ssd] WHERE ([brand] = @brand)">
            <SelectParameters>
                <asp:SessionParameter Name="brand" SessionField="comp" Type="String" />
            </SelectParameters>
         </asp:SqlDataSource>
    </asp:Panel>

    <asp:Panel ID="Panel13" runat="server">
         <h3 style=" margin-left:15px;">CPU COOLER</h3>
        <asp:GridView ID="GridView13" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource13">
            <Columns>
                <asp:BoundField DataField="man" HeaderText="MANUFACTURER" SortExpression="man" />
                <asp:BoundField DataField="mod" HeaderText="MODEL" SortExpression="mod" />
                <asp:BoundField DataField="sup" HeaderText="SUPPORTED SOCKETS" SortExpression="sup" />
                <asp:BoundField DataField="liq" HeaderText="LIQUID COOLED" SortExpression="liq" />
                <asp:BoundField DataField="radi" HeaderText="BEARING TYPE" SortExpression="radi" />
                <asp:BoundField DataField="noi" HeaderText="NOISE LEVEL" SortExpression="noi" />
                <asp:BoundField DataField="fan" HeaderText="FAN RPM" SortExpression="fan" />
                <asp:BoundField DataField="pric" HeaderText="PRICE" SortExpression="pric" />
                <asp:BoundField DataField="stock" HeaderText="STOCK" SortExpression="stock" />
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
        <asp:SqlDataSource ID="SqlDataSource13" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [mod], [sup], [liq], [radi], [noi], [fan], [pric], [stock] FROM [cooler] WHERE ([brand] = @brand)">
            <SelectParameters>
                <asp:SessionParameter Name="brand" SessionField="comp" Type="String" />
            </SelectParameters>
         </asp:SqlDataSource>
    </asp:Panel>

    <asp:Panel ID="Panel14" runat="server">
         <h3 style=" margin-left:15px;">CASE</h3>
        <asp:GridView ID="GridView14" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource14">
            <Columns>
                <asp:BoundField DataField="man" HeaderText="MANUFACTURER" SortExpression="man" />
                <asp:BoundField DataField="mod" HeaderText="MODEL" SortExpression="mod" />
                <asp:BoundField DataField="par" HeaderText="PART" SortExpression="par" />
                <asp:BoundField DataField="col" HeaderText="COLOR" SortExpression="col" />
                <asp:BoundField DataField="typ" HeaderText="TYPE" SortExpression="typ" />
                <asp:BoundField DataField="inc" HeaderText="INCLUDES POWER SUPPLY" SortExpression="inc" />
                <asp:BoundField DataField="inte" HeaderText="INTERNAL 2.5&quot; BAYS" SortExpression="inte" />
                <asp:BoundField DataField="inte1" HeaderText="INTERNAL 3.5&quot; BAYS" SortExpression="inte1" />
                <asp:BoundField DataField="mot" HeaderText="MOTHERBOARD COMPATIBILITY" SortExpression="mot" />
                <asp:BoundField DataField="fro" HeaderText="FRONT PANEL USB 3.0 PORTS" SortExpression="fro" />
                <asp:BoundField DataField="maxi" HeaderText="MAXIMUM VIDEO CARD LENGTH" SortExpression="maxi" />
                <asp:BoundField DataField="dime" HeaderText="DIMENSIONS" SortExpression="dime" />
                <asp:BoundField DataField="pric" HeaderText="PRICE" SortExpression="pric" />
                <asp:BoundField DataField="stock" HeaderText="STOCK" SortExpression="stock" />
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
        <asp:SqlDataSource ID="SqlDataSource14" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [mod], [par], [col], [typ], [inc], [inte], [inte1], [mot], [fro], [maxi], [dime], [pric], [stock] FROM [casee] WHERE ([brand] = @brand)">
            <SelectParameters>
                <asp:SessionParameter Name="brand" SessionField="comp" Type="String" />
            </SelectParameters>
         </asp:SqlDataSource>
    </asp:Panel>

    <asp:Panel ID="Panel15" runat="server">
         <h3 style=" margin-left:15px;">NETWORKCARD</h3>
        <asp:GridView ID="GridView15" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource15">
            <Columns>
                <asp:BoundField DataField="man" HeaderText="MANUFACTURER" SortExpression="man" />
                <asp:BoundField DataField="mod" HeaderText="MODEL" SortExpression="mod" />
                <asp:BoundField DataField="inte" HeaderText="INTERFACE" SortExpression="inte" />
                <asp:BoundField DataField="pro" HeaderText="PROTOCOLS" SortExpression="pro" />
                <asp:BoundField DataField="fea" HeaderText="FEATURES" SortExpression="fea" />
                <asp:BoundField DataField="pric" HeaderText="PRICE" SortExpression="pric" />
                <asp:BoundField DataField="stock" HeaderText="STOCK" SortExpression="stock" />
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
        <asp:SqlDataSource ID="SqlDataSource15" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [mod], [inte], [pro], [fea], [pric], [stock] FROM [net] WHERE ([brand] = @brand)">
            <SelectParameters>
                <asp:SessionParameter Name="brand" SessionField="comp" Type="String" />
            </SelectParameters>
         </asp:SqlDataSource>
    </asp:Panel>

    <asp:Panel ID="Panel16" runat="server">
         <h3 style=" margin-left:15px;">KEYBOARD</h3>
        <asp:GridView ID="GridView16" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource16">
            <Columns>
                <asp:BoundField DataField="mod" HeaderText="MANUFACTURER" SortExpression="mod" />
                <asp:BoundField DataField="par" HeaderText="PART" SortExpression="par" />
                <asp:BoundField DataField="col" HeaderText="COLOR" SortExpression="col" />
                <asp:BoundField DataField="des" HeaderText="DESIGN STYLE" SortExpression="des" />
                <asp:BoundField DataField="typ" HeaderText="TYPE" SortExpression="typ" />
                <asp:BoundField DataField="bac" HeaderText="BACKLIT" SortExpression="bac" />
                <asp:BoundField DataField="mec" HeaderText="MECHANICAL" SortExpression="mec" />
                <asp:BoundField DataField="inc" HeaderText="INCLUDES MOUSE" SortExpression="inc" />
                <asp:BoundField DataField="pric" HeaderText="PRICE" SortExpression="pric" />
                <asp:BoundField DataField="stock" HeaderText="STOCK" SortExpression="stock" />
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
        <asp:SqlDataSource ID="SqlDataSource16" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [mod], [par], [col], [des], [typ], [bac], [mec], [inc], [pric], [stock] FROM [keyboard] WHERE ([brand] = @brand)">
            <SelectParameters>
                <asp:SessionParameter Name="brand" SessionField="comp" Type="String" />
            </SelectParameters>
         </asp:SqlDataSource>
    </asp:Panel>

    <asp:Panel ID="Panel17" runat="server">
         <h3 style=" margin-left:15px;">MOUSE</h3>
        <asp:GridView ID="GridView17" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource17">
            <Columns>
                <asp:BoundField DataField="man" HeaderText="MANUFACTURER" SortExpression="man" />
                <asp:BoundField DataField="mod" HeaderText="MODEL" SortExpression="mod" />
                <asp:BoundField DataField="par" HeaderText="PART " SortExpression="par" />
                <asp:BoundField DataField="col" HeaderText="COLOR" SortExpression="col" />
                <asp:BoundField DataField="tra" HeaderText="TRACKING METHOD" SortExpression="tra" />
                <asp:BoundField DataField="maxi" HeaderText="MAXIMUM DPI" SortExpression="maxi" />
                <asp:BoundField DataField="han" HeaderText="HAND ORIENTATION" SortExpression="han" />
                <asp:BoundField DataField="pric" HeaderText="PRICE" SortExpression="pric" />
                <asp:BoundField DataField="stock" HeaderText="STOCK" SortExpression="stock" />
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
        <asp:SqlDataSource ID="SqlDataSource17" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [mod], [par], [col], [tra], [maxi], [han], [pric], [stock] FROM [mouse] WHERE ([brand] = @brand)">
            <SelectParameters>
                <asp:SessionParameter Name="brand" SessionField="comp" Type="String" />
            </SelectParameters>
         </asp:SqlDataSource>
    </asp:Panel>

    <asp:Panel ID="Panel18" runat="server">
         <h3 style=" margin-left:15px;">MONITOR</h3>
        <asp:GridView ID="GridView18" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource18">
            <Columns>
                <asp:BoundField DataField="man" HeaderText="MANUFACTURER" SortExpression="man" />
                <asp:BoundField DataField="mod" HeaderText="MODEL" SortExpression="mod" />
                <asp:BoundField DataField="par" HeaderText="PART" SortExpression="par" />
                <asp:BoundField DataField="scr" HeaderText="SCREEN SIZE" SortExpression="scr" />
                <asp:BoundField DataField="rec" HeaderText="RECOMMENDED RESOLUTION" SortExpression="rec" />
                <asp:BoundField DataField="wid" HeaderText="WIDESCREEN" SortExpression="wid" />
                <asp:BoundField DataField="aspe" HeaderText="ASPECT RATIO" SortExpression="aspe" />
                <asp:BoundField DataField="bui" HeaderText="BUILT-IN SPEAKERS" SortExpression="bui" />
                <asp:BoundField DataField="led" HeaderText="LED" SortExpression="led" />
                <asp:BoundField DataField="pan" HeaderText="PANEL TYPE" SortExpression="pan" />
                <asp:BoundField DataField="refr" HeaderText="REFRESH RATE" SortExpression="refr" />
                <asp:BoundField DataField="res" HeaderText="RESPONSE TIME" SortExpression="res" />
                <asp:BoundField DataField="contr" HeaderText="CONTRAST RATIO" SortExpression="contr" />
                <asp:BoundField DataField="bri" HeaderText="BRIGHTNESS" SortExpression="bri" />
                <asp:BoundField DataField="dis" HeaderText="DISPLAY COLORS" SortExpression="dis" />
                <asp:BoundField DataField="vie" HeaderText="VIEWING ANGLE" SortExpression="vie" />
                <asp:BoundField DataField="dvi" HeaderText="DVI" SortExpression="dvi" />
                <asp:BoundField DataField="hdm" HeaderText="HDMI" SortExpression="hdm" />
                <asp:BoundField DataField="pric" HeaderText="pric" SortExpression="pric" />
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
        <asp:SqlDataSource ID="SqlDataSource18" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [mod], [par], [scr], [rec], [wid], [aspe], [bui], [led], [pan], [refr], [res], [contr], [bri], [dis], [vie], [dvi], [hdm], [pric], [stock] FROM [monitor] WHERE ([brand] = @brand)">
            <SelectParameters>
                <asp:SessionParameter Name="brand" SessionField="comp" Type="String" />
            </SelectParameters>
         </asp:SqlDataSource>
    </asp:Panel>

    <asp:Panel ID="Panel19" runat="server">
         <h3 style=" margin-left:15px;">SPEAKER</h3>
        <asp:GridView ID="GridView19" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource19">
            <Columns>
                <asp:BoundField DataField="man" HeaderText="MANUFACTURER" SortExpression="man" />
                <asp:BoundField DataField="mod" HeaderText="MODEL" SortExpression="mod" />
                <asp:BoundField DataField="con" HeaderText="CONFIGURATION" SortExpression="con" />
                <asp:BoundField DataField="tot" HeaderText="TOTAL POWER" SortExpression="tot" />
                <asp:BoundField DataField="pow" HeaderText="POWER (FRONT, EACH)" SortExpression="pow" />
                <asp:BoundField DataField="pow1" HeaderText="POWER (SUBWOOFER)" SortExpression="pow1" />
                <asp:BoundField DataField="pric" HeaderText="PRICE" SortExpression="pric" />
                <asp:BoundField DataField="stock" HeaderText="STOCK" SortExpression="stock" />
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
        <asp:SqlDataSource ID="SqlDataSource19" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [mod], [con], [tot], [pow], [pow1], [pric], [stock] FROM [speaker] WHERE ([brand] = @brand)">
            <SelectParameters>
                <asp:SessionParameter Name="brand" SessionField="comp" Type="String" />
            </SelectParameters>
         </asp:SqlDataSource>
    </asp:Panel>

    <asp:Panel ID="Panel20" runat="server">
         <h3 style=" margin-left:15px;">UPS</h3>
        <asp:GridView ID="GridView20" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource20">
            <Columns>
                <asp:BoundField DataField="man" HeaderText="MANUFACTURER" SortExpression="man" />
                <asp:BoundField DataField="mod" HeaderText="MODEL" SortExpression="mod" />
                <asp:BoundField DataField="load" HeaderText="LOAD CAPACITY (VA)" SortExpression="load" />
                <asp:BoundField DataField="load1" HeaderText="LOAD CAPACITY (W)" SortExpression="load1" />
                <asp:BoundField DataField="ala" HeaderText="ALARM" SortExpression="ala" />
                <asp:BoundField DataField="bac" HeaderText="BACKUP/RUN TIME (FULL LOAD)" SortExpression="bac" />
                <asp:BoundField DataField="bac1" HeaderText="BACKUP/RUN TIME (HALF LOAD)" SortExpression="bac1" />
                <asp:BoundField DataField="outp" HeaderText="OUTPUT VOLTAGE" SortExpression="outp" />
                <asp:BoundField DataField="maxi" HeaderText="MAXIMUM BATTERY RECHARGE TIME" SortExpression="maxi" />
                <asp:BoundField DataField="inp" HeaderText="INPUT VOLTAGE" SortExpression="inp" />
                <asp:BoundField DataField="hot" HeaderText="HOT SWAPPABLE" SortExpression="hot" />
                <asp:BoundField DataField="fac" HeaderText="FORM FACTOR" SortExpression="fac" />
                <asp:BoundField DataField="emg" HeaderText="EMERGENCY POWER OFF" SortExpression="emg" />
                <asp:BoundField DataField="datp" HeaderText="DATALINE PROTECTION" SortExpression="datp" />
                <asp:BoundField DataField="batt1" HeaderText="BATTERY CHEMISTRY" SortExpression="batt1" />
                <asp:BoundField DataField="batt" HeaderText="BATTERY LIFE" SortExpression="batt" />
                <asp:BoundField DataField="recp" HeaderText="RECEPTACLES" SortExpression="recp" />
                <asp:BoundField DataField="ser" HeaderText="SERIAL PORT" SortExpression="ser" />
                <asp:BoundField DataField="swi" HeaderText="SWITCHING TIME" SortExpression="swi" />
                <asp:BoundField DataField="usb" HeaderText="USB" SortExpression="usb" />
                <asp:BoundField DataField="wave" HeaderText="WAVEFORM TYPE" SortExpression="wave" />
                <asp:BoundField DataField="pric" HeaderText="PRICE" SortExpression="pric" />
                <asp:BoundField DataField="stock" HeaderText="STOCK" SortExpression="stock" />
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
        <asp:SqlDataSource ID="SqlDataSource20" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [mod], [load], [load1], [ala], [bac], [bac1], [outp], [maxi], [inp], [hot], [fac], [emg], [datp], [batt1], [batt], [recp], [ser], [swi], [usb], [wave], [pric], [stock] FROM [ups] WHERE ([brand] = @brand)">
            <SelectParameters>
                <asp:SessionParameter Name="brand" SessionField="comp" Type="String" />
            </SelectParameters>
         </asp:SqlDataSource>
    </asp:Panel>

    <asp:Panel ID="Panel21" runat="server">
         <h3 style=" margin-left:15px;">OS</h3>
        <asp:GridView ID="GridView21" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource21">
            <Columns>
                <asp:BoundField DataField="man" HeaderText="MANUFACTURER" SortExpression="man" />
                <asp:BoundField DataField="mod" HeaderText="MODEL" SortExpression="mod" />
                <asp:BoundField DataField="ver" HeaderText="VERSION" SortExpression="ver" />
                <asp:BoundField DataField="modee" HeaderText="MODE" SortExpression="modee" />
                <asp:BoundField DataField="maxi" HeaderText="MAXIMUM SUPPORTED MEMORY" SortExpression="maxi" />
                <asp:BoundField DataField="pric" HeaderText="PRICE" SortExpression="pric" />
                <asp:BoundField DataField="stock" HeaderText="STOCK" SortExpression="stock" />
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
        <asp:SqlDataSource ID="SqlDataSource21" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [mod], [ver], [modee], [maxi], [pric], [stock] FROM [os] WHERE ([brand] = @brand)">
            <SelectParameters>
                <asp:SessionParameter Name="brand" SessionField="comp" Type="String" />
            </SelectParameters>
         </asp:SqlDataSource>
    </asp:Panel>

    <asp:Panel ID="Panel22" runat="server">
         <h3 style=" margin-left:15px;">SOFTWARE</h3>
        <asp:GridView ID="GridView22" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource22">
            <Columns>
                <asp:BoundField DataField="man" HeaderText="MANUFACTURER" SortExpression="man" />
                <asp:BoundField DataField="mod" HeaderText="MODEL" SortExpression="mod" />
                <asp:BoundField DataField="typ" HeaderText="TYPE" SortExpression="typ" />
                <asp:BoundField DataField="med" HeaderText="MEDIA TYPE" SortExpression="med" />
                <asp:BoundField DataField="supp" HeaderText="SUPPORTED OPERATING SYSTEMS" SortExpression="supp" />
                <asp:BoundField DataField="fea" HeaderText="FEATURES" SortExpression="fea" />
                <asp:BoundField DataField="pric" HeaderText="PRICE" SortExpression="pric" />
                <asp:BoundField DataField="stock" HeaderText="STOCK" SortExpression="stock" />
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
        <asp:SqlDataSource ID="SqlDataSource22" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [mod], [typ], [med], [supp], [fea], [pric], [stock] FROM [software] WHERE ([brand] = @brand)">
            <SelectParameters>
                <asp:SessionParameter Name="brand" SessionField="comp" Type="String" />
            </SelectParameters>
         </asp:SqlDataSource>
    </asp:Panel>

    <asp:Panel ID="Panel23" runat="server">
         <h3 style=" margin-left:15px;">CASEFAN</h3>
        <asp:GridView ID="GridView23" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource23">
            <Columns>
                <asp:BoundField DataField="man" HeaderText="MANUFACTURER" SortExpression="man" />
                <asp:BoundField DataField="mod" HeaderText="MODEL" SortExpression="mod" />
                <asp:BoundField DataField="par" HeaderText="PART" SortExpression="par" />
                <asp:BoundField DataField="col" HeaderText="SIZE" SortExpression="col" />
                <asp:BoundField DataField="typ" HeaderText="TYPE" SortExpression="typ" />
                <asp:BoundField DataField="inc" HeaderText="LED COLOR" SortExpression="inc" />
                <asp:BoundField DataField="inte" HeaderText="AIR FLOW" SortExpression="inte" />
                <asp:BoundField DataField="inte1" HeaderText="NOISE LEVEL" SortExpression="inte1" />
                <asp:BoundField DataField="mot" HeaderText="RPM" SortExpression="mot" />
                <asp:BoundField DataField="fro" HeaderText="STATIC PRESSURE" SortExpression="fro" />
                <asp:BoundField DataField="maxi" HeaderText="BEARING TYPE" SortExpression="maxi" />
                <asp:BoundField DataField="dime" HeaderText="FEATURES" SortExpression="dime" />
                <asp:BoundField DataField="pric" HeaderText="PRICE" SortExpression="pric" />
                <asp:BoundField DataField="stock" HeaderText="STOCK" SortExpression="stock" />
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
        <asp:SqlDataSource ID="SqlDataSource23" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [mod], [par], [col], [typ], [inc], [inte], [inte1], [mot], [fro], [maxi], [dime], [pric], [stock] FROM [casefan] WHERE ([brand] = @brand)">
            <SelectParameters>
                <asp:SessionParameter Name="brand" SessionField="comp" Type="String" />
            </SelectParameters>
         </asp:SqlDataSource>
    </asp:Panel>

   
    
            
        </div>
</asp:Content>



