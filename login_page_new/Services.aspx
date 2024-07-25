<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeFile="Services.aspx.cs" Inherits="login_page_new.Services" %>

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
            font-size: calc(15px + 0.390625vw);
        }

        .card {
            overflow: hidden;
            display: flex;
            flex-direction: column;
            box-shadow: rgba(0, 0, 0, 0.4) 0px 2px 10px 0px, rgba(0, 0, 0, 0.5) 0px 2px 25px 0px;
            background: hsla(0, 0%, 100%, 0.55); 
            backdrop-filter: blur(30px);  
            border: 0.5px solid #60c5a8; 

        }
        img{
            height:50%;
            width:50%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid p-5 " style= " background-image: linear-gradient(35deg, hsl(0deg 0% 0%) 0%,hsl(14deg 100% 22%) 13%,hsl(28deg 100% 35%) 27%,hsl(34deg 100% 49%) 42%,hsl(38deg 100% 50%) 56%,hsl(42deg 100% 50%) 68%,hsl(46deg 100% 50%) 79%,hsl(43deg 100% 72%) 88%, hsl(42deg 100% 86%) 95%,hsl(0deg 0% 100%) 100%);">

        <h1 class="text-center mb-4 mt-5 display-3 fw-bold">OUR SERVICES</h1>
          <hr style="background: #002800; margin: 15px auto; height: 3px !important;" class="w-25" />
        <p class="text-center text-muted">We provide best services to our clients</p>
        <div class="row mt-5 p-4">
            <div class="col-12 col-sm-6 col-md-4 m-auto">
                <div class="card  text-center p-3 mb-3 d-flex">
                    <div class="card-body mb-3">
                        <i></i>
                        <h3>Meditation</h3>
                            <img src="images/meditation.png" class="mt-2 mb-2"/>
                        <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum animi architecto praesentium, neque odio pariatur deleniti, officia id hic aliquid nihil qui fugiat nostrum corrupti quas minus aliquam omnis. Blanditiis.
                        </p>
                    </div>
                    <!--card-body ends-->
                </div>
                <!--card ends-->
            </div>
            <!--column ends-->
            <div class="col-12 col-sm-6 col-md-4 m-auto ">
                <div class="card  text-center p-3 mb-3 d-flex">
                    <div class="card-body mb-3">
                        <i></i>
                        <h3>Therapy Sessions</h3>
                        <img src="images/talking.png" class="mt-2 mb-2"/>
                        <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum animi architecto praesentium, neque odio pariatur deleniti, officia id hic aliquid nihil qui fugiat nostrum corrupti quas minus aliquam omnis. Blanditiis.
                        </p>
                    </div>
                    <!--card-body ends-->
                </div>
                <!--card ends-->
            </div>
            <!--column ends-->
            <div class="col-12 col-sm-6 col-md-4 m-auto">
                <div class="card text-center p-3 mb-3 d-flex ">
                    <div class="card-body mb-3">
                        <i></i>
                        <h3>Yoga</h3>
                        <img src="images/yoga-pose%20(1).png" class="mt-2 mb-2" />
                       
                        <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum animi architecto praesentium, neque odio pariatur deleniti, officia id hic aliquid nihil qui fugiat nostrum corrupti quas minus aliquam omnis. Blanditiis.
                        </p>
                    </div>
                    <!--card-body ends-->
                </div>
                <!--card ends-->
            </div>
            <!--column ends-->
        </div>
        <!--row ends-->
    </div>
    <!--container ends-->
</asp:Content>
