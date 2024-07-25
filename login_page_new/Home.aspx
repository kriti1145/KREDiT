<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="login_page_new.WebForm7" %>
<%@ MasterType VirtualPath="~/Site2.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        :root {
            --maincolor: #6c9894;
            --secondcolor: #d0efe1;
        }

        h3 {
            font-family: Courier New, Courier, monospace;
            font-size: calc(15px + 0.390625vw);
        }

        h1 {
            
            line-height: 1.7;
        }

        a {
            text-decoration: none;
        }

        .banner-area {
            background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(../images/new.jpg);
            background-position: center;
            background-attachment: fixed;
            background-size: cover;
            position: relative;
            z-index: 2;
        }

            .banner-area::after {
                content: "";
                top: 0;
                left: 0;
                height: 100%;
                width: 100%;
                position: absolute;
                z-index: -1;
            }

        * {
            font-family: Cambria, Cochin, Georgia, Times, Times New Roman, serif;
        }

        button {
            margin: 20px;
        }

        .custom-btn {
            width: 160px;
            height: 40px;
            color: #fff;
            border-radius: 20px;
            padding: 10px 25px;
            font-family: 'Lato', sans-serif;
            font-weight: 500;
            background: transparent;
            cursor: pointer;
            transition: all 0.3s ease;
            position: relative;
            display: inline-block;
            outline: none;
        }

        .btn-7 {
            background: linear-gradient(0deg, rgba(255,151,0,1) 0%, rgba(251,75,2,1) 100%);
            line-height: 42px;
            padding: 0;
            border: none;
        }

            .btn-7 span {
                position: relative;
                display: block;
                width: 100%;
                height: 100%;
            }

            .btn-7:before,
            .btn-7:after {
                position: absolute;
                content: "";
                right: 0;
                bottom: 0;
                background: rgba(251,75,2,1);
                box-shadow: -7px -7px 20px 0px rgba(255,255,255,.2), -4px -4px 5px 0px rgba(255,255,255,.2), 7px 7px 20px 0px rgba(0,0,0,.2), 4px 4px 5px 0px rgba(0,0,0,.3);
                transition: all 0.3s ease;
            }

            .btn-7:before {
                height: 0%;
                width: 2px;
            }

            .btn-7:after {
                width: 0%;
                height: 2px;
            }

            .btn-7:hover {
                color: rgba(251,75,2,1);
                background: transparent;
            }

                .btn-7:hover:before {
                    height: 100%;
                }

                .btn-7:hover:after {
                    width: 100%;
                }

            .btn-7 span:before,
            .btn-7 span:after {
                position: absolute;
                content: "";
                left: 0;
                top: 0;
                background: rgba(251,75,2,1);
                box-shadow: -7px -7px 20px 0px rgba(255,255,255,.9), -4px -4px 5px 0px rgba(255,255,255,.9), 7px 7px 20px 0px rgba(0,0,0,.2), 4px 4px 5px 0px rgba(0,0,0,.3);
                transition: all 0.3s ease;
            }

            .btn-7 span:before {
                width: 2px;
                height: 0%;
            }

            .btn-7 span:after {
                height: 2px;
                width: 0%;
            }

            .btn-7 span:hover:before {
                height: 100%;
            }

            .btn-7 span:hover:after {
                width: 100%;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="banner-area vh-100 d-flex align-items-center">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 mx-auto text-center ">
                    <h1 class="display-4 fw-bold text-light">Hey! <span style="color: #FFB703;">Welcome </span>to Demo Project</h1>
                    <p class="text-light">This project is made up with the concept of HTML, CSS, javaScript, BootStrap, C#, .NET, SQl Server,etc. </p>
                    <button class="custom-btn btn-7">
                        <span><a href="Services.aspx" style="text-decoration:none;" class="text-light" >GET STARTED </a> </span></button>
                    <%--<a href="signin_page.aspx" class="btn btn-outline-light text-light w-25 mt-2" style="border-radius: 30px; border-width: 3px; font-family: monospace; font-size: 20px;">GET STARTED</a>--%>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
