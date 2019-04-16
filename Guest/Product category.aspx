<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/usermaster.master" AutoEventWireup="true" CodeFile="Product category.aspx.cs" Inherits="Guest_Product_category" %>

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
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="section_backgound">
        
       <div style="height:790px;"> 
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
                <asp:Button ID="Button15" CssClass="btn_com" runat="server" Text="UPS" OnClick="ups_Click" />
                 <asp:Button ID="Button16" CssClass="btn_com" runat="server" Text="OS" OnClick="os_Click" /> 
                 <asp:Button ID="Button17" CssClass="btn_com" runat="server" Text="Software" OnClick="so_Click" />
                 <asp:Button ID="Button18" CssClass="btn_com" runat="server" Text="Case Fan" OnClick="soo_Click" />  
            </div>
         </div> 
    </div>
</asp:Content>

