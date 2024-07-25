<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Contact_US.aspx.cs" Inherits="login_page_new.Contact_US" EnableEventValidation="false"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
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
         label {
            
            font-size: calc(15px + 0.390625vw);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid mx-auto py-5" style= " background-image: linear-gradient(35deg, hsl(0deg 0% 0%) 0%,hsl(14deg 100% 22%) 13%,hsl(28deg 100% 35%) 27%,hsl(34deg 100% 49%) 42%,hsl(38deg 100% 50%) 56%,hsl(42deg 100% 50%) 68%,hsl(46deg 100% 50%) 79%,hsl(43deg 100% 72%) 88%, hsl(42deg 100% 86%) 95%,hsl(0deg 0% 100%) 100%);">

        <h1 class="text-center display-3 mt-5 fw-bold">CONTACT US</h1>
          <hr style="background: #002800; margin: 15px auto; height: 3px !important;" class="w-25" />
        <p class="text-center text-muted">We are 24x7 available at your service </p>
        <div class="row">
            <div class="col-md-6 mx-auto my-5">
                <!--card starts-->
                <div class="card rounded-7 " style="background: hsla(0, 0%, 100%, 0.55); backdrop-filter: blur(30px);">
                    <div class="card-body " style="box-shadow: 0px 2px 7px rgb(8, 1, 1);" onsubmit="sendEmail(); reset(); return false;">
                      <form>
                        <div class="row mt-3">
                            <div class="col">

                                <div class="form-group">
                                    <asp:TextBox class="form-control p-2" ID="txtName" runat="server" placeholder="Enter Name"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtName" ErrorMessage="Invalid name" ForeColor="#CC0000" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>

                                </div>
                            </div>
                        </div>
                        <div class="row mt-1">
                            <div class="col">
                                <div class="form-group">
                                    <asp:TextBox class="form-control p-2" ID="txtEmail" runat="server" placeholder="Enter Email" TextMode="Email"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtEmail" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Invalid Email-Id" ControlToValidate="txtEmail" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                                </div>
                            </div>
                        </div>
                        <div class="row mt-1">
                            <div class="col">
                                <div class="form-group">
                                    <asp:TextBox class="form-control p-2" ID="txtMessage" runat="server"  placeholder="Enter Message" TextMode="MultiLine"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMessage" ErrorMessage="Invalid format" ForeColor="#CC0000" ValidationExpression="[a-zA-Z 0-9.,-]*$"></asp:RegularExpressionValidator>

                                </div>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col ">
                                <div class=" form-group text-center mt-2 mb-3 ">
                                    <asp:Button ID="btnSubmit" runat="server" Text="SEND" CssClass="submit-btn" Style="background-color: rgb(161 135 106); border-color: black; width: 150px; height:40px; border-radius: 30px; font-family: monospace;" onclick="btnMesageSubmit_Click"/>
                                </div>
                            </div>
                        </div>
                     </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- setup for sending email through js-->
    <!-- imported from smtpjs (cmd)-->
    <script src="https://smtpjs.com/v3/smtp.js"></script>
    <script>
        function sendEmail() {
            let name = document.getElementById("name").value;
            let email = document.getElementById("email").value;
            let phone = document.getElementById("phone").value;
            let message = document.getElementById("message").value;
            let body = "Name: " + name + "<br/>Email: " + email + "<br/>Phone: " + phone + "<br/>Message: " + message;
            Email.send({
                //SecureToken:"7e357908-6b00-442a-a0ab-71be7aa9c151",
                Host: "smtp.elasticemail.com",
                Username: "krimusa7524@gmail.com",
                Password: "EE7A5ED07EE457959A7791A980D37FEE9A8D",
                To: 'muskansingh20012003@gmail.com',
                From: "krimusa7524@gmail.com",
                Subject: "New contact form enquiry",
                Body: body
            }).then(
                message => alert("Message sent successfully")
            );
        }//email function ends
    </script>
    <!-- setup for sending email through js-->
    <!-- imported from smtpjs (cmd)-->
    <script src="https://smtpjs.com/v3/smtp.js"></script>
    <script>
        function sendEmail() {
            let name = document.getElementById("txtName").value;
            let email = document.getElementById("txtEmail").value;
            let phone = document.getElementById("txtMobile").value;
            let message = document.getElementById("txtessage").value;
            let body = "Name: " + name + "<br/>Email: " + email + "<br/>Phone: " + phone + "<br/>Message: " + message;
            Email.send({
                //SecureToken:"7e357908-6b00-442a-a0ab-71be7aa9c151",
                Host: "smtp.elasticemail.com",
                Username: "krimusa7524@gmail.com",
                Password: "EE7A5ED07EE457959A7791A980D37FEE9A8D",
                To: 'muskansingh20012003@gmail.com',
                From: "krimusa7524@gmail.com",
                Subject: "New contact form enquiry",
                Body: body
            }).then(
                message => alert("Message sent successfully")
            );
        }//email function ends
    </script>
</asp:Content>
