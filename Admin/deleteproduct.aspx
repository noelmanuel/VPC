<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="deleteproduct.aspx.cs" Inherits="Admin_deleteproduct" %>

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
        background-color:red;
        color:white;
        
    }

    .btn_comm{
        width:150px;
        height:40px;
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
    .btn_comm:hover{
        background-color:red;
        color:white;
        
    }

    .tb{
            width:300px;
            height:40px;
            border:1px solid #d1d1d1;
            outline:none;
            margin-top:5px;
            font-size:20px;
            background-color:#ededed;
            
            
            
            

        }
        .sp
        {
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size:15px;
            display: inline-block;
            width:200px;
        }
        .pan
        {
            margin-left:20px;
            margin-top:10px;
        }
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="section_backgound">

           
       <div style="height:950px;"> 
         <div style="padding-top:5px; margin-left:10%;">
             <h3 style="">BROWSE PRODUCT</h3><br />
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
                <asp:Button ID="Button35" CssClass="btn_com" runat="server" Text="UPS" OnClick="ups_Click" />
                 <asp:Button ID="Button36" CssClass="btn_com" runat="server" Text="OS" OnClick="os_Click" /> 
                 <asp:Button ID="Button37" CssClass="btn_com" runat="server" Text="Software" OnClick="so_Click" />
                 <asp:Button ID="Button38" CssClass="btn_com" runat="server" Text="Case Fan" OnClick="soo_Click" />   
            
           <asp:Panel ID="Panel1" CssClass="pan" runat="server">

               <div style="overflow:scroll; height:250px;">
                   <span class="sp">Motherboard List</span><br />
                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" Width="763px">
                       <Columns>
                           <asp:BoundField DataField="man" HeaderText="Manufacturer" SortExpression="man">
                           <ItemStyle HorizontalAlign="Center" />
                           </asp:BoundField>
                           <asp:BoundField DataField="mod" HeaderText="Model" SortExpression="mod">
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
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [pric], [mod] FROM [motherboard]"></asp:SqlDataSource>
               </div>
               <br /><span class="sp">Enter Motherboard Name</span><br />
               <asp:TextBox ID="TextBox1" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button15" CssClass="btn_comm" OnClick="del_mb" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel2" CssClass="pan" runat="server">
                 <div style="overflow:scroll; height:250px;">
                   <span class="sp">RAM List</span><br />
                   <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource2" Width="763px">
                       <Columns>
                           <asp:BoundField DataField="man" HeaderText="Manufacturer" SortExpression="man">
                           <ItemStyle HorizontalAlign="Center" />
                           </asp:BoundField>
                           <asp:BoundField DataField="mod" HeaderText="Model" SortExpression="mod">
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
                   <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [pric], [mod] FROM [ram]"></asp:SqlDataSource>
               </div>
               <br />
               <span class="sp">Enter RAM Name</span><br />
               <asp:TextBox ID="TextBox2" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button16" CssClass="btn_comm" OnClick="del_ram" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel3" CssClass="pan" runat="server">
                 <div style="overflow:scroll; height:250px;">
                   <span class="sp">Processor List</span><br />
                   <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource3" Width="763px">
                       <Columns>
                           <asp:BoundField DataField="man" HeaderText="Manufacturer" SortExpression="man">
                           <ItemStyle HorizontalAlign="Center" />
                           </asp:BoundField>
                           <asp:BoundField DataField="mod" HeaderText="Model" SortExpression="mod">
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
                   <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [pric], [mod] FROM [processor]"></asp:SqlDataSource>
               </div>
               <br />
               <span class="sp">Enter Processor Name</span><br />
               <asp:TextBox ID="TextBox3" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button17" CssClass="btn_comm" OnClick="del_pro" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel4" CssClass="pan" runat="server">

                 <div style="overflow:scroll; height:250px;">
                   <span class="sp">GPU List</span><br />
                   <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource4" Width="763px">
                       <Columns>
                           <asp:BoundField DataField="man" HeaderText="Manufacturer" SortExpression="man">
                           <ItemStyle HorizontalAlign="Center" />
                           </asp:BoundField>
                           <asp:BoundField DataField="mod" HeaderText="Model" SortExpression="mod">
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
                   <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [pric], [mod] FROM [gpu]"></asp:SqlDataSource>
               </div>
               <br />
               <span class="sp">Enter GPU Name</span><br />
               <asp:TextBox ID="TextBox4" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button18" CssClass="btn_comm" OnClick="del_gpu" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel5" CssClass="pan" runat="server">
                 <div style="overflow:scroll; height:250px;">
                   <span class="sp">CD drive List</span><br />
                   <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource5" Width="763px">
                       <Columns>
                           <asp:BoundField DataField="man" HeaderText="Manufacturer" SortExpression="man">
                           <ItemStyle HorizontalAlign="Center" />
                           </asp:BoundField>
                           <asp:BoundField DataField="mod" HeaderText="Model" SortExpression="mod">
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
                   <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [pric], [mod] FROM [cddrive]"></asp:SqlDataSource>
               </div>
               <br />
               <span class="sp">Enter CD Drive Name</span><br />
               <asp:TextBox ID="TextBox5" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button19" CssClass="btn_comm" OnClick="del_cd" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel6" CssClass="pan" runat="server">
                 <div style="overflow:scroll; height:250px;">
                   <span class="sp">SMPS List</span><br />
                   <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource6" Width="763px">
                       <Columns>
                           <asp:BoundField DataField="man" HeaderText="Manufacturer" SortExpression="man">
                           <ItemStyle HorizontalAlign="Center" />
                           </asp:BoundField>
                           <asp:BoundField DataField="mod" HeaderText="Model" SortExpression="mod">
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
                   <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [pric], [mod] FROM [smps]"></asp:SqlDataSource>
               </div>
               <br />
               <span class="sp">Enter SMPS Name</span><br />
               <asp:TextBox ID="TextBox6" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button20" CssClass="btn_comm" OnClick="del_smps" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel7" CssClass="pan" runat="server">
                 <div style="overflow:scroll; height:250px;">
                   <span class="sp">HARD DISK List</span><br />
                   <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource7" Width="763px">
                       <Columns>
                           <asp:BoundField DataField="man" HeaderText="Manufacturer" SortExpression="man">
                           <ItemStyle HorizontalAlign="Center" />
                           </asp:BoundField>
                           <asp:BoundField DataField="mod" HeaderText="Model" SortExpression="mod">
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
                   <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [pric], [mod] FROM [hdd]"></asp:SqlDataSource>
               </div>
               <br />
               <span class="sp">Enter HDD Name</span><br />
               <asp:TextBox ID="TextBox7" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button21" CssClass="btn_comm" OnClick="del_hdd" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel8" CssClass="pan" runat="server">
                 <div style="overflow:scroll; height:250px;">
                   <span class="sp">Soundcard List</span><br />
                   <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource8" Width="763px">
                       <Columns>
                           <asp:BoundField DataField="man" HeaderText="Manufacturer" SortExpression="man">
                           <ItemStyle HorizontalAlign="Center" />
                           </asp:BoundField>
                           <asp:BoundField DataField="mod" HeaderText="Model" SortExpression="mod">
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
                   <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [pric], [mod] FROM [soundcard]"></asp:SqlDataSource>
               </div>
               <br />
               <span class="sp">Enter Soundcard Name</span><br />
               <asp:TextBox ID="TextBox8" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button22" CssClass="btn_comm" OnClick="del_sd" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel9" CssClass="pan" runat="server">
                 <div style="overflow:scroll; height:250px;">
                   <span class="sp">SSD List</span><br />
                   <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource9" Width="763px">
                       <Columns>
                           <asp:BoundField DataField="man" HeaderText="Manufacturer" SortExpression="man">
                           <ItemStyle HorizontalAlign="Center" />
                           </asp:BoundField>
                           <asp:BoundField DataField="mod" HeaderText="Model" SortExpression="mod">
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
                   <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [pric], [mod] FROM [ssd]"></asp:SqlDataSource>
               </div>
               <br />
               <span class="sp">Enter SSD Name</span><br />
               <asp:TextBox ID="TextBox9" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button23" CssClass="btn_comm" OnClick="del_ssd" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel10" CssClass="pan" runat="server">
                 <div style="overflow:scroll; height:250px;">
                   <span class="sp">CPU Cooler List</span><br />
                   <asp:GridView ID="GridView10" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource10" Width="763px">
                       <Columns>
                           <asp:BoundField DataField="man" HeaderText="Manufacturer" SortExpression="man">
                           <ItemStyle HorizontalAlign="Center" />
                           </asp:BoundField>
                           <asp:BoundField DataField="mod" HeaderText="Model" SortExpression="mod">
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
                   <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [pric], [mod] FROM [cooler]"></asp:SqlDataSource>
               </div>
               <br />
               <span class="sp">Enter CPU Cooler Name</span><br />
               <asp:TextBox ID="TextBox10" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button24" CssClass="btn_comm" OnClick="del_cool" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel11" CssClass="pan" runat="server">
                 <div style="overflow:scroll; height:250px;">
                   <span class="sp">Case List</span><br />
                   <asp:GridView ID="GridView11" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource11" Width="763px">
                       <Columns>
                           <asp:BoundField DataField="man" HeaderText="Manufacturer" SortExpression="man">
                           <ItemStyle HorizontalAlign="Center" />
                           </asp:BoundField>
                           <asp:BoundField DataField="mod" HeaderText="Model" SortExpression="mod">
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
                   <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [pric], [mod] FROM [casee]"></asp:SqlDataSource>
               </div>
               <br />
               <span class="sp">Enter Case Name</span><br />
               <asp:TextBox ID="TextBox11" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button25" CssClass="btn_comm" OnClick="del_case" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel12" CssClass="pan" runat="server">
                 <div style="overflow:scroll; height:250px;">
                   <span class="sp">Networkcard List</span><br />
                   <asp:GridView ID="GridView12" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource12" Width="763px">
                       <Columns>
                           <asp:BoundField DataField="man" HeaderText="Manufacturer" SortExpression="man">
                           <ItemStyle HorizontalAlign="Center" />
                           </asp:BoundField>
                           <asp:BoundField DataField="mod" HeaderText="Model" SortExpression="mod">
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
                   <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [pric], [mod] FROM [net]"></asp:SqlDataSource>
               </div>
               <br />
               <span class="sp">Enter Networkcard Name</span><br />
               <asp:TextBox ID="TextBox12" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button26" CssClass="btn_comm" OnClick="del_net" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel13" CssClass="pan" runat="server">
                 <div style="overflow:scroll; height:250px;">
                   <span class="sp">keyboard List</span><br />
                   <asp:GridView ID="GridView13" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource13" Width="763px">
                       <Columns>
                           <asp:BoundField DataField="man" HeaderText="Manufacturer" SortExpression="man">
                           <ItemStyle HorizontalAlign="Center" />
                           </asp:BoundField>
                           <asp:BoundField DataField="mod" HeaderText="Model" SortExpression="mod">
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
                   <asp:SqlDataSource ID="SqlDataSource13" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [pric], [mod] FROM [keyboard]"></asp:SqlDataSource>
               </div>
               <br />
               <span class="sp">Enter Keyboard Name</span><br />
               <asp:TextBox ID="TextBox13" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button27" CssClass="btn_comm" OnClick="del_key" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel14" CssClass="pan" runat="server">
                 <div style="overflow:scroll; height:250px;">
                   <span class="sp">Mouse List</span><br />
                   <asp:GridView ID="GridView14" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource14" Width="763px">
                       <Columns>
                           <asp:BoundField DataField="man" HeaderText="Manufacturer" SortExpression="man">
                           <ItemStyle HorizontalAlign="Center" />
                           </asp:BoundField>
                           <asp:BoundField DataField="mod" HeaderText="Model" SortExpression="mod">
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
                   <asp:SqlDataSource ID="SqlDataSource14" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [pric], [mod] FROM [mouse]"></asp:SqlDataSource>
               </div>
               <br />
               <span class="sp">Enter Mouse Name</span><br />
               <asp:TextBox ID="TextBox14" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button28" CssClass="btn_comm" OnClick="del_mouse" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel15" CssClass="pan" runat="server">
                 <div style="overflow:scroll; height:250px;">
                   <span class="sp">Monitor List</span><br />
                   <asp:GridView ID="GridView15" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource15" Width="763px">
                       <Columns>
                           <asp:BoundField DataField="man" HeaderText="Manufacturer" SortExpression="man">
                           <ItemStyle HorizontalAlign="Center" />
                           </asp:BoundField>
                           <asp:BoundField DataField="mod" HeaderText="Model" SortExpression="mod">
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
                   <asp:SqlDataSource ID="SqlDataSource15" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [pric], [mod] FROM [monitor]"></asp:SqlDataSource>
               </div>
               <br />
               <span class="sp">Enter Monitor Name</span><br />
               <asp:TextBox ID="TextBox15" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button29" CssClass="btn_comm" OnClick="del_mon" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel16" CssClass="pan" runat="server">
                 <div style="overflow:scroll; height:250px;">
                   <span class="sp">Speaker List</span><br />
                   <asp:GridView ID="GridView16" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource16" Width="763px">
                       <Columns>
                           <asp:BoundField DataField="man" HeaderText="Manufacturer" SortExpression="man">
                           <ItemStyle HorizontalAlign="Center" />
                           </asp:BoundField>
                           <asp:BoundField DataField="mod" HeaderText="Model" SortExpression="mod">
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
                   <asp:SqlDataSource ID="SqlDataSource16" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [pric], [mod] FROM [speaker]"></asp:SqlDataSource>
               </div>
               <br />
               <span class="sp">Enter Speaker Name</span><br />
               <asp:TextBox ID="TextBox16" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button30" CssClass="btn_comm" OnClick="del_spk" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel17" CssClass="pan" runat="server">
                 <div style="overflow:scroll; height:250px;">
                   <span class="sp">UPS List</span><br />
                   <asp:GridView ID="GridView17" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource17" Width="763px">
                       <Columns>
                           <asp:BoundField DataField="man" HeaderText="Manufacturer" SortExpression="man">
                           <ItemStyle HorizontalAlign="Center" />
                           </asp:BoundField>
                           <asp:BoundField DataField="mod" HeaderText="Model" SortExpression="mod">
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
                   <asp:SqlDataSource ID="SqlDataSource17" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [pric], [mod] FROM [ups]"></asp:SqlDataSource>
               </div>
               <br />
               <span class="sp">Enter UPS Name</span><br />
               <asp:TextBox ID="TextBox17" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button31" CssClass="btn_comm" OnClick="del_ups" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel18" CssClass="pan" runat="server">
                 <div style="overflow:scroll; height:250px;">
                   <span class="sp">OS List</span><br />
                   <asp:GridView ID="GridView18" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource18" Width="763px">
                       <Columns>
                           <asp:BoundField DataField="man" HeaderText="Manufacturer" SortExpression="man">
                           <ItemStyle HorizontalAlign="Center" />
                           </asp:BoundField>
                           <asp:BoundField DataField="mod" HeaderText="Model" SortExpression="mod">
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
                   <asp:SqlDataSource ID="SqlDataSource18" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [pric], [mod] FROM [os]"></asp:SqlDataSource>
               </div>
               <br />
               <span class="sp">Enter Software Name</span><br />
               <asp:TextBox ID="TextBox18" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button32" CssClass="btn_comm" OnClick="del_os" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel19" CssClass="pan" runat="server">
                 <div style="overflow:scroll; height:250px;">
                   <span class="sp">Software List</span><br />
                   <asp:GridView ID="GridView19" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource19" Width="763px">
                       <Columns>
                           <asp:BoundField DataField="man" HeaderText="Manufacturer" SortExpression="man">
                           <ItemStyle HorizontalAlign="Center" />
                           </asp:BoundField>
                           <asp:BoundField DataField="mod" HeaderText="Model" SortExpression="mod">
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
                   <asp:SqlDataSource ID="SqlDataSource19" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [pric], [mod] FROM [software]"></asp:SqlDataSource>
               </div>
               <br />
               <span class="sp">Enter Software Name</span><br />
               <asp:TextBox ID="TextBox19" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button33" CssClass="btn_comm" OnClick="del_sof" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel20" CssClass="pan" runat="server">
                 <div style="overflow:scroll; height:250px;">
                   <span class="sp">Casefan List</span><br />
                   <asp:GridView ID="GridView20" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource20" Width="763px">
                       <Columns>
                           <asp:BoundField DataField="man" HeaderText="Manufacturer" SortExpression="man">
                           <ItemStyle HorizontalAlign="Center" />
                           </asp:BoundField>
                           <asp:BoundField DataField="mod" HeaderText="Model" SortExpression="mod">
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
                   <asp:SqlDataSource ID="SqlDataSource20" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man], [pric], [mod] FROM [casefan]"></asp:SqlDataSource>
               </div>
               <br />
               <span class="sp">Enter Casefan Name</span><br />
               <asp:TextBox ID="TextBox20" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button34" CssClass="btn_comm" OnClick="del_fan" runat="server" Text="Delete" />
           </asp:Panel>

             </div>
         </div> 

    </div>
   
</asp:Content>

