<%@ Page Title="" Language="C#" MasterPageFile="~/User/usermaster.master" AutoEventWireup="true" CodeFile="motherboarddes.aspx.cs" Inherits="User_Product_Page_motherboarddes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>

        .auto-style1
        {
            height: 200px;
            border:1px solid #e3e3e3;
            
        }
         .auto-style5 
        {
            display:table;
            margin-left:5px;
            
        }
        .auto-style2
        {
            
            height:100%;
            
            padding:30px;
        }
        .auto-stylee2
        {
            height: 50px;
            
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size:18px;

        }
        .auto-styleee2
        {
            height: 50px;
            
            padding-left:40px;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size:13px;

        }
       .oo
       {
            width: 100px;
            margin:10px;
            float:left;
       }
       .oo:hover
       {
            width:400px;
            position:absolute;
       }
            
       .oow
       {
            width:100px;
            margin:10px;
       }
       .oow:hover
        {
            width:400px;
            position:absolute;
        }
        .ooo
        {
            margin:40px;
            width:550px;
            
        }
        .mbname
        {
            padding-left:40px;
        }
        .tb
        {
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
            font-size:20px;
            color:#f92f42;
            
            
            
        }
        .titl
        {
            width:90%;
            height:50px;
            
            background-color:#f0f0f0;
            padding-left:15px;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            
            
        }
        .ff
        {
            font-size:30px;
            color:red;
        }
        .btn_cart
        {
            background-color:red;
            color:white;
            outline:none;
            border:none;
            margin-left:10px;
            cursor:pointer;

        }

     

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="section_backgound">

         <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" >
        <ItemTemplate>
            <table class="cata_comp">
                <tr>

                     <td class="auto-style5">
                        <asp:Image ID="Image4" runat="server" ImageUrl='<%# Eval("imageurl2") %>'  CssClass="oo"/>
                     </td>

                    <td class="auto-style5">
                        <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("imageurl1") %>'  CssClass="oow"/>
                     </td>

                    <td class="auto-style1">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("imageurl") %>'  CssClass="ooo"/>
                    </td>

                    <td class="auto-style2">
                        <div class="titl"><h3 style=" font-size:18px; padding-top:10px; color:#e7b93c;">MOTHERBOARD SPECIFICATIONS</h3></div><br />
                        <span class="sp">Manufacturer</span><br />
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("man") %>'></asp:Label><br /><br />
                        <span class="sp">Model No</span><br />
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("mod") %>'></asp:Label><br /><br />
                        
                        <span class="sp">Color</span><br />
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("col") %>'></asp:Label><br /><br />
                        <span class="sp">Form Factor</span><br />
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("factor") %>'></asp:Label><br /><br />
                        <span class="sp">CPU Socket</span><br />
                         <asp:Label ID="Label9" runat="server" Text='<%# Eval("cpu") %>'></asp:Label><br /><br />
                        <span class="sp">Chipset</span><br />
                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("chi") %>'></asp:Label><br /><br />
                        <span class="sp">Memory Slot</span><br />
                        <asp:Label ID="Label13" runat="server" Text='<%# Eval("mem") %>'></asp:Label><br /><br />
                        <span class="sp">Memory Type</span><br />
                        <asp:Label ID="Label14" runat="server" Text='<%# Eval("memtyp") %>'></asp:Label><br /><br />
                        <span class="sp">Maximum Supported Memory</span><br />
                        <asp:Label ID="Label15" runat="server" Text='<%# Eval("max") %>'></asp:Label><br /><br />
                        
                     </td> 
                    <td class="auto-style2">
                        <span class="sp">Raid Support</span><br />
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("rai") %>'></asp:Label><br /><br />
                        <span class="sp">Onboard Video</span><br />
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("onb") %>'></asp:Label><br /><br />
                        <span class="sp">Crossfire Support</span><br />
                        <asp:Label ID="Label16" runat="server" Text='<%# Eval("cro") %>'></asp:Label><br /><br />
                        <span class="sp">SLI Support</span><br />
                        <asp:Label ID="Label17" runat="server" Text='<%# Eval("sli") %>'></asp:Label><br /><br />
                        <span class="sp">Sata 6 GB/s</span><br />
                        <asp:Label ID="Label18" runat="server" Text='<%# Eval("sat") %>'></asp:Label><br /><br />
                        <span class="sp">Onboard Ethernet</span><br />
                        <asp:Label ID="Label19" runat="server" Text='<%# Eval("onbeth") %>'></asp:Label><br /><br />
                        <span class="sp">Onboard USB 3.0 Header(s)</span><br />
                        <asp:Label ID="Label20" runat="server" Text='<%# Eval("onbhea") %>'></asp:Label><br /><br />
                        
                        

                        
                         
                    </td>

                </tr>

                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="motherb" runat="server" Text="motherboard" Visible="false"></asp:Label></td>
                    <td class="auto-stylee2">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("man") %>' CssClass="mbname"></asp:Label>&nbsp&nbsp|
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("mod") %>'></asp:Label>&nbsp&nbsp|
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("col") %>'></asp:Label>&nbsp&nbsp|
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("memtyp") %>'></asp:Label><br /><br />
                        <span style="padding-left:40px; font-size:30px; color:red;">₹</span>
                        <asp:Label ID="Label21" runat="server" Text='<%# Eval("pric") %>' CssClass="ff"></asp:Label>
                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Quantity &nbsp 
                        <asp:TextBox ID="st" runat="server" AutoPostBack="False" Text="1" Width="20"></asp:TextBox>                        
                        <asp:Label ID="Label22" runat="server"></asp:Label>                       
                     </td>
                    <td class="auto-styleee2">
                        <asp:Button ID="Button1" runat="server" Text="ADD TO CART" Height="50" Width="200" CssClass="btn_cart" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="BUY NOW" Height="50" Width="200" CssClass="btn_cart" />
                    </td>
                </tr>                
            </table>           
           
        </ItemTemplate>
    </asp:DataList>
    
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [motherboard] WHERE ([mbId] = @mbId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="mbId" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>
</asp:Content>

