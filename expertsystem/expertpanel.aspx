<%@ Page Title="" Language="C#" MasterPageFile="~/expertsystem/expert.master" AutoEventWireup="true" CodeFile="expertpanel.aspx.cs" Inherits="expertsystem_expertpanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
         .bt
        {
             border-radius:50px;
            cursor:pointer;
            font-weight:bold;
        }
         .spa
        {
            font-size:20px;
            font-weight:bold;
        }
         .spaa
        {
            font-size:30px;
            font-weight:bold;
        }
         .txtadd
        {
            outline:none;
            border:1px solid #e7e7e7;
            background-color:white;
            height:40px;
            width:400px;
            font-size:20px;


        }
         .btn_com
         {
        width:230px;
        height:70px;
        background-color:white;
        color:red;
        font-size:15px;
        border:1px solid #00acee;
        border-radius:20px;
        cursor:pointer;
       
       font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
       outline:none;
        
       

    }
        
    .btn_com:hover
    {
        background-color:#fdc00f;
        color:white;
        
    }

    .drd
        {
            border:1px solid #d9d9d9;
            outline:none;
            max-height: 300px;
            height:30px;
            outline:none;
            
            
            
            
        }
        .sp
        {
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size:15px;
            width:200px;
            
        }
    
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="section_backgound">
        <div style="height:790px;">

            <asp:Panel ID="Panel1" runat="server">
                <table style="margin-left:10%; margin-top:2%; background-color:#00acee; padding:7%;">
                <tr>
                <td>
                <h1 style="font-size:25px; line-height:50px;">Welcome to PC Parts Mart,<br /><br />
                    We will help yo to buy/Select
                    quality build according to your <br />
                    perference.<br /><br />
                    
                    We will ask you some question
                    from which we will provide you<br /> 
                    the best build. 
                </h1>
                    <br />
                <asp:Button ID="Button6" runat="server" Text="Next" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="150" OnClick="Button6_Click"  />
                    </td>
                    <td style="padding-left:5%; width:50%; vertical-align:top;">
                        <asp:Image ID="Image1" runat="server" ImageAlign="Middle" ImageUrl="~/images/exp.png" Height="500"  />
                    </td>
                    </tr>
                    </table>
            </asp:Panel>


            <asp:Panel ID="Panel2" runat="server">
                <table style="margin-left:10%; margin-top:2%; background-color:#00acee; padding:7%;">
                <tr>
                <td >
                <span class="spa">What is your name?</span><br /><br />
                <asp:TextBox ID="TextBox1" CssClass="txtadd" runat="server"></asp:TextBox> &nbsp <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Textbox1" ForeColor="red" ErrorMessage="Field Required"></asp:RequiredFieldValidator><br /><br /><br />
                

                <span class="spa">What is your profession?</span><br /><br />
                <asp:TextBox ID="TextBox2" CssClass="txtadd" runat="server"></asp:TextBox>&nbsp <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Textbox2" ForeColor="red" ErrorMessage="Field Required"></asp:RequiredFieldValidator><br /><br /><br />

                <span class="spa">What is your age?</span><br /><br />
                <asp:TextBox ID="TextBox3" CssClass="txtadd" runat="server"></asp:TextBox>&nbsp <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Textbox3" ForeColor="red" ErrorMessage="Field Required"></asp:RequiredFieldValidator><br /><br /><br />

                 <asp:Button ID="Button2" runat="server" Text="Next" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="150" OnClick="Button2_Click"  />
                 </td>
                    <td style="padding-left:2%; width:50%;">
                        <asp:Image ID="Image2" runat="server" ImageAlign="Middle" ImageUrl="~/images/blueb.jpg" />
                    </td>
                    </tr>
                    </table>
                    </asp:Panel>

            <asp:Panel ID="Panel3" runat="server">
                <table style="margin-left:10%; margin-top:2%; background-color:#00acee; padding:7%;">
                <tr>
                <td >
                <span class="spaa">You are interested in buying</span><br /><br /><br />
                    <asp:Button ID="Button3" CssClass="btn_com" runat="server" Text="Whole System" OnClick="Button3_Click" /> &nbsp &nbsp &nbsp
                    <asp:Button ID="Button4" CssClass="btn_com" runat="server" Text="Only CPU" OnClick="Button4_Click" /><br /><br /><br />
                             

                 <asp:Button ID="Button5" runat="server" Text="Back" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="150" OnClick="Button5_Click"  />
                 </td>
                    <td style="padding-left:2%; width:50%;">
                        <asp:Image ID="Image3" runat="server" ImageAlign="Middle" ImageUrl="~/images/blueb1.jpg" />
                    </td>
                    </tr>
                    </table>
                    </asp:Panel>

               <asp:Panel ID="Panel4" runat="server">
                <table style="margin-left:10%; margin-top:2%; background-color:#00acee; padding:7%;">
                <tr>
                <td >
                <span class="spaa">Whats your budget?</span><br /><br /><br />

                    <asp:Button ID="Button1" title="Above 90k" CssClass="btn_com" runat="server" Text="Expensive" OnClick="ult_Click" /> &nbsp &nbsp 
                    <asp:Button ID="Button9" title="Between 50k-90k" CssClass="btn_com" runat="server" Text="High" OnClick="high_Click" /> &nbsp &nbsp <br /><br />
                    <asp:Button ID="Button10" title="Between 30k-50k" CssClass="btn_com" runat="server" Text="Medium" OnClick="med_Click" /> &nbsp &nbsp 
                    <asp:Button ID="Button7" title="Below 30k" CssClass="btn_com" runat="server" Text="Low" OnClick="low_Click" /><br /><br /><br />
                             
                
                 <asp:Button ID="Button8" runat="server" Text="Back" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="150" OnClick="Button8_Click"  />
                 </td>
                    <td style="padding-left:2%; width:50%;">
                        <asp:Image ID="Image4" runat="server" ImageAlign="Middle" ImageUrl="~/images/blueb2.jpg" />
                    </td>
                    </tr>
                    </table>
                    </asp:Panel>

            <asp:Panel ID="Panel5" runat="server">
                <table style="margin-left:10%; margin-top:2%; background-color:#00acee; padding:7%;">
                <tr>
                <td >
                <span class="spaa">What does your system do for you?</span><br /><br />
                <span class="spaa">Select your priority</span><br /> <br /><br />

                    
                     <span class="sp">FIRST PRIORITY</span><br /><br />
                     <asp:DropDownList ID="DropDownList1" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>gaming and live streaming</asp:ListItem>
                        <asp:ListItem>animation and graphics work</asp:ListItem>
                         <asp:ListItem>office work</asp:ListItem>
                         <asp:ListItem>programming</asp:ListItem>
                        
                </asp:DropDownList><br /><br />

                    <span class="sp">SECOND PRIORITY</span><br /><br />
                     <asp:DropDownList ID="DropDownList2" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>gaming and live streaming</asp:ListItem>
                        <asp:ListItem>animation and graphics work</asp:ListItem>
                         <asp:ListItem>office work</asp:ListItem>
                         <asp:ListItem>programming</asp:ListItem>
                        
                </asp:DropDownList><br /><br />

                    <span class="sp">THIRD PRIORITY</span><br /><br />
                     <asp:DropDownList ID="DropDownList3" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>gaming and live streaming</asp:ListItem>
                        <asp:ListItem>animation and graphics work</asp:ListItem>
                         <asp:ListItem>office work</asp:ListItem>
                         <asp:ListItem>programming</asp:ListItem>
                        
                </asp:DropDownList><br /><br />

                    <span class="sp">LAST PRIORITY</span><br /><br />
                     <asp:DropDownList ID="DropDownList4" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>gaming and live streaming</asp:ListItem>
                        <asp:ListItem>animation and graphics work</asp:ListItem>
                         <asp:ListItem>office work</asp:ListItem>
                         <asp:ListItem>programming</asp:ListItem>
                        
                </asp:DropDownList><br /><br />
                
                 <asp:Button ID="Button15" runat="server" Text="Next" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="150" OnClick="Button15_Click"  />
                 </td>
                    <td style="padding-left:2%; width:50%;">
                        <asp:Image ID="Image5" runat="server" ImageAlign="Middle" ImageUrl="~/images/blueb4.jpg" />
                        
                    </td>
                    </tr>
                    </table>
                    </asp:Panel>


        </div>

    </div>
</asp:Content>

