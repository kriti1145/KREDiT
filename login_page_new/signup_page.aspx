<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="signup_page.aspx.cs" Inherits="login_page_new.WebForm3" %>

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
    <div class="container-fluid pt-5 " style= " background-image: linear-gradient(35deg, hsl(0deg 0% 0%) 0%,hsl(14deg 100% 22%) 13%,hsl(28deg 100% 35%) 27%,hsl(34deg 100% 49%) 42%,hsl(38deg 100% 50%) 56%,hsl(42deg 100% 50%) 68%,hsl(46deg 100% 50%) 79%,hsl(43deg 100% 72%) 88%, hsl(42deg 100% 86%) 95%,hsl(0deg 0% 100%) 100%); ">

        <h1 class="text-center mb-1 mt-5 display-3 fw-bold">SIGN-UP</h1>
  <hr style="background: #002800; margin: 15px auto; height: 3px !important;" class="w-25" />

        <p class="text-center text-muted">Be the part of our family</p>
        <div class="row">
            <div class="col-sm-8 mx-auto">
                 <div class="card rounded-7 mt-2 mb-5" style="background: hsla(0, 0%, 100%, 0.55); backdrop-filter: blur(30px);">
                    <div class="card-body p-lg-5" style="box-shadow: 0px 2px 7px rgb(8, 1, 1);">
                        <div class="row mb-xs-1">
                            <div class="col">
                                <center>
                                    <h3 style="color: rgb(78, 39, 39); font-weight: 600; font-family: monospace; font-size: 34px; height: 29px;" class="mt-3 mb-1 ">JOIN US NOW!</h3>
                                </center>
                            </div>
                        </div>
                        <div class="row" style="height: 30px;">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row ">
                            <div class="col">
                                <label>User-ID&nbsp;&nbsp;</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtUserId"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid UserId" ForeColor="#CC0000" ControlToValidate="txtUserId" ValidationExpression="[a-zA-Z0-9]*$"></asp:RegularExpressionValidator>

                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtUserId" runat="server" placeholder="Create User-ID" onkeyup="Upper(this)"></asp:TextBox>

                                </div>
                            </div>
                        </div>

                        <div class="row mt-3">
                            <div class=" col-md-6 ">
                                <label>First Name&nbsp;&nbsp; </label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Invalid name" ForeColor="#CC0000" ValidationExpression="[a-zA-Z]*$"></asp:RegularExpressionValidator>

                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="txtFirstName" runat="server" placeholder="Enter Your FIrst-Name"></asp:TextBox>

                                </div>
                            </div>
                            <div class="col-md-6">
                                <label class="">
                                    Last Name&nbsp;&nbsp;  
                                </label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtLastName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid name" ControlToValidate="txtLastName" ForeColor="#CC0000" ValidationExpression="[a-zA-Z]*$"></asp:RegularExpressionValidator>

                                <div class="form-group ">
                                    <asp:TextBox class="form-control" ID="txtLastName" runat="server" placeholder="Enter Your Last-Name"></asp:TextBox>

                                </div>
                            </div>
                        </div>

                        <div class="row mt-3">
                            <div class="col-md-6 ">
                                <label>
                                    Date of Birth&nbsp;&nbsp;
                                </label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDOB" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtDOB" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label class="">
                                    Gender&nbsp;&nbsp;     
                                </label>
                                <div class="form-group ms-xs-3 justify-content-center">
                                    <asp:RadioButton ID="RBMale" runat="server" Text="Male" GroupName="Gender" />
                                    <asp:RadioButton ID="RBFemale" runat="server" Text="Female" GroupName="Gender" class="ms-lg-3 me-lg-3" />
                                    <asp:RadioButton ID="RBOthers" runat="server" Text="others" GroupName="Gender" />

                                    <br />

                                </div>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-6 ">
                                <label>Mobile No&nbsp;&nbsp; </label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtMobileNo" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Must be 10 digit" ControlToValidate="txtMobileNo" ForeColor="#CC0000" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>

                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="txtMobileNo" runat="server" placeholder="Enter Your Mobile Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6 ">
                                <label>
                                    Email-ID&nbsp;&nbsp;  
                                </label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtEMailId" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Invalid Email-Id" ControlToValidate="txtEMailId" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="txtEMailId" runat="server" placeholder="Enter Your Email-ID" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col">
                                <label>
                                    Address&nbsp;
                                </label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtAddress" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control " ID="txtAddress" runat="server" placeholder="Enter Your Full Address" TextMode="MultiLine"></asp:TextBox>

                                </div>
                            </div>
                        </div>

                        <div class="row mt-3">
                            <div class="col-md-4 ">
                                <label>State&nbsp;&nbsp; </label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ddlState" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                &nbsp;<div class="form-group">
                                    <asp:DropDownList ID="ddlState" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlState_SelectedIndexChanged" CssClass="w-75">
                                    </asp:DropDownList>
                                    <br />
                                </div>
                            </div>
                            <div class="col-md-4 ">
                                <label>District&nbsp;&nbsp; </label>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="ddlDistrict" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <div class="form-group">
                                    <asp:DropDownList ID="ddlDistrict" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged" CssClass="w-75">
                                    </asp:DropDownList>
                                    <br />
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Block&nbsp;&nbsp; </label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="ddlBlock" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                &nbsp;<div class="form-group">
                                    <asp:DropDownList ID="ddlBlock" runat="server" CssClass="w-75">
                                    </asp:DropDownList>
                                    <br />

                                </div>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-6">
                                <label>Password&nbsp;&nbsp;&nbsp;&nbsp; </label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtPassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                &nbsp;<div class="form-group">
                                    <asp:TextBox class="form-control" ID="txtPassword" runat="server" placeholder="Create Password" TextMode="Password"></asp:TextBox>
                                    <br />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>
                                    Confirm Password&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                </label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="txtConfirmPassword" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                                    <br />
                                </div>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col">
                                <asp:CheckBox ID="chkBox" runat="server" />
                                <label>I agree Terms & Conditions</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col ">
                                <div class=" form-group text-center my-1">
                                    <asp:Button class="btn" ID="Button1" runat="server" Text="SIGN-UP" type="button" OnClick="Button1_Click" Style="background-color: rgb(161 135 106); border-color: black; width: 150px; border-radius: 30px; font-family: monospace;" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
