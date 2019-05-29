<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminuserreg.aspx.cs" Inherits="register_user_adminuserreg" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    
    <title></title>

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/main.css" rel="stylesheet" media="all">

    <style>
         .com{
            width:100px;
            height:30px;
            font-size:smaller;
            background-color:blue;
            color:white;
            border-radius:20px;
            cursor:pointer;
        }
        .user{
            width:100px;
            height:30px;
            font-size:smaller;
            background-color:red;
            color:white;
            margin-bottom:20px;
            border-radius:20px;
            cursor:pointer;
        }
        .home{
            width:100px;
            height:30px;
            font-size:smaller;
            background-color:red;
            color:white;
            margin-bottom:20px;
            border-radius:20px;
            margin-left:40%;
            cursor:pointer;

        }
        .home:hover{
            width:100px;
            height:30px;
            font-size:smaller;
            border:1px solid red;
            background-color:white;
            margin-bottom:20px;
            border-radius:20px;
            margin-left:40%;
            color:red;
            cursor:pointer;

        }
        .dd{
            width:260px;
            height:50px;
            line-height: 50px;
            background: #fafafa;
            border:none;
            border-radius:5px;
            outline:none;
            border:1px solid #414141;

        }
        .subt{
            width:250px;
            height:50px;
            background-color:red;
            color:white;
            border-radius:5px;
            cursor:pointer;
        }
         .day{
            width:250px;
            height:50px;
            border-radius:5px;
            border:1px solid #414141;
        }
    </style>
</head>

<body>
    
    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title">User Registration</h2>
                    <form method="POST" runat="server">
                        <asp:Button ID="Button1" runat="server" Text="COMPANY" OnClick="btn_lo" CssClass="com" CausesValidation="False" />
                         <asp:Button ID="Button2" runat="server" Text="USER" CssClass="user" CausesValidation="False" />
                        <asp:Button ID="Button4" runat="server" Text="ADMIN HOME" OnClick="btn_home" CssClass="home" CausesValidation="False" />
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Username</label>
                                    
                                    <asp:TextBox ID="TextBoxun" runat="server" CssClass="input--style-4" name="first_name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="TextBoxun" runat="server" ErrorMessage="Field Required"></asp:RequiredFieldValidator>
                                   
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Name</label>
                                    
                                    <asp:TextBox ID="TextBoxname" CssClass="input--style-4" runat="server" name="last_name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="TextBoxname" runat="server" ErrorMessage="Field Required"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Password</label>
                                    
                                    <asp:TextBox ID="TextBox3pass" CssClass="input--style-4" type="password" runat="server" name="first_name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="TextBox3pass" runat="server" ErrorMessage="Field Required"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Confirm Password</label>
                                    
                                    <asp:TextBox ID="TextBox4cp" CssClass="input--style-4" type="password" runat="server" name="last_name"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator1" ControlToValidate="TextBox3pass" ForeColor="red" ControlToCompare="TextBox4cp" runat="server" ErrorMessage="Password not matching"></asp:CompareValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Birthday</label>
                                    <div class="input-group-icon">
                                        
                                        <asp:TextBox ID="TextBox5bday" type="date" CssClass="day" runat="server" name="birthday"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="TextBox5bday" runat="server" ErrorMessage="Field Required"></asp:RequiredFieldValidator>
                                        
                                    </div>
                                </div>
                            </div>
                             <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Gender</label>
                                    
                                    <asp:DropDownList ID="DropDownList1" CssClass="dd" runat="server">
                                        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Email</label>
                                    
                                    <asp:TextBox ID="TextBoxem" type="email" CssClass="input--style-4" runat="server" name=""></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="Red" ControlToValidate="TextBoxem" runat="server" ErrorMessage="Field Required"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Phone Number</label>
                                    
                                    <asp:TextBox ID="TextBoxph" type="text" CssClass="input--style-4" name="phone" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="Red" ControlToValidate="TextBoxph" runat="server" ErrorMessage="Field Required"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                           <label class="label">Security Question</label>
                                    
                                    <asp:DropDownList ID="DropDownList2" CssClass="dd" runat="server">
                                        <asp:ListItem>Choose your question</asp:ListItem>
                                        <asp:ListItem>Your fav color?</asp:ListItem>
                                        <asp:ListItem>Your childhood name?</asp:ListItem>
                                    </asp:DropDownList>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <label class="label">Your Answer</label>
                                    
                                    <asp:TextBox ID="TextBoxans" type="text" CssClass="input--style-4" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ForeColor="Red" ControlToValidate="TextBoxans" runat="server" ErrorMessage="Field Required"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        <div class="p-t-15">
                            
                            <asp:Button ID="Button3" runat="server" Text="Button" CssClass="subt" onclick="btn_sub"/>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
        


    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>

</body>

</html>