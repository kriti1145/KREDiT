<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Thankyou.aspx.cs" Inherits="login_page_new.Thankyou" %>
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

        .btn-success {
            background-color: #5cb85c;
            box-shadow: 0 6px #1B371C;
        }

        .btn-success:hover {
            box-shadow: 0 4px #1B371C;
            top: 2px;
        }

        .btn-success:active {
            box-shadow: 0 0 #1B371C;
            top: 6px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div class="vh-100 d-flex justify-content-center align-items-center p-5 container-fluid" style="background:#D9C6A3;" >
            <div class="col-md-4">
                    <div class="mb-4 text-center">
                        <img src="images/tick-mark.png" class="" style=" width:150px; height:150px; "/>
                    </div>
                    <div class="text-center">
                        <h1 class="display-3">Thank You !</h1>
                        <p style="font-size:22px;">Your registration is completed</p>
                        <button class="btn  w-25 btn-success mt-2" ><a href="Home.aspx" style="text-decoration: none; color:#002800; font-weight:800;"  >HOME</a>
                        </button>
                    </div>
                </div>
                   <div class="border border-2 border-success" style="border-radius:3%;"></div>
            </div>
</asp:Content>
