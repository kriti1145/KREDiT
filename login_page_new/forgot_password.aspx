<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="forgot_password.aspx.cs" Inherits="login_page_new.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        * {
            font-family: Cambria, Cochin, Georgia, Times, Times New Roman, serif;
        }
         label {
            
            font-size: calc(15px + 0.390625vw);
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
    <div class="container-fluid vh-100 pt-5" style= " background-image: linear-gradient(35deg, hsl(0deg 0% 0%) 0%,hsl(14deg 100% 22%) 13%,hsl(28deg 100% 35%) 27%,hsl(34deg 100% 49%) 42%,hsl(38deg 100% 50%) 56%,hsl(42deg 100% 50%) 68%,hsl(46deg 100% 50%) 79%,hsl(43deg 100% 72%) 88%, hsl(42deg 100% 86%) 95%,hsl(0deg 0% 100%) 100%); ">
        <!--text-part starts-->
        <h1 class="text-center mb-1  mt-5 display-3 fw-bold">FORGET PASSWORD</h1>
        <hr style="background: #002800; margin: 15px auto; height: 3px !important;" class="w-25" />
        <p class="text-center text-muted">Don't worry we are with you</p>
        <!--main row starts-->
        <div class="row mt-2">
            <!--main col starts-->
            <div class="col-md-4 mx-auto">
                <!--card starts-->
                <div class="card rounded-7 mt-2 mb-5" style="background: hsla(0, 0%, 100%, 0.55); backdrop-filter: blur(30px);">
                    <div class="card-body p-4" style="box-shadow: 0px 2px 7px rgb(8, 1, 1);">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3 style="color: rgb(78, 39, 39); font-weight: 600; font-family: monospace; font-size: 30px;" class="mt-3">FORGET PASSWORD</h3>
                                </center>
                            </div>
                        </div>
                        <div class="row " style="height: 30px;">
                            <div class="col">
                                <center>
                                    <hr class="w-25 mb-3" />
                                </center>

                            </div>
                        </div>

                        <div class="col mt-3">
                            <div class="form-group">
                                <asp:TextBox class="form-control" ID="txtEmailID" runat="server" placeholder="Enter your registered Email-Id" TextMode="Email"></asp:TextBox>
                            </div>
                        </div>


                        <div class="row mt-3">
                            <div class="col">
                                <div class=" form-group text-center  ">
                                    <asp:Button class="btn btn-success text-light w-100" ID="btnEmailsend" runat="server" Text="SEND PASSWORD" type="button" Style="border-radius: 5px; border-width: 2px; font-family: monospace; font-weight: 900;" OnClick="btnEmailSend_Click" />
                                </div>
                            </div>
                        </div>
                         <div class="row mt-3">
                            <div class="col-md-6">
                                <div class=" form-group text-center  ">
                                    <asp:Button class="btn btn-primary text-light w-100" ID="btnLogin" runat="server" Text="SIGNIN" type="button" Style="border-radius: 5px; border-width: 2px; font-family: monospace; font-weight: 900;" OnClick="btnLogin_Click" />
                                </div>
                            </div>
                             <div class="col-md-6">
                                <div class=" form-group text-center  ">
                                    <asp:Button class="btn btn-danger text-light w-100" ID="btnReset" runat="server" Text="RESET PASSWORD" type="button" Style="border-radius: 5px; border-width: 2px; font-family: monospace; font-weight: 900;" OnClick="btnReset_Click" />
                                </div>
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
    </div>
</asp:Content>
