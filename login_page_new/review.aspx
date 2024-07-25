<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="review.aspx.cs" Inherits="login_page_new.review" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        * {
            font-family: Cambria, Cochin, Georgia, Times, Times New Roman, serif;
        }

        h1 {
            color: #002800;
        }

        label {
            
            font-size: calc(15px + 0.390625vw);
        }

        i {
            font-size: 50px;
            margin-bottom: 15px;
            color: #002800;
        }

        h3 {
            font-weight: bold;
        }
        p{
            color: black;
        }
        img{
            border: 3px solid #BF8F73;
            border-radius: 50%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Carousel wrapper -->
    <div class="container-fluid mx-auto py-5" style="background-image: linear-gradient(35deg, hsl(0deg 0% 0%) 0%,hsl(14deg 100% 22%) 13%,hsl(28deg 100% 35%) 27%,hsl(34deg 100% 49%) 42%,hsl(38deg 100% 50%) 56%,hsl(42deg 100% 50%) 68%,hsl(46deg 100% 50%) 79%,hsl(43deg 100% 72%) 88%, hsl(42deg 100% 86%) 95%,hsl(0deg 0% 100%) 100%);">

        <h1 class="text-center mb-1 mt-5 display-3 fw-bold">TESTENOMIALS</h1>
        <hr style="background: #002800; margin: 15px auto; height: 3px !important;" class="w-25" />
        <p class="text-center text-muted">Views of our customers</p>

        <div class="row ms-5 me-5 mt-5">
            <div class="col-xs-8 mx-auto">

                <div class="card rounded-7 mt-2 mb-5 " style="background: hsla(0, 0%, 100%, 0.55); backdrop-filter: blur(30px);   border: 0.5px solid #60c5a8; ">
                    <div class="card-body p-lg-5" style="box-shadow: 0px 2px 7px rgb(8, 1, 1);">

                        <div id="carouselExampleControls" class="carousel slide text-center carousel-dark p-5" data-bs-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="images/r1.jpg" class="rounded-circle shadow-1-strong mb-4" alt="avatar"
                                        style="width: 150px; "/>
                                    <div class="row d-flex justify-content-center">
                                        <div class="col-lg-8">
                                            <h3 class="mb-3"><strong> Madhurima Shukla</strong></h3>
                                            <p><strong> Photographer</strong></p>
                                            <p class="text-muted text-dark">
                                                <i class="fas fa-quote-left pe-2 text-dark"></i></p>
                                               <p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus et deleniti
            nesciunt sint eligendi reprehenderit reiciendis, quibusdam illo, beatae quia
            fugit consequatur laudantium velit magnam error. Consectetur distinctio fugit
            doloremque.
                                            </p>
                                        </div>
                                    </div>
                                    <ul class="list-unstyled d-flex justify-content-center text-warning mb-0">
                                        <li><i class="fas fa-star fa-sm"></i></li>
                                        <li><i class="fas fa-star fa-sm"></i></li>
                                        <li><i class="fas fa-star fa-sm"></i></li>
                                        <li><i class="fas fa-star fa-sm"></i></li>
                                        <li><i class="far fa-star fa-sm"></i></li>
                                    </ul>
                                </div>
                                <div class="carousel-item">
                                    <img src="images/r2.jpg" class="rounded-circle shadow-1-strong mb-4" alt="avatar"
                                        style="width: 150px;"/>
                                    <div class="row d-flex justify-content-center">
                                        <div class="col-lg-8">
                                            <h3 class="mb-3"><strong>Rishabh Pallav</strong></h3>
                                            <p><strong>Chartered Accountant</strong> </p>
                                            <p class="text-muted text-dark">
                                                <i class="fas fa-quote-left pe-2 text-dark"></i></p>
                                             <p>   Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus et deleniti
            nesciunt sint eligendi reprehenderit reiciendis, quibusdam illo, beatae quia
            fugit consequatur laudantium velit magnam error. Consectetur distinctio fugit
            doloremque.
                                            </p>
                                        </div>
                                    </div>
                                    <ul class="list-unstyled d-flex justify-content-center text-warning mb-0">
                                        <li><i class="fas fa-star fa-sm"></i></li>
                                        <li><i class="fas fa-star fa-sm"></i></li>
                                        <li><i class="fas fa-star fa-sm"></i></li>
                                        <li><i class="fas fa-star fa-sm"></i></li>
                                        <li><i class="far fa-star fa-sm"></i></li>
                                    </ul>
                                </div>
                                <div class="carousel-item">
                                    <img src="images/r3.jpg" class="rounded-circle shadow-1-strong mb-4" alt="avatar" style="width: 150px;" />
                                   
                                    <div class="row d-flex justify-content-center">
                                        <div class="col-lg-8">
                                            <h3 class="mb-3"><strong>Dr. Divya Jaitly </strong></h3>
                                            <p><strong> Business Women</strong></p>
                                            <p class="text-muted text-dark">
                                                <i class="fas fa-quote-left pe-2 text-dark"></i></p>
                                             <p>   Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus et deleniti
            nesciunt sint eligendi reprehenderit reiciendis, quibusdam illo, beatae quia
            fugit consequatur laudantium velit magnam error. Consectetur distinctio fugit
            doloremque.
                                            </p>
                                        </div>
                                    </div>
                                    <ul class="list-unstyled d-flex justify-content-center text-warning mb-0">
                                        <li><i class="fas fa-star fa-sm"></i></li>
                                        <li><i class="fas fa-star fa-sm"></i></li>
                                        <li><i class="fas fa-star fa-sm"></i></li>
                                        <li><i class="fas fa-star fa-sm"></i></li>
                                        <li><i class="far fa-star fa-sm"></i></li>
                                    </ul>
                                </div>
                            
                                 <div class="carousel-item">
                                     <img src="images/r4.jpg" class="rounded-circle shadow-1-strong mb-4" alt="avatar" style="width: 150px;" />
                                    
                                    <div class="row d-flex justify-content-center">
                                        <div class="col-lg-8">
                                            <h3 class="mb-3"><strong>Heena Raval</strong></h3>
                                            <p><strong>Software Developer</strong> </p>
                                            <p class="text-muted text-dark">
                                                <i class="fas fa-quote-left pe-2 text-dark"></i></p>
                                           <p>     Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus et deleniti
            nesciunt sint eligendi reprehenderit reiciendis, quibusdam illo, beatae quia
            fugit consequatur laudantium velit magnam error. Consectetur distinctio fugit
            doloremque.
                                            </p>
                                        </div>
                                    </div>
                                    <ul class="list-unstyled d-flex justify-content-center text-warning mb-0">
                                        <li><i class="fas fa-star fa-sm"></i></li>
                                        <li><i class="fas fa-star fa-sm"></i></li>
                                        <li><i class="fas fa-star fa-sm"></i></li>
                                        <li><i class="fas fa-star fa-sm"></i></li>
                                        <li><i class="far fa-star fa-sm"></i></li>
                                    </ul>
                                </div>
                            
                             <div class="carousel-item">
                                 <img src="images/r5.jpg" class="rounded-circle shadow-1-strong mb-4" alt="avatar" style="width: 150px;" />
                                    <div class="row d-flex justify-content-center">
                                        <div class="col-lg-8">
                                            <h3 class="mb-3"><strong>Shakuntala Jurgan</strong></h3>
                                            <p><strong> Teacher</strong></p>
                                            <p class="text-muted text-dark">
                                                <i class="fas fa-quote-left pe-2 text-dark"></i></p>
                                            <p>    Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus et deleniti
            nesciunt sint eligendi reprehenderit reiciendis, quibusdam illo, beatae quia
            fugit consequatur laudantium velit magnam error. Consectetur distinctio fugit
            doloremque.
                                            </p>
                                        </div>
                                    </div>
                                    <ul class="list-unstyled d-flex justify-content-center text-warning mb-0">
                                        <li><i class="fas fa-star fa-sm"></i></li>
                                        <li><i class="fas fa-star fa-sm"></i></li>
                                        <li><i class="fas fa-star fa-sm"></i></li>
                                        <li><i class="fas fa-star fa-sm"></i></li>
                                        <li><i class="far fa-star fa-sm"></i></li>
                                    </ul>
                                </div>
                            </div>
</div></div>
                            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls"
                                data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls"
                                data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                    </div>
                </div>
            </div>
        </div>
    <!-- Carousel wrapper -->
</asp:Content>
