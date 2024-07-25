<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Reset_page.aspx.cs" Inherits="login_page_new.Rename_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         label {
            
            font-size: calc(15px + 0.390625vw);
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
    <div class="container-fluid py-5 vh-100" style= " background-image: linear-gradient(35deg, hsl(0deg 0% 0%) 0%,hsl(14deg 100% 22%) 13%,hsl(28deg 100% 35%) 27%,hsl(34deg 100% 49%) 42%,hsl(38deg 100% 50%) 56%,hsl(42deg 100% 50%) 68%,hsl(46deg 100% 50%) 79%,hsl(43deg 100% 72%) 88%, hsl(42deg 100% 86%) 95%,hsl(0deg 0% 100%) 100%); ">

        <!--text-part starts-->
        <h1 class="text-center mb-1 mt-5 display-3 fw-bold">RESET PASSWORD</h1>
        <hr style="background: #002800; margin: 15px auto; height: 3px !important;" class="w-25" />
        <p class="text-center text-muted">Don't worry we are with you</p>
        <!--main row starts-->
        <div class="row mt-2">
            <!--main col starts-->
            <div class="col-md-6 mx-auto ">
                <!--card starts-->
                <div class="card rounded-7 mt-2 mb-5" style="background: hsla(0, 0%, 100%, 0.55); backdrop-filter: blur(30px);">
                    <div class="card-body p-4" style="box-shadow: 0px 2px 7px rgb(8, 1, 1);">
                         <div class="row mt-3">
                            <div class="col-md-5">
                                <div class=" form-group text-center  ">
                                    <asp:Label runat="server" Text="" ><strong>USER ID <%--&nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;--%></strong>  </asp:Label>
                                </div>
                            </div>
                            <div class="col-md-7">
                                <div class="form-group">
                                    <asp:TextBox class="form-control h-25" ID="txtUserId" runat="server" placeholder="Registered User Id" ></asp:TextBox>
                                </div>
                            </div>
                        </div>
                          <div class="row mt-2">
                            <div class="col-md-5">
                                <div class=" form-group text-center  ">
                                    <asp:Label runat="server" Text="" ><strong>CURRENT PASSWORD <%--&nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;--%></strong>  </asp:Label>
                                </div>
                            </div>
                            <div class="col-md-7">
                                <div class="form-group">
                                    <asp:TextBox class="form-control h-25" ID="txtCurrentPass" runat="server" placeholder="Current Pasword" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-md-5">
                                <div class=" form-group text-center  ">
                                    <asp:Label runat="server" Text="" ><strong>NEW PASSWORD <%--&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;--%> </strong>  </asp:Label>
                                </div>
                            </div>
                            <div class="col-md-7">
                                <div class="form-group">
                                    <asp:TextBox class="form-control h-25" ID="txtNewpass" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-md-5">
                                <div class=" form-group text-center  ">
                                    <asp:Label runat="server" Text=""><strong>CONFIRM PASSWORD</strong>  </asp:Label>
                                </div>
                            </div>
                            <div class="col-md-7">
                                <div class="form-group">
                                    <asp:TextBox class="form-control h-25" ID="txtConfirmPass" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col ">
                                <div class=" form-group text-center mb-3 ">
                                    <div class="btn-toolbar mt-sm-3">
                                        <div class="btn-group mx-auto">
                                            <asp:Button class="btn " ID="btnReset" runat="server" Text="UPDATE" type="button" Style="background-color: forestgreen; border-color: black; width: 150px; border-radius: 10px; font-family: monospace; color: white;" OnClick="btnReset_Click" />
                                        </div>
                                         <div class="btn-group mx-auto">
                                            <asp:Button class="btn btn-primary " ID="btncancel" runat="server" Text="CANCEL" type="button" Style=" border-color: black; width: 150px; border-radius: 10px; font-family: monospace; color: white;" OnClick="btncancel_Click" />
                                        </div>
                                    </div>
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

