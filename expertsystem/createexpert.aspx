<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="createexpert.aspx.cs" Inherits="expertsystem_createexpert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        td
        {
            border:1px solid #efefef;
            width:350px;
            height:200px;
            padding-left:30px;
        }
        .drd
        {
            border:1px solid #d9d9d9;
            outline:none;
            max-height: 300px;
            
            
            
            
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
    <div style="margin-left:185px;">
        <h3 style="">CREATE EXPERT SYSTEM</h3>

        <table>
            <tr>
                <td>
                     <span class="sp">BUDGET</span><br /><br />
                     <asp:DropDownList ID="DropDownList19" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Expensive</asp:ListItem>
                        <asp:ListItem>High</asp:ListItem>
                        <asp:ListItem>Medium</asp:ListItem>
                        <asp:ListItem>Low</asp:ListItem>
                </asp:DropDownList><br /><br />
                </td>

                <td>
                     <span class="sp">TYPE</span><br /><br />
                     <asp:DropDownList ID="DropDownList20" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>Whole system</asp:ListItem>
                        <asp:ListItem>Only CPU</asp:ListItem>
                        
                </asp:DropDownList><br /><br />
                </td>

                

            </tr>

            <tr>
               
                    <td>
                     <span class="sp">PRIORITY1</span><br /><br />
                     <asp:DropDownList ID="DropDownList21" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>gaming and live streaming</asp:ListItem>
                        <asp:ListItem>animation and graphics work</asp:ListItem>
                         <asp:ListItem>office work</asp:ListItem>
                         <asp:ListItem>programming</asp:ListItem>
                        
                </asp:DropDownList><br /><br />
                </td>

                <td>
                     <span class="sp">PRIORITY2</span><br /><br />
                     <asp:DropDownList ID="DropDownList22" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>gaming and live streaming</asp:ListItem>
                        <asp:ListItem>animation and graphics work</asp:ListItem>
                         <asp:ListItem>office work</asp:ListItem>
                         <asp:ListItem>programming</asp:ListItem>
                        
                </asp:DropDownList><br /><br />
                </td>

                <td>
                     <span class="sp">PRIORITY3</span><br /><br />
                     <asp:DropDownList ID="DropDownList23" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>gaming and live streaming</asp:ListItem>
                        <asp:ListItem>animation and graphics work</asp:ListItem>
                         <asp:ListItem>office work</asp:ListItem>
                         <asp:ListItem>programming</asp:ListItem>
                        
                </asp:DropDownList><br /><br />
                </td>

                <td>
                     <span class="sp">PRIORITY4</span><br /><br />
                     <asp:DropDownList ID="DropDownList24" Width="330px" CssClass="drd" runat="server">
                        <asp:ListItem>gaming and live streaming</asp:ListItem>
                        <asp:ListItem>animation and graphics work</asp:ListItem>
                         <asp:ListItem>office work</asp:ListItem>
                         <asp:ListItem>programming</asp:ListItem>
                        
                </asp:DropDownList><br /><br />
                </td>
                
            </tr>

            <tr>
                <td>
                    <span class="sp">MOTHERBOARD</span><br /><br />
                    <asp:DropDownList ID="DropDownList1" runat="server" onmousedown="this.size=10;" onfocusout="this.size=1;" ondblclick="this.size=1;" Width="330px" CssClass="drd" DataSourceID="SqlDataSource1" DataTextField="man" DataValueField="man" AutoPostBack="True"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man] FROM [motherboard]"></asp:SqlDataSource>
                    <br /><br /><span class="sp">Price</span><br />
                    <asp:Label ID="Label1" ForeColor="red" runat="server"></asp:Label>
                  


                </td>

                <td>
                    <span class="sp">RAM</span><br /><br />
                    <asp:DropDownList ID="DropDownList2" runat="server" onmousedown="this.size=10;" onfocusout="this.size=1;" ondblclick="this.size=1;" Width="330px" CssClass="drd" DataSourceID="SqlDataSource2" AutoPostBack="True" DataTextField="man" DataValueField="man"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man] FROM [ram]"></asp:SqlDataSource>
                    <br /><br /><span class="sp">Price</span><br />
                    <asp:Label ID="Label2" ForeColor="red" runat="server"></asp:Label>
                </td>

                <td>
                    <span class="sp">PROCESSOR</span><br /><br />
                    <asp:DropDownList ID="DropDownList3" runat="server" onmousedown="this.size=10;" onfocusout="this.size=1;" ondblclick="this.size=1;" Width="330px" CssClass="drd" DataSourceID="SqlDataSource3" AutoPostBack="True" DataTextField="man" DataValueField="man"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man] FROM [processor]"></asp:SqlDataSource>
                    <br /><br /><span class="sp">Price</span><br />
                    <asp:Label ID="Label3" ForeColor="red" runat="server"></asp:Label>
                     </td>

                <td>
                    <span class="sp">GPU</span><br /><br />
                    <asp:DropDownList ID="DropDownList4" runat="server" onmousedown="this.size=10;" onfocusout="this.size=1;" ondblclick="this.size=1;" Width="330px" CssClass="drd" DataSourceID="SqlDataSource4" AutoPostBack="True" DataTextField="man" DataValueField="man"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man] FROM [gpu]"></asp:SqlDataSource>
                    <br /><br /><span class="sp">Price</span><br />
                    <asp:Label ID="Label4" ForeColor="red" runat="server"></asp:Label>
                </td>

               
            </tr>

            <tr>
                <td>
                    <span class="sp">CD DRIVE</span><br /><br />
                    <asp:DropDownList ID="DropDownList5" runat="server" onmousedown="this.size=10;" onfocusout="this.size=1;" ondblclick="this.size=1;" Width="330px" CssClass="drd" DataSourceID="SqlDataSource5" AutoPostBack="True" DataTextField="man" DataValueField="man"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man] FROM [cddrive]"></asp:SqlDataSource>
                    <br /><br /><span class="sp">Price</span><br />
                    <asp:Label ID="Label5" ForeColor="red" runat="server"></asp:Label>
                </td>

                <td>
                    <span class="sp">SMPS</span><br /><br />
                    <asp:DropDownList ID="DropDownList6" runat="server" onmousedown="this.size=10;" onfocusout="this.size=1;" ondblclick="this.size=1;" Width="330px" CssClass="drd" DataSourceID="SqlDataSource6" AutoPostBack="True" DataTextField="man" DataValueField="man"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man] FROM [smps]"></asp:SqlDataSource>
                    <br /><br /><span class="sp">Price</span><br />
                    <asp:Label ID="Label6" ForeColor="red" runat="server"></asp:Label>
                </td>

                <td>
                    <span class="sp">HARD DISK</span><br /><br />
                    <asp:DropDownList ID="DropDownList7" runat="server" onmousedown="this.size=10;" onfocusout="this.size=1;" ondblclick="this.size=1;" Width="330px" CssClass="drd" DataSourceID="SqlDataSource7" AutoPostBack="True" DataTextField="man" DataValueField="man"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man] FROM [hdd]"></asp:SqlDataSource>
                    <br /><br /><span class="sp">Price</span><br />
                    <asp:Label ID="Label7" ForeColor="red" runat="server"></asp:Label>
                </td>

                <td>
                    <span class="sp">SOUNDCARD</span><br /><br />
                    <asp:DropDownList ID="DropDownList8" runat="server" onmousedown="this.size=10;" onfocusout="this.size=1;" ondblclick="this.size=1;" Width="330px" CssClass="drd" DataSourceID="SqlDataSource8" AutoPostBack="True" DataTextField="man" DataValueField="man"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man] FROM [soundcard]"></asp:SqlDataSource>
                    <br /><br /><span class="sp">Price</span><br />
                    <asp:Label ID="Label8" ForeColor="red" runat="server"></asp:Label>
                </td>

            </tr>

            <tr>
                <td>
                    <span class="sp">SSD</span><br /><br />
                    <asp:DropDownList ID="DropDownList9" runat="server" onmousedown="this.size=10;" onfocusout="this.size=1;" ondblclick="this.size=1;" Width="330px" CssClass="drd" DataSourceID="SqlDataSource9" AutoPostBack="True" DataTextField="man" DataValueField="man"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man] FROM [ssd]"></asp:SqlDataSource>
                    <br /><br /><span class="sp">Price</span><br />
                    <asp:Label ID="Label9" ForeColor="red" runat="server"></asp:Label>
                </td>

                <td>
                    <span class="sp">CPU COOLER</span><br /><br />
                    <asp:DropDownList ID="DropDownList10" runat="server" onmousedown="this.size=10;" onfocusout="this.size=1;" ondblclick="this.size=1;" Width="330px" CssClass="drd" DataSourceID="SqlDataSource10" AutoPostBack="True" DataTextField="man" DataValueField="man"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man] FROM [cooler]"></asp:SqlDataSource>
                    <br /><br /><span class="sp">Price</span><br />
                    <asp:Label ID="Label10" ForeColor="red" runat="server"></asp:Label>
                    
                </td>

                <td>
                    <span class="sp">CASE</span><br /><br />
                    <asp:DropDownList ID="DropDownList11" runat="server" onmousedown="this.size=10;" onfocusout="this.size=1;" ondblclick="this.size=1;" Width="330px" CssClass="drd" DataSourceID="SqlDataSource11" AutoPostBack="True" DataTextField="man" DataValueField="man"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man] FROM [casee]"></asp:SqlDataSource>
                    <br /><br /><span class="sp">Price</span><br />
                    <asp:Label ID="Label12" ForeColor="red" runat="server"></asp:Label>
                </td>

                <td>
                    <span class="sp">NETWORKCARD</span><br /><br />
                    <asp:DropDownList ID="DropDownList12" runat="server" onmousedown="this.size=10;" onfocusout="this.size=1;" ondblclick="this.size=1;" Width="330px" CssClass="drd" DataSourceID="SqlDataSource12" AutoPostBack="True" DataTextField="man" DataValueField="man"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man] FROM [net]"></asp:SqlDataSource>
                    <br /><br /><span class="sp">Price</span><br />
                    <asp:Label ID="Label13" ForeColor="red" runat="server"></asp:Label>
                </td>

            </tr>

            <tr>
                <td>
                    <span class="sp">KEYBOARD</span><br /><br />
                    <asp:DropDownList ID="DropDownList13" runat="server" onmousedown="this.size=10;" onfocusout="this.size=1;" ondblclick="this.size=1;" Width="330px" CssClass="drd" DataSourceID="SqlDataSource13" DataTextField="man" AutoPostBack="True" ondatabound="DropDownList13_DataBound" DataValueField="man"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource13" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man] FROM [keyboard]"></asp:SqlDataSource>
                    <br /><br /><span class="sp">Price</span><br />
                    <asp:Label ID="Label14" ForeColor="red" runat="server"></asp:Label>
                </td>

                <td>
                    <span class="sp">MOUSE</span><br /><br />
                    <asp:DropDownList ID="DropDownList14" runat="server" onmousedown="this.size=10;" onfocusout="this.size=1;" ondblclick="this.size=1;" Width="330px" CssClass="drd" DataSourceID="SqlDataSource14" DataTextField="man" AutoPostBack="True" ondatabound="DropDownList14_DataBound" DataValueField="man"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource14" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man] FROM [mouse]"></asp:SqlDataSource>
                    <br /><br /><span class="sp">Price</span><br />
                    <asp:Label ID="Label15" ForeColor="red" runat="server"></asp:Label>
                </td>

                <td>
                    <span class="sp">MONITOR</span><br /><br />
                    <asp:DropDownList ID="DropDownList15" runat="server" onmousedown="this.size=10;" onfocusout="this.size=1;" ondblclick="this.size=1;" Width="330px" CssClass="drd" DataSourceID="SqlDataSource15" DataTextField="man" AutoPostBack="True" DataValueField="man"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource15" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man] FROM [monitor]"></asp:SqlDataSource>
                    <br /><br /><span class="sp">Price</span><br />
                    <asp:Label ID="Label16" ForeColor="red" runat="server"></asp:Label>
                </td>

                <td>
                    <span class="sp">SPEAKER</span><br /><br />
                    <asp:DropDownList ID="DropDownList16" runat="server" onmousedown="this.size=10;" onfocusout="this.size=1;" ondblclick="this.size=1;" Width="330px" CssClass="drd" DataSourceID="SqlDataSource16" DataTextField="man" AutoPostBack="True" DataValueField="man" ondatabound="DropDownList16_DataBound"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource16" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man] FROM [speaker]"></asp:SqlDataSource>
                    <br /><br /><span class="sp">Price</span><br />
                    <asp:Label ID="Label17" ForeColor="red" runat="server"></asp:Label>
                </td>
            </tr>

            <tr>
                <td>
                    <span class="sp">RAM1</span><br /><br />
                    <asp:DropDownList ID="DropDownList25" runat="server" onmousedown="this.size=10;" onfocusout="this.size=1;" ondblclick="this.size=1;" Width="330px" CssClass="drd" DataSourceID="SqlDataSource19" DataTextField="man" AutoPostBack="True" ondatabound="DropDownList25_DataBound" DataValueField="man"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource19" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man] FROM [ram]"></asp:SqlDataSource>
                    <br /><br /><span class="sp">Price</span><br />
                    <asp:Label ID="Label18" ForeColor="red" runat="server"></asp:Label>
                </td>
                <td>
                    <span class="sp">RAM2</span><br /><br />
                    <asp:DropDownList ID="DropDownList26" runat="server" onmousedown="this.size=10;" onfocusout="this.size=1;" ondblclick="this.size=1;" Width="330px" CssClass="drd" DataSourceID="SqlDataSource20" DataTextField="man" AutoPostBack="True" ondatabound="DropDownList26_DataBound" DataValueField="man"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource20" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man] FROM [ram]"></asp:SqlDataSource>
                    <br /><br /><span class="sp">Price</span><br />
                    <asp:Label ID="Label19" ForeColor="red" runat="server"></asp:Label>
                </td>
                <td>
                    <span class="sp">RAM3</span><br /><br />
                    <asp:DropDownList ID="DropDownList27" runat="server" onmousedown="this.size=10;" onfocusout="this.size=1;" ondblclick="this.size=1;" Width="330px" CssClass="drd" DataSourceID="SqlDataSource21" DataTextField="man" AutoPostBack="True" ondatabound="DropDownList27_DataBound" DataValueField="man"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource21" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man] FROM [ram]"></asp:SqlDataSource>
                    <br /><br /><span class="sp">Price</span><br />
                    <asp:Label ID="Label20" ForeColor="red" runat="server"></asp:Label>
                </td>
                <td>
                    <span class="sp">GPU1</span><br /><br />
                    <asp:DropDownList ID="DropDownList28" runat="server" onmousedown="this.size=10;" onfocusout="this.size=1;" ondblclick="this.size=1;" Width="330px" CssClass="drd" DataSourceID="SqlDataSource22" DataTextField="man" AutoPostBack="True" ondatabound="DropDownList28_DataBound" DataValueField="man"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource22" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man] FROM [gpu]"></asp:SqlDataSource>
                    <br /><br /><span class="sp">Price</span><br />
                    <asp:Label ID="Label21" ForeColor="red" runat="server"></asp:Label>
                </td>


            </tr>

            <tr>
                <td>
                    <span class="sp">UPS</span><br /><br />
                    <asp:DropDownList ID="DropDownList17" runat="server" onmousedown="this.size=10;" onfocusout="this.size=1;" ondblclick="this.size=1;" Width="330px" CssClass="drd" DataSourceID="SqlDataSource17" DataTextField="man" AutoPostBack="True" DataValueField="man" ondatabound="DropDownList17_DataBound"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource17" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man] FROM [ups]"></asp:SqlDataSource>
                    <br /><br /><span class="sp">Price</span><br />
                    <asp:Label ID="Label22" ForeColor="red" runat="server"></asp:Label>
                </td>

                <td>
                    <span class="sp">CASE FAN</span><br /><br />
                    <asp:DropDownList ID="DropDownList18" runat="server" onmousedown="this.size=10;" onfocusout="this.size=1;" ondblclick="this.size=1;" Width="330px" CssClass="drd" DataSourceID="SqlDataSource18" DataTextField="man" AutoPostBack="True" DataValueField="man"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource18" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [man] FROM [casefan]"></asp:SqlDataSource>
                    <br /><br /><span class="sp">Price</span><br />
                    <asp:Label ID="Label23" ForeColor="red" runat="server"></asp:Label>
                </td>

                <td>
                     <asp:Button ID="Button1" runat="server" Text="SUBMIT" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="150" OnClick="Button1_Click" /> &nbsp
                     <asp:Button ID="Button2" runat="server" Text="CLEAR" ForeColor="White" BorderStyle="None" BackColor="Red" Height="50" Width="150" OnClick="Button2_Click" />
                    
                </td>

                
            </tr>

        </table>
        </div>
         </div>
</asp:Content>

