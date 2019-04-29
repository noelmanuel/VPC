<%@ Page Title="" Language="C#" MasterPageFile="~/expertsystem/expert.master" AutoEventWireup="true" CodeFile="userexpertdes.aspx.cs" Inherits="expertsystem_userexpertdes" %>

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
            width:350px;
            height:300px;
            position:absolute;
       }
            
       .oow
       {
            width:100px;
            margin:10px;
       }
       .oow:hover
        {
            width:350px;
            height:300px;
            position:absolute;
        }
        .ooo
        {
            margin:40px;
            height:400px;
            width:500px;
            
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
        <asp:Label ID="lbldate" Visible="false" runat="server"></asp:Label>
         <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" >
        <ItemTemplate>
            <table class="cata_comp">
                <tr>

                     <td class="auto-style5">
                        <asp:Image ID="Image4" runat="server" ImageUrl='<%# Eval("images3") %>'  CssClass="oo"/>
                     </td>

                    <td class="auto-style5">
                        <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("images2") %>'  CssClass="oow"/>
                     </td>

                    <td class="auto-style1">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("images1") %>'  CssClass="ooo"/>
                    </td>

                    <td class="auto-style2">
                        <div class="titl"><h3 style=" font-size:18px; padding-top:10px; color:#e7b93c;">SYSTEM SPECIFICATIONS</h3></div><br />
                        <span class="sp">Motherboard</span><br />
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("motherboard") %>'></asp:Label><br /><br />
                        <span class="sp">RAM</span><br />
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("ram") %>'></asp:Label><br />
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("ram1") %>'></asp:Label><br />
                        <asp:Label ID="Label17" runat="server" Text='<%# Eval("ram2") %>'></asp:Label><br />
                        <asp:Label ID="Label18" runat="server" Text='<%# Eval("ram3") %>'></asp:Label><br /><br />
                        
                        <span class="sp">Processor</span><br />
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("processor") %>'></asp:Label><br /><br />
                        <span class="sp">GPU</span><br />
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("gpu") %>'></asp:Label><br />
                        <asp:Label ID="Label19" runat="server" Text='<%# Eval("gpu1") %>'></asp:Label><br /><br />

                        <span class="sp">CD Drive</span><br />
                         <asp:Label ID="Label9" runat="server" Text='<%# Eval("cddrive") %>'></asp:Label><br /><br />
                        <span class="sp">SMPS</span><br />
                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("smps") %>'></asp:Label><br /><br />
                        <span class="sp">Hard disk</span><br />
                        <asp:Label ID="Label13" runat="server" Text='<%# Eval("hdd") %>'></asp:Label><br /><br />
                        <span class="sp">CPU Cooler</span><br />
                        <asp:Label ID="Label14" runat="server" Text='<%# Eval("cool") %>'></asp:Label><br /><br />
                        <span class="sp">Case</span><br />
                        <asp:Label ID="Label15" runat="server" Text='<%# Eval("casee") %>'></asp:Label><br /><br />
                        
                     </td> 
                    <td class="auto-style2">
                        <span class="sp">Casefan</span><br />
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("casefan") %>'></asp:Label><br /><br />
                        <span class="sp">Soundcard</span><br />
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("soundcard") %>'></asp:Label><br /><br />
                        <span class="sp">Networkcard</span><br />
                        <asp:Label ID="Label16" runat="server" Text='<%# Eval("net") %>'></asp:Label><br /><br />
                        <span class="sp">SSD</span><br />
                        <asp:Label ID="Label20" runat="server" Text='<%# Eval("ssd") %>'></asp:Label><br /><br />
                        <span class="sp">Monitor</span><br />
                        <asp:Label ID="Label22" runat="server" Text='<%# Eval("monitor") %>'></asp:Label><br /><br />
                        <span class="sp">Keyboard</span><br />
                        <asp:Label ID="Label23" runat="server" Text='<%# Eval("keyboard") %>'></asp:Label><br /><br />
                        <span class="sp">Mouse</span><br />
                        <asp:Label ID="Label24" runat="server" Text='<%# Eval("mouse") %>'></asp:Label><br /><br />
                        <span class="sp">Speaker</span><br />
                        <asp:Label ID="Label25" runat="server" Text='<%# Eval("speaker") %>'></asp:Label><br /><br />
                        <span class="sp">UPS</span><br />
                        <asp:Label ID="Label26" runat="server" Text='<%# Eval("ups") %>'></asp:Label><br /><br />
                        
                        
                        

                        
                         
                    </td>

                </tr>

                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="motherb" runat="server" Text="Case" Visible="false"></asp:Label></td>
                    <td class="auto-stylee2">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("budget") %>' CssClass="mbname"></asp:Label>&nbsp&nbsp|
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("type") %>'></asp:Label>&nbsp&nbsp|
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("pri1") %>'></asp:Label>&nbsp&nbsp<br /> <br />
                        
                        <span style="padding-left:40px; font-size:30px; color:red;">₹</span>
                        <asp:Label ID="Label21" runat="server" Text='<%# Eval("totalprice") %>' CssClass="ff"></asp:Label>
                                           
                     </td>
                    <td class="auto-styleee2">
                        <asp:Button ID="Button1" runat="server" Text="ADD TO CART" Height="50" Width="200" CssClass="btn_cart" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="HOME" Height="50" Width="200" CssClass="btn_cart" OnClick="Button2_Click" /><br /><br />
                    </td>
                </tr>                
            </table>           
           
        </ItemTemplate>
    </asp:DataList>
    
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [expert] WHERE ([Id] = @Id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>
        </div>
</asp:Content>





