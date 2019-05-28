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
            color:white;
        }
         .spaa
        {
            font-size:30px;
            font-weight:bold;
            color:white;
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
            color:white;
            
        }
    
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="section_backgound">
        <div style="height:790px;">

            <asp:Panel ID="Panel1" runat="server">
                <table style=" margin-top:2%; background-color:#00acee; padding:7%;">
                <tr>
                <td>
                <h5 style="font-size:25px; color:white; line-height:50px;">Welcome to PC Parts Mart,<br /></h5>
                    <p style="color:white; font-size:18px;">We will help yo to buy/Select
                    quality build according to your 
                    perference.<br /><br />
                    
                    We will ask you some question
                    from which we will provide you
                    the best build. </p>
                
                    <br />
                <asp:Button ID="Button6" runat="server" Text="Next" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="150" OnClick="Button6_Click"  />
                    </td>
                    <td style="padding-left:5%; width:50%; vertical-align:top;">
                        <asp:Image ID="Image1" runat="server" ImageAlign="Middle" ImageUrl="~/images/expp.jpg" Height="500"  />
                    </td>
                    </tr>
                    </table>
            </asp:Panel>


            <asp:Panel ID="Panel2" runat="server">
                <table style=" width:100%; margin-top:2%; background-color:#00acee; padding:7%;">
                <tr>
                <td style="padding-left:10%;">
                <span class="spa">What is your name?</span><br /><br />
                <asp:TextBox ID="TextBox1" CssClass="txtadd" runat="server"></asp:TextBox> &nbsp <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Textbox1" ForeColor="red" ErrorMessage="Field Required"></asp:RequiredFieldValidator><br /><br /><br />
                

                <span class="spa">What is your profession?</span><br /><br />
                <asp:TextBox ID="TextBox2" CssClass="txtadd" runat="server"></asp:TextBox>&nbsp <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Textbox2" ForeColor="red" ErrorMessage="Field Required"></asp:RequiredFieldValidator><br /><br /><br />

                <span class="spa">What is your age?</span><br /><br />
                <asp:TextBox ID="TextBox3" CssClass="txtadd" runat="server"></asp:TextBox>&nbsp <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Textbox3" ForeColor="red" ErrorMessage="Field Required"></asp:RequiredFieldValidator><br /><br /><br />

                 <asp:Button ID="Button2" runat="server" Text="Next" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="150" OnClick="Button2_Click"  />
                 </td>
                    <td style="padding-left:2%;">
                        <asp:Image ID="Image2" runat="server" ImageAlign="Middle" ImageUrl="~/images/blueb.jpg" />
                    </td>
                    </tr>
                    </table>
                    </asp:Panel>

            <asp:Panel ID="Panel3" runat="server">
                <table style="width:100%; margin-top:2%; background-color:#00acee; padding:7%;">
                <tr>
                <td style="padding-left:10%;">
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
                <table style="width:100%; margin-top:2%; background-color:#00acee; padding:7%;">
                <tr>
                <td style="padding-left:10%;">
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
                <table style="width:100%; margin-top:2%; background-color:#00acee; padding:6%;">
                <tr>
                <td style="padding-left:10%;">
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


            <asp:Panel ID="Panel6" runat="server">

                 <table style="width:100%; margin-top:2%; background-color:#00acee; padding:7%;">
                <tr>
                <td style="padding-left:10%;">
                <span class="spa">Mention the monitor size</span><br /><br />

                    <asp:DropDownList ID="DropDownList5" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Below 21"inch</asp:ListItem>
                        <asp:ListItem>24"inch to 32"inch</asp:ListItem>
                         <asp:ListItem>32"inch to 50"inch</asp:ListItem>
                         <asp:ListItem>Above 50"inch</asp:ListItem>
                        
                </asp:DropDownList><br /><br />

                    <span class="spa">Monitor setup</span><br /><br />

                    <asp:DropDownList ID="DropDownList6" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Single Monitor Setup</asp:ListItem>
                        <asp:ListItem>Dual Monitor Setup</asp:ListItem>
                         <asp:ListItem>Multi Monitor Setup</asp:ListItem>
                         <asp:ListItem>Four Monitor Setup</asp:ListItem>
                        
                </asp:DropDownList><br /><br />

                     <span class="spa">Which setting you choose while gaming?</span><br /><br />

                    <asp:DropDownList ID="DropDownList7" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Ultra Settings</asp:ListItem>
                        <asp:ListItem>High Settings</asp:ListItem>
                         <asp:ListItem>Medium Settings</asp:ListItem>
                         <asp:ListItem>Low settings</asp:ListItem>
                        
                </asp:DropDownList><br /><br />

                    <span class="spa">How many hours you spend for gaming in a day?</span><br /><br />

                    <asp:DropDownList ID="DropDownList8" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Below 2 hrs</asp:ListItem>
                        <asp:ListItem>2-4 hrs</asp:ListItem>
                         <asp:ListItem>4-8 hrs</asp:ListItem>
                         <asp:ListItem>Above 8 hrs</asp:ListItem>
                        
                </asp:DropDownList><br /><br />
                   
                             

                 <asp:Button ID="Button11" runat="server" Text="Make my system" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="150" OnClick="Button11_Click"   />
                 </td>
                    <td style="padding-left:2%; width:50%;">
                        <asp:Image ID="Image6" runat="server" ImageAlign="Middle" ImageUrl="~/images/gamingpic.jpg" Width="500" />
                    </td>
                    </tr>
                    </table>

            </asp:Panel>


            <asp:Panel ID="Panel7" runat="server">

                 <table style="width:100%; margin-top:2%; background-color:#00acee; padding:7%;">
                <tr>
                <td style="padding-left:10%;">
                <span class="spa">Mention the monitor size</span><br /><br />

                    <asp:DropDownList ID="DropDownList9" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Below 21"inch</asp:ListItem>
                        <asp:ListItem>24"inch to 32"inch</asp:ListItem>
                         <asp:ListItem>32"inch to 50"inch</asp:ListItem>
                        
                        
                </asp:DropDownList><br /><br />

                    <span class="spa">Monitor setup</span><br /><br />

                    <asp:DropDownList ID="DropDownList10" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Single Monitor Setup</asp:ListItem>
                        <asp:ListItem>Dual Monitor Setup</asp:ListItem>
                        
                        
                </asp:DropDownList><br /><br />

                     <span class="spa">Which setting you choose while gaming?</span><br /><br />

                    <asp:DropDownList ID="DropDownList11" Width="330px" CssClass="drd" runat="server">
                       
                        <asp:ListItem>High Settings</asp:ListItem>
                         <asp:ListItem>Medium Settings</asp:ListItem>
                         <asp:ListItem>Low settings</asp:ListItem>
                        
                </asp:DropDownList><br /><br />

                    <span class="spa">How many hours you spend for gaming in a day?</span><br /><br />

                    <asp:DropDownList ID="DropDownList12" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Below 2 hrs</asp:ListItem>
                        <asp:ListItem>2-4 hrs</asp:ListItem>
                         <asp:ListItem>4-8 hrs</asp:ListItem>
                         <asp:ListItem>Above 8 hrs</asp:ListItem>
                        
                </asp:DropDownList><br /><br />
                   
                             

                 <asp:Button ID="Button12" runat="server" Text="Make my system" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="150" OnClick="Button12_Click"   />
                 </td>
                    <td style="padding-left:2%; width:50%;">
                        <asp:Image ID="Image7" runat="server" ImageAlign="Middle" Width="500" ImageUrl="~/images/gamingpic.jpg" />
                    </td>
                    </tr>
                    </table>

            </asp:Panel>

            <asp:Panel ID="Panel8" runat="server">

                 <table style="width:100%; margin-top:2%; background-color:#00acee; padding:7%;">
                <tr>
                <td style="padding-left:10%;">

                <span class="spa">Mention the monitor size</span><br /><br />

                    <asp:DropDownList ID="DropDownList13" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Below 21"inch</asp:ListItem>
                        <asp:ListItem>24"inch to 32"inch</asp:ListItem>
                         
                        
                        
                </asp:DropDownList><br /><br />

                  

                     <span class="spa">Which setting you choose while gaming?</span><br /><br />

                    <asp:DropDownList ID="DropDownList15" Width="330px" CssClass="drd" runat="server">
                       
                        <asp:ListItem>High Settings</asp:ListItem>
                         <asp:ListItem>Medium Settings</asp:ListItem>
                         <asp:ListItem>Low settings</asp:ListItem>
                        
                </asp:DropDownList><br /><br />

                    <span class="spa">How many hours you spend for gaming in a day?</span><br /><br />

                    <asp:DropDownList ID="DropDownList16" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Below 2 hrs</asp:ListItem>
                        <asp:ListItem>2-4 hrs</asp:ListItem>
                         <asp:ListItem>4-8 hrs</asp:ListItem>
                         <asp:ListItem>Above 8 hrs</asp:ListItem>
                        
                </asp:DropDownList><br /><br />
                   
                             

                 <asp:Button ID="Button13" runat="server" Text="Make my system" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="150" OnClick="Button13_Click"   />
                 </td>
                    <td style="padding-left:2%; width:50%;">
                        <asp:Image ID="Image8" runat="server" ImageAlign="Middle" Width="500" ImageUrl="~/images/gamingpic.jpg" />
                    </td>
                    </tr>
                    </table>

            </asp:Panel>

            <asp:Panel ID="Panel9" runat="server">

                 <table style="width:100%; margin-top:2%; background-color:#00acee; padding:7%;">
                <tr>
                <td style="padding-left:10%;">
                
                    <span class="spa">How many hours you spend for gaming in a day?</span><br /><br />

                    <asp:DropDownList ID="DropDownList14" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Below 2 hrs</asp:ListItem>
                        <asp:ListItem>2-4 hrs</asp:ListItem>
                         <asp:ListItem>4-8 hrs</asp:ListItem>
                         <asp:ListItem>Above 8 hrs</asp:ListItem>
                        
                </asp:DropDownList><br /><br />

                    <span class="spa">How many games you play in a day?</span><br /><br />

                    <asp:DropDownList ID="DropDownList17" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Below 2 games</asp:ListItem>
                        <asp:ListItem>2-4 games</asp:ListItem>
                         <asp:ListItem>4-8 games</asp:ListItem>
                         <asp:ListItem>Above 8 games</asp:ListItem>
                        
                </asp:DropDownList><br /><br />


                   
                             

                 <asp:Button ID="Button14" runat="server" Text="Make my system" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="150" OnClick="Button14_Click"   />
                 </td>
                    <td style="padding-left:2%; width:50%;">
                        <asp:Image ID="Image9" runat="server" ImageAlign="Middle" Width="500" ImageUrl="~/images/gamingpic.jpg" />
                    </td>
                    </tr>
                    </table>

            </asp:Panel>


            <asp:Panel ID="Panel10" runat="server">

                 <table style="width:100%; margin-top:2%; background-color:#00acee; padding:7%;">
                <tr>
                <td style="padding-left:10%;">
                
                    <span class="spa">Describe your work</span><br /><br />

                    <asp:DropDownList ID="DropDownList18" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Animations</asp:ListItem>
                        <asp:ListItem>Graphic Designing</asp:ListItem>
                         <asp:ListItem>Editing</asp:ListItem>
                         <asp:ListItem>Common Works</asp:ListItem>
                        
                </asp:DropDownList><br /><br />

                     <span class="spa">Mention the monitor size</span><br /><br />

                    <asp:DropDownList ID="DropDownList20" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Below 21"inch</asp:ListItem>
                        <asp:ListItem>24"inch to 32"inch</asp:ListItem>
                         <asp:ListItem>32"inch to 50"inch</asp:ListItem>
                         <asp:ListItem>Above 50"inch</asp:ListItem>
                        
                </asp:DropDownList><br /><br />

                    <span class="spa">Monitor setup</span><br /><br />

                    <asp:DropDownList ID="DropDownList21" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Single Monitor Setup</asp:ListItem>
                        <asp:ListItem>Dual Monitor Setup</asp:ListItem>
                         <asp:ListItem>Multi Monitor Setup</asp:ListItem>
                         
                        
                </asp:DropDownList><br /><br />

                    <span class="spa">Are you working in this field?</span><br /><br />

                    <asp:DropDownList ID="DropDownList19" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                         <asp:ListItem>May be</asp:ListItem>                                           
                </asp:DropDownList><br /><br />

                    <span class="spa">Do you have air conditioner in your system room?</span><br /><br />

                    <asp:DropDownList ID="DropDownList22" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                         <asp:ListItem>May be planning to buy</asp:ListItem>                                           
                </asp:DropDownList><br /><br />


                   
                             

                 <asp:Button ID="Button16" runat="server" Text="Make my system" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="150" OnClick="Button16_Click"   />
                 </td>
                    <td style="padding-left:2%; width:50%;">
                        <asp:Image ID="Image10" runat="server" ImageAlign="Middle" ImageUrl="~/images/animationpic.jpg" />
                    </td>
                    </tr>
                    </table>

            </asp:Panel>


             <asp:Panel ID="Panel11" runat="server">

                 <table style="width:100%; margin-top:2%; background-color:#00acee; padding:7%;">
                <tr>
                <td style="padding-left:10%;">
                
                    <span class="spa">Describe your work</span><br /><br />

                    <asp:DropDownList ID="DropDownList23" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Animations</asp:ListItem>
                        <asp:ListItem>Graphic Designing</asp:ListItem>
                         <asp:ListItem>Editing</asp:ListItem>
                         <asp:ListItem>Common Works</asp:ListItem>
                        
                </asp:DropDownList><br /><br />

                     <span class="spa">Mention the monitor size</span><br /><br />

                    <asp:DropDownList ID="DropDownList24" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Below 21"inch</asp:ListItem>
                        <asp:ListItem>24"inch to 32"inch</asp:ListItem>
                         <asp:ListItem>32"inch to 50"inch</asp:ListItem>
                         <asp:ListItem>Above 50"inch</asp:ListItem>
                        
                </asp:DropDownList><br /><br />

                    <span class="spa">Monitor setup</span><br /><br />

                    <asp:DropDownList ID="DropDownList25" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Single Monitor Setup</asp:ListItem>
                        <asp:ListItem>Dual Monitor Setup</asp:ListItem>
                         <asp:ListItem>Multi Monitor Setup</asp:ListItem>
                         
                        
                </asp:DropDownList><br /><br />

                    <span class="spa">Are you working in this field?</span><br /><br />

                    <asp:DropDownList ID="DropDownList26" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                         <asp:ListItem>May be</asp:ListItem>                                           
                </asp:DropDownList><br /><br />

                    <span class="spa">Do you have air conditioner in your system room?</span><br /><br />

                    <asp:DropDownList ID="DropDownList27" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                         <asp:ListItem>May be planning to buy</asp:ListItem>                                           
                </asp:DropDownList><br /><br />


                   
                             

                 <asp:Button ID="Button17" runat="server" Text="Make my system" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="150" OnClick="Button17_Click"   />
                 </td>
                    <td style="padding-left:2%; width:50%;">
                        <asp:Image ID="Image11" runat="server" ImageAlign="Middle" ImageUrl="~/images/animationpic.jpg" />
                    </td>
                    </tr>
                    </table>

            </asp:Panel>


             <asp:Panel ID="Panel12" runat="server">

                 <table style="width:100%; margin-top:2%; background-color:#00acee; padding:7%;">
                <tr>
                <td style="padding-left:10%;">
                
                    <span class="spa">Describe your work</span><br /><br />

                    <asp:DropDownList ID="DropDownList28" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Animations</asp:ListItem>
                        <asp:ListItem>Graphic Designing</asp:ListItem>
                         <asp:ListItem>Editing</asp:ListItem>
                         <asp:ListItem>Common Works</asp:ListItem>
                        
                </asp:DropDownList><br /><br />

                     <span class="spa">Mention the monitor size</span><br /><br />

                    <asp:DropDownList ID="DropDownList29" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Below 21"inch</asp:ListItem>
                        <asp:ListItem>24"inch to 32"inch</asp:ListItem>
                        
                        
                </asp:DropDownList><br /><br />

                    

                    <span class="spa">Are you working in this field?</span><br /><br />

                    <asp:DropDownList ID="DropDownList31" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                         <asp:ListItem>May be</asp:ListItem>                                           
                </asp:DropDownList><br /><br />

                   

                   
                             

                 <asp:Button ID="Button18" runat="server" Text="Make my system" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="150" OnClick="Button18_Click"   />
                 </td>
                    <td style="padding-left:2%; width:50%;">
                        <asp:Image ID="Image12" runat="server" ImageAlign="Middle" ImageUrl="~/images/animationpic.jpg" />
                    </td>
                    </tr>
                    </table>

            </asp:Panel>


            <asp:Panel ID="Panel13" runat="server">

                 <table style="width:100%; margin-top:2%; background-color:#00acee; padding:7%;">
                <tr>
                <td style="padding-left:10%;">
                
                    <span class="spa">Describe your work</span><br /><br />

                    <asp:DropDownList ID="DropDownList30" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Animations</asp:ListItem>
                        <asp:ListItem>Graphic Designing</asp:ListItem>
                         <asp:ListItem>Editing</asp:ListItem>
                         <asp:ListItem>Common Works</asp:ListItem>
                        
                </asp:DropDownList><br /><br />

                    
                    

                    <span class="spa">Are you working in this field?</span><br /><br />

                    <asp:DropDownList ID="DropDownList33" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                         <asp:ListItem>May be</asp:ListItem>                                           
                </asp:DropDownList><br /><br />

                   

                   
                             

                 <asp:Button ID="Button19" runat="server" Text="Make my system" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="150" OnClick="Button19_Click"   />
                 </td>
                    <td style="padding-left:2%; width:50%;">
                        <asp:Image ID="Image13" runat="server" ImageAlign="Middle" ImageUrl="~/images/animationpic.jpg" />
                    </td>
                    </tr>
                    </table>

            </asp:Panel>




            


            <asp:Panel ID="Panel14" runat="server">

                 <table style="width:100%; margin-top:2%; background-color:#00acee; padding:7%;">
                <tr>
                <td style="padding-left:10%;">
                
                    <span class="spa">Describe your work</span><br /><br />

                    <asp:DropDownList ID="DropDownList32" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Word processing</asp:ListItem>
                        <asp:ListItem>Appointment calendar</asp:ListItem>
                         <asp:ListItem>Account balance</asp:ListItem>
                         <asp:ListItem>Roller Dex</asp:ListItem>
                        <asp:ListItem>Phone book</asp:ListItem>
                        <asp:ListItem>Newspaper</asp:ListItem>
                         <asp:ListItem>Inter-office mailing</asp:ListItem>
                         <asp:ListItem>File & documents keeper.</asp:ListItem>
                        
                </asp:DropDownList><br /><br />

                     <span class="spa">Mention the monitor size</span><br /><br />

                    <asp:DropDownList ID="DropDownList34" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Below 21"inch</asp:ListItem>
                        <asp:ListItem>24"inch to 32"inch</asp:ListItem>
                         <asp:ListItem>32"inch to 50"inch</asp:ListItem>
                         <asp:ListItem>Above 50"inch</asp:ListItem>
                        
                </asp:DropDownList><br /><br />

                    <span class="spa">Monitor setup</span><br /><br />

                    <asp:DropDownList ID="DropDownList35" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Single Monitor Setup</asp:ListItem>
                        <asp:ListItem>Dual Monitor Setup</asp:ListItem>
                         <asp:ListItem>Multi Monitor Setup</asp:ListItem>
                         
                        
                </asp:DropDownList><br /><br />

                    <span class="spa">Are you working in this field?</span><br /><br />

                    <asp:DropDownList ID="DropDownList36" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                         <asp:ListItem>May be</asp:ListItem>                                           
                </asp:DropDownList><br /><br />

                    <span class="spa">Do you have air conditioner in your system room?</span><br /><br />

                    <asp:DropDownList ID="DropDownList37" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                         <asp:ListItem>May be planning to buy</asp:ListItem>                                           
                </asp:DropDownList><br /><br />


                   
                             

                 <asp:Button ID="Button20" runat="server" Text="Make my system" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="150" OnClick="Button20_Click"   />
                 </td>
                    <td style="padding-left:2%; width:50%;">
                        <asp:Image ID="Image14" runat="server" ImageAlign="Middle" ImageUrl="~/images/officepic.jpg" />
                    </td>
                    </tr>
                    </table>

            </asp:Panel>


             <asp:Panel ID="Panel15" runat="server">

                 <table style="width:100%; margin-top:2%; background-color:#00acee; padding:7%;">
                <tr>
                <td style="padding-left:10%;">
                
                    <span class="spa">Describe your work</span><br /><br />

                    <asp:DropDownList ID="DropDownList38" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Word processing</asp:ListItem>
                        <asp:ListItem>Appointment calendar</asp:ListItem>
                         <asp:ListItem>Account balance</asp:ListItem>
                         <asp:ListItem>Roller Dex</asp:ListItem>
                        <asp:ListItem>Phone book</asp:ListItem>
                        <asp:ListItem>Newspaper</asp:ListItem>
                         <asp:ListItem>Inter-office mailing</asp:ListItem>
                         <asp:ListItem>File & documents keeper.</asp:ListItem>
                        
                </asp:DropDownList><br /><br />

                     <span class="spa">Mention the monitor size</span><br /><br />

                    <asp:DropDownList ID="DropDownList39" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Below 21"inch</asp:ListItem>
                        <asp:ListItem>24"inch to 32"inch</asp:ListItem>
                         <asp:ListItem>32"inch to 50"inch</asp:ListItem>
                         
                        
                </asp:DropDownList><br /><br />

                    <span class="spa">Monitor setup</span><br /><br />

                    <asp:DropDownList ID="DropDownList40" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Single Monitor Setup</asp:ListItem>
                        <asp:ListItem>Dual Monitor Setup</asp:ListItem>
                         <asp:ListItem>Multi Monitor Setup</asp:ListItem>
                         
                        
                </asp:DropDownList><br /><br />

                    <span class="spa">Are you working in this field?</span><br /><br />

                    <asp:DropDownList ID="DropDownList41" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                         <asp:ListItem>May be</asp:ListItem>                                           
                </asp:DropDownList><br /><br />

                    <span class="spa">Do you have air conditioner in your system room?</span><br /><br />

                    <asp:DropDownList ID="DropDownList42" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                         <asp:ListItem>May be planning to buy</asp:ListItem>                                           
                </asp:DropDownList><br /><br />


                   
                             

                 <asp:Button ID="Button21" runat="server" Text="Make my system" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="150" OnClick="Button21_Click"   />
                 </td>
                    <td style="padding-left:2%; width:50%;">
                        <asp:Image ID="Image15" runat="server" ImageAlign="Middle" ImageUrl="~/images/officepic.jpg" />
                    </td>
                    </tr>
                    </table>

            </asp:Panel>


             <asp:Panel ID="Panel16" runat="server">

                 <table style="width:100%; margin-top:2%; background-color:#00acee; padding:7%;">
                <tr>
                <td style="padding-left:10%;">
                
                    <span class="spa">Describe your work</span><br /><br />

                    <asp:DropDownList ID="DropDownList43" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Word processing</asp:ListItem>
                        <asp:ListItem>Appointment calendar</asp:ListItem>
                         <asp:ListItem>Account balance</asp:ListItem>
                         <asp:ListItem>Roller Dex</asp:ListItem>
                        <asp:ListItem>Phone book</asp:ListItem>
                        <asp:ListItem>Newspaper</asp:ListItem>
                         <asp:ListItem>Inter-office mailing</asp:ListItem>
                         <asp:ListItem>File & documents keeper.</asp:ListItem>
                        
                </asp:DropDownList><br /><br />

                     <span class="spa">Mention the monitor size</span><br /><br />

                    <asp:DropDownList ID="DropDownList44" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Below 21"inch</asp:ListItem>
                        <asp:ListItem>24"inch to 32"inch</asp:ListItem>
                        
                        
                </asp:DropDownList><br /><br />

                    

                    <span class="spa">Are you working in this field?</span><br /><br />

                    <asp:DropDownList ID="DropDownList45" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                         <asp:ListItem>May be</asp:ListItem>                                           
                </asp:DropDownList><br /><br />

                   

                   
                             

                 <asp:Button ID="Button22" runat="server" Text="Make my system" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="150" OnClick="Button22_Click"   />
                 </td>
                    <td style="padding-left:2%; width:50%;">
                        <asp:Image ID="Image16" runat="server" ImageAlign="Middle" ImageUrl="~/images/officepic.jpg" />
                    </td>
                    </tr>
                    </table>

            </asp:Panel>


            <asp:Panel ID="Panel17" runat="server">

                 <table style="width:100%; margin-top:2%; background-color:#00acee; padding:7%;">
                <tr>
                <td style="padding-left:10%;">
                
                    <span class="spa">Describe your work</span><br /><br />

                    <asp:DropDownList ID="DropDownList46" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Word processing</asp:ListItem>
                        <asp:ListItem>Appointment calendar</asp:ListItem>
                         <asp:ListItem>Account balance</asp:ListItem>
                         <asp:ListItem>Roller Dex</asp:ListItem>
                        <asp:ListItem>Phone book</asp:ListItem>
                        <asp:ListItem>Newspaper</asp:ListItem>
                         <asp:ListItem>Inter-office mailing</asp:ListItem>
                         <asp:ListItem>File & documents keeper.</asp:ListItem>
                        
                </asp:DropDownList><br /><br />

                    
                    

                    <span class="spa">Are you working in this field?</span><br /><br />

                    <asp:DropDownList ID="DropDownList47" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                         <asp:ListItem>May be</asp:ListItem>                                           
                </asp:DropDownList><br /><br />

                   

                   
                             

                 <asp:Button ID="Button23" runat="server" Text="Make my system" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="150" OnClick="Button23_Click"   />
                 </td>
                    <td style="padding-left:2%; width:50%;">
                        <asp:Image ID="Image17" runat="server" ImageAlign="Middle" ImageUrl="~/images/officepic.jpg" />
                    </td>
                    </tr>
                    </table>





            </asp:Panel>









            <asp:Panel ID="Panel18" runat="server">

                 <table style="width:100%; margin-top:2%; background-color:#00acee; padding:7%;">
                <tr>
                <td style="padding-left:10%;">
                
                    <span class="spa">Which programming languaage/Framework do you use most?</span><br /><br />

                    <asp:DropDownList ID="DropDownList48" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>JAVA</asp:ListItem>
                        <asp:ListItem>C#/.NET</asp:ListItem>
                         <asp:ListItem>Android</asp:ListItem>
                         <asp:ListItem>Python</asp:ListItem>
                        <asp:ListItem>C++/C</asp:ListItem>
                        <asp:ListItem>Javascript</asp:ListItem>
                         <asp:ListItem>Ruby</asp:ListItem>
                         <asp:ListItem>Others</asp:ListItem>
                        
                </asp:DropDownList><br /><br />

                     <span class="spa">Mention the monitor size</span><br /><br />

                    <asp:DropDownList ID="DropDownList49" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Below 21"inch</asp:ListItem>
                        <asp:ListItem>24"inch to 32"inch</asp:ListItem>
                         <asp:ListItem>32"inch to 50"inch</asp:ListItem>
                         <asp:ListItem>Above 50"inch</asp:ListItem>
                        
                </asp:DropDownList><br /><br />

                    <span class="spa">Monitor setup</span><br /><br />

                    <asp:DropDownList ID="DropDownList50" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Single Monitor Setup</asp:ListItem>
                        <asp:ListItem>Dual Monitor Setup</asp:ListItem>
                         <asp:ListItem>Multi Monitor Setup</asp:ListItem>
                         
                        
                </asp:DropDownList><br /><br />

                    <span class="spa">Are you working in this field?</span><br /><br />

                    <asp:DropDownList ID="DropDownList51" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                         <asp:ListItem>May be</asp:ListItem>                                           
                </asp:DropDownList><br /><br />

                    <span class="spa">Do you want any programming software to be preinstalled? if yes specify with colon</span><br /><br />

                    <asp:TextBox ID="TextBox4" CssClass="txtadd" placeholder="Software name" runat="server"></asp:TextBox><br />


                   
                             

                 <asp:Button ID="Button24" runat="server" Text="Make my system" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="150" OnClick="Button24_Click"   />
                 </td>
                    <td style="padding-left:2%; width:50%;">
                        <asp:Image ID="Image18" runat="server" ImageAlign="Middle" Width="500" ImageUrl="~/images/progr.jpg" />
                    </td>
                    </tr>
                    </table>

            </asp:Panel>


             <asp:Panel ID="Panel19" runat="server">

                 <table style="width:100%; margin-top:2%; background-color:#00acee; padding:7%;">
                <tr>
                <td style="padding-left:10%;">
                
                    <span class="spa">Which programming languaage/Framework do you use most?</span><br /><br />

                    <asp:DropDownList ID="DropDownList52" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>JAVA</asp:ListItem>
                        <asp:ListItem>C#/.NET</asp:ListItem>
                         <asp:ListItem>Android</asp:ListItem>
                         <asp:ListItem>Python</asp:ListItem>
                        <asp:ListItem>C++/C</asp:ListItem>
                        <asp:ListItem>Javascript</asp:ListItem>
                         <asp:ListItem>Ruby</asp:ListItem>
                         <asp:ListItem>Others</asp:ListItem>
                        
                </asp:DropDownList><br /><br />

                     <span class="spa">Mention the monitor size</span><br /><br />

                    <asp:DropDownList ID="DropDownList53" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Below 21"inch</asp:ListItem>
                        <asp:ListItem>24"inch to 32"inch</asp:ListItem>
                         <asp:ListItem>32"inch to 50"inch</asp:ListItem>
                        
                        
                </asp:DropDownList><br /><br />

                    <span class="spa">Monitor setup</span><br /><br />

                    <asp:DropDownList ID="DropDownList54" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Single Monitor Setup</asp:ListItem>
                        <asp:ListItem>Dual Monitor Setup</asp:ListItem>
                         <asp:ListItem>Multi Monitor Setup</asp:ListItem>
                         
                        
                </asp:DropDownList><br /><br />

                    <span class="spa">Are you working in this field?</span><br /><br />

                    <asp:DropDownList ID="DropDownList55" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                         <asp:ListItem>May be</asp:ListItem>                                           
                </asp:DropDownList><br /><br />

                    <span class="spa">Do you want any programming software to be preinstalled? if yes specify with colon</span><br /><br />

                    <asp:TextBox ID="TextBox5" CssClass="txtadd" placeholder="Software name" runat="server"></asp:TextBox><br />


                   
                             

                 <asp:Button ID="Button25" runat="server" Text="Make my system" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="150" OnClick="Button25_Click"   />
                 </td>
                    <td style="padding-left:2%; width:50%;">
                        <asp:Image ID="Image19" runat="server" ImageAlign="Middle" Width="500" ImageUrl="~/images/progr.jpg" />
                    </td>
                    </tr>
                    </table>

            </asp:Panel>


             <asp:Panel ID="Panel20" runat="server">

                 <table style="width:100%; margin-top:2%; background-color:#00acee; padding:7%;">
                <tr>
                <td style="padding-left:10%;">
                
                    <span class="spa">Which programming languaage/Framework do you use most?</span><br /><br />

                    <asp:DropDownList ID="DropDownList56" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>JAVA</asp:ListItem>
                        <asp:ListItem>C#/.NET</asp:ListItem>
                         <asp:ListItem>Android</asp:ListItem>
                         <asp:ListItem>Python</asp:ListItem>
                        <asp:ListItem>C++/C</asp:ListItem>
                        <asp:ListItem>Javascript</asp:ListItem>
                         <asp:ListItem>Ruby</asp:ListItem>
                         <asp:ListItem>Others</asp:ListItem>
                        
                </asp:DropDownList><br /><br />

                     <span class="spa">Mention the monitor size</span><br /><br />

                    <asp:DropDownList ID="DropDownList57" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Below 21"inch</asp:ListItem>
                        <asp:ListItem>24"inch to 32"inch</asp:ListItem>
                        
                        
                </asp:DropDownList><br /><br />

                    <span class="spa">Monitor setup</span><br /><br />

                    <asp:DropDownList ID="DropDownList58" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Single Monitor Setup</asp:ListItem>
                        <asp:ListItem>Dual Monitor Setup</asp:ListItem>
                        
                         
                        
                </asp:DropDownList><br /><br />

                    <span class="spa">Are you working in this field?</span><br /><br />

                    <asp:DropDownList ID="DropDownList59" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                         <asp:ListItem>May be</asp:ListItem>                                           
                </asp:DropDownList><br /><br />

                   

                   

                   
                             

                 <asp:Button ID="Button26" runat="server" Text="Make my system" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="150" OnClick="Button26_Click"   />
                 </td>
                    <td style="padding-left:2%; width:50%;">
                        <asp:Image ID="Image20" runat="server" ImageAlign="Middle" Width="500" ImageUrl="~/images/progr.jpg" />
                    </td>
                    </tr>
                    </table>

            </asp:Panel>


            <asp:Panel ID="Panel21" runat="server">

                 <table style="width:100%; margin-top:2%; background-color:#00acee; padding:7%;">
                <tr>
                <td style="padding-left:10%;">
                
                   <span class="spa">Which programming languaage/Framework do you use most?</span><br /><br />

                    <asp:DropDownList ID="DropDownList60" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>JAVA</asp:ListItem>
                        <asp:ListItem>C#/.NET</asp:ListItem>
                         <asp:ListItem>Android</asp:ListItem>
                         <asp:ListItem>Python</asp:ListItem>
                        <asp:ListItem>C++/C</asp:ListItem>
                        <asp:ListItem>Javascript</asp:ListItem>
                         <asp:ListItem>Ruby</asp:ListItem>
                         <asp:ListItem>Others</asp:ListItem>
                        
                </asp:DropDownList><br /><br />

                  

                   

                    <span class="spa">Are you working in this field?</span><br /><br />

                    <asp:DropDownList ID="DropDownList63" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                         <asp:ListItem>May be</asp:ListItem>                                           
                </asp:DropDownList><br /><br />

                 

                   
                             

                 <asp:Button ID="Button27" runat="server" Text="Make my system" CssClass="bt" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="150" OnClick="Button27_Click"   />
                 </td>
                    <td style="padding-left:2%; width:50%;">
                        <asp:Image ID="Image21" runat="server" ImageAlign="Middle" Width="500" ImageUrl="~/images/progr.jpg" />
                    </td>
                    </tr>
                    </table>





            </asp:Panel>
        </div>

    </div>
</asp:Content>

