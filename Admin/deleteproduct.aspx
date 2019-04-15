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
                <asp:Button ID="Button35" CssClass="btn_com" runat="server" Text="UPS" OnClick="ups_Click" />
                 <asp:Button ID="Button36" CssClass="btn_com" runat="server" Text="OS" OnClick="os_Click" /> 
                 <asp:Button ID="Button37" CssClass="btn_com" runat="server" Text="Software" OnClick="so_Click" />
                 <asp:Button ID="Button38" CssClass="btn_com" runat="server" Text="Case Fan" OnClick="soo_Click" />   
            
           <asp:Panel ID="Panel1" CssClass="pan" runat="server">
               <span class="sp">Enter Motherboard Name</span><br />
               <asp:TextBox ID="TextBox1" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button15" CssClass="btn_comm" OnClick="del_mb" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel2" CssClass="pan" runat="server">
               <span class="sp">Enter RAM Name</span><br />
               <asp:TextBox ID="TextBox2" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button16" CssClass="btn_comm" OnClick="del_ram" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel3" CssClass="pan" runat="server">
               <span class="sp">Enter Processor Name</span><br />
               <asp:TextBox ID="TextBox3" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button17" CssClass="btn_comm" OnClick="del_pro" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel4" CssClass="pan" runat="server">
               <span class="sp">Enter GPU Name</span><br />
               <asp:TextBox ID="TextBox4" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button18" CssClass="btn_comm" OnClick="del_gpu" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel5" CssClass="pan" runat="server">
               <span class="sp">Enter CD Drive Name</span><br />
               <asp:TextBox ID="TextBox5" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button19" CssClass="btn_comm" OnClick="del_cd" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel6" CssClass="pan" runat="server">
               <span class="sp">Enter SMPS Name</span><br />
               <asp:TextBox ID="TextBox6" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button20" CssClass="btn_comm" OnClick="del_smps" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel7" CssClass="pan" runat="server">
               <span class="sp">Enter HDD Name</span><br />
               <asp:TextBox ID="TextBox7" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button21" CssClass="btn_comm" OnClick="del_hdd" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel8" CssClass="pan" runat="server">
               <span class="sp">Enter Soundcard Name</span><br />
               <asp:TextBox ID="TextBox8" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button22" CssClass="btn_comm" OnClick="del_sd" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel9" CssClass="pan" runat="server">
               <span class="sp">Enter SSD Name</span><br />
               <asp:TextBox ID="TextBox9" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button23" CssClass="btn_comm" OnClick="del_ssd" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel10" CssClass="pan" runat="server">
               <span class="sp">Enter CPU Cooler Name</span><br />
               <asp:TextBox ID="TextBox10" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button24" CssClass="btn_comm" OnClick="del_cool" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel11" CssClass="pan" runat="server">
               <span class="sp">Enter Case Name</span><br />
               <asp:TextBox ID="TextBox11" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button25" CssClass="btn_comm" OnClick="del_case" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel12" CssClass="pan" runat="server">
               <span class="sp">Enter Networkcard Name</span><br />
               <asp:TextBox ID="TextBox12" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button26" CssClass="btn_comm" OnClick="del_net" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel13" CssClass="pan" runat="server">
               <span class="sp">Enter Keyboard Name</span><br />
               <asp:TextBox ID="TextBox13" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button27" CssClass="btn_comm" OnClick="del_key" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel14" CssClass="pan" runat="server">
               <span class="sp">Enter Mouse Name</span><br />
               <asp:TextBox ID="TextBox14" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button28" CssClass="btn_comm" OnClick="del_mouse" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel15" CssClass="pan" runat="server">
               <span class="sp">Enter Monitor Name</span><br />
               <asp:TextBox ID="TextBox15" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button29" CssClass="btn_comm" OnClick="del_mon" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel16" CssClass="pan" runat="server">
               <span class="sp">Enter Speaker Name</span><br />
               <asp:TextBox ID="TextBox16" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button30" CssClass="btn_comm" OnClick="del_spk" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel17" CssClass="pan" runat="server">
               <span class="sp">Enter UPS Name</span><br />
               <asp:TextBox ID="TextBox17" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button31" CssClass="btn_comm" OnClick="del_ups" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel18" CssClass="pan" runat="server">
               <span class="sp">Enter OS Name</span><br />
               <asp:TextBox ID="TextBox18" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button32" CssClass="btn_comm" OnClick="del_os" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel19" CssClass="pan" runat="server">
               <span class="sp">Enter Software Name</span><br />
               <asp:TextBox ID="TextBox19" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button33" CssClass="btn_comm" OnClick="del_sof" runat="server" Text="Delete" />
           </asp:Panel>

             <asp:Panel ID="Panel20" CssClass="pan" runat="server">
               <span class="sp">Enter Casefan Name</span><br />
               <asp:TextBox ID="TextBox20" CssClass="tb" runat="server"></asp:TextBox><br /><br />
               <asp:Button ID="Button34" CssClass="btn_comm" OnClick="del_fan" runat="server" Text="Delete" />
           </asp:Panel>

             </div>
         </div> 

    </div>
   
</asp:Content>

