<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="signin_page.aspx.cs" Inherits="login_page_new.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        label {
           
            font-size: 22px;
        }
        * {
            font-family: Cambria, Cochin, Georgia, Times, Times New Roman, serif;
        }
        h1 {
            color: #002800;
        }
        i {
            font-size: 50px;
            margin-bottom: 15px;
            color: #002800;
        }
        h3 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--container-fluid starts-->
    <div class="container-fluid pt-5" style= " background-image: linear-gradient(35deg, hsl(0deg 0% 0%) 0%,hsl(14deg 100% 22%) 13%,hsl(28deg 100% 35%) 27%,hsl(34deg 100% 49%) 42%,hsl(38deg 100% 50%) 56%,hsl(42deg 100% 50%) 68%,hsl(46deg 100% 50%) 79%,hsl(43deg 100% 72%) 88%, hsl(42deg 100% 86%) 95%,hsl(0deg 0% 100%) 100%); ">

        <!--text-part starts-->
        <h1 class="text-center mb-1 mt-5 display-3 fw-bold">SIGN-IN</h1>
        <hr style="background: #002800;  margin: 15px auto; height: 3px !important;" class="w-25"/>
        <p class="text-center text-muted">Good to see you again</p>
        <!--main row starts-->
        <div class="row mt-2 d-flex">
            <!--main col starts-->
            <div class="col-md-6 mx-auto">
               <!--card starts-->
                <div class="card rounded-7 mt-2 mb-5" style="background: hsla(0, 0%, 100%, 0.55); backdrop-filter: blur(30px);">
                    <div class="card-body p-lg-5" style="box-shadow: 0px 2px 7px rgb(8, 1, 1);">
                        <div class="row mt-4 mb-1">
                            <div class="col">
                                <center style="height: 122px;">
                                    <img src="images/avatar.png" class="rounded-circle" style="width: 100px; height: 100px;" />
                                </center>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col">
                                <center>
                                    <h3 style="color: rgb(78, 39, 39); font-weight: 600; font-family: monospace; font-size: 30px; height: 29px;" class=" mb-1">SIGN-IN</h3>
                                </center>
                            </div>
                        </div>
                        <div class="row" style="height: 30px;">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="col">
                                    <label>User-ID</label>
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="txtUserId" runat="server" placeholder="Enter User-ID"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                        </div>

                        <div class="row mt-3">
                            <div class="col">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="txtPassword" runat="server" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col ">
                                <div class=" form-group text-center mt-4 mb-3 ">
                                    <asp:Button class="btn " ID="btnSignin" runat="server" Text="Login" type="button" Onclick="btnSignin_Click" Style="background-color: rgb(161 135 106); border-color: black; width: 150px; border-radius: 30px; font-family: monospace;" />
                                </div>
                            </div>
                        </div>
                        <div class="ms-3 mt-3 pb-3">
                            <a href="forgot_password.aspx" class="text-decoration-none text-primary ">Forgot password?</a>
                            <br />
                            <a href="signup_page.aspx" class="text-decoration-none text-primary">Already a member ? Sign-up </a>
                        </div>
                    </div>
                </div>
                <!--card ends-->
            </div>
            <!--col ends-->
        </div>
        <!--row ends-->
    </div>
    <!--container-fluid ends-->
</asp:Content>
