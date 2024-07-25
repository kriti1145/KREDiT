<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="gallery.aspx.cs" Inherits="login_page_new.gallery" %>

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
    <div class="container-fluid mx-auto py-5" style="background-image: linear-gradient(35deg, hsl(0deg 0% 0%) 0%,hsl(14deg 100% 22%) 13%,hsl(28deg 100% 35%) 27%,hsl(34deg 100% 49%) 42%,hsl(38deg 100% 50%) 56%,hsl(42deg 100% 50%) 68%,hsl(46deg 100% 50%) 79%,hsl(43deg 100% 72%) 88%, hsl(42deg 100% 86%) 95%,hsl(0deg 0% 100%) 100%);">
       
        <h1 class="text-center mb-1 mt-5 display-3 fw-bold">GALLERY</h1>
        <hr style="background: #002800; margin: 15px auto; height: 3px !important;" class="w-25" />
        <p class="text-center text-muted">Have a look on these beautiful captures</p>

        <div class="row m-3">
            <div class="col-md-4 mt-3 col-lg-4">
                <img src="images/g1.jpg" class="img-fluid" alt="image" />
            </div>
            <div class="col-md-4 mt-3 col-lg-4">
                <img src="images/yoga-2232811_1280.jpg" class="img-fluid" alt="image" />
            </div>
            <div class="col-md-4 mt-3 col-lg-4">
                <img src="images/pexels-arthouse-studio-4558331.jpg" class="img-fluid" alt="image" />
            </div>
            <div class="col-md-4 mt-3 col-lg-6">
                <img src="images/luemen-rutkowski-mIHbipd5-Qw-unsplash.jpg" class="img-fluid" alt="image" />
            </div>
            <div class="col-md-4 mt-3 col-lg-6">
                <img src="images/sunset-3482930_1280.jpg" class="img-fluid" alt="image" />
            </div>
            <div class="col-md-4 mt-3 col-lg-3">
                <img src="images/pexels-jonathan-borba-3076509.jpg" class="img-fluid" alt="image" />
            </div>
            <div class="col-md-4 mt-3 col-lg-3">
                <img src="images/pexels-marcus-aurelius-6787218.jpg" class="img-fluid" alt="image" />
            </div>
            <div class="col-md-4 mt-3 col-lg-3">
                <img src="images/pexels-rdne-stock-project-8711100.jpg" class="img-fluid" alt="image" />
            </div>
            <div class="col-md-4 mt-3 col-lg-3">
                <img src="images/pexels-savanna-goldring-5184327.jpg" class="img-fluid" alt="image" />
            </div>

            <div class="col-md-4 mt-3 col-lg-6">
                <img src="images/pexels-oluremi-adebayo-3658399.jpg" class="img-fluid" alt="image" />
            </div>
            <div class="col-md-4 mt-3 col-lg-6">
                <img src="images/pexels-monstera-5384538.jpg" class="img-fluid" alt="image" />
            </div>
        </div>
        <!--row ends-->
    </div>
    <!--container ends-->
</asp:Content>
