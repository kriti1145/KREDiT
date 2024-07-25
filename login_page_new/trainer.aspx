<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="trainer.aspx.cs" Inherits="login_page_new.trainer" %>

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

        .our-team {
            
            background: #BF8F73; 
            backdrop-filter: blur(30px);
            border-radius: 1rem;
            text-align: center;
            border: 0.5px solid #60c5a8;
            box-shadow: rgba(0, 0, 0, 0.4) 0px 2px 10px 0px, rgba(0, 0, 0, 0.5) 0px 2px 25px 0px;
        }

        .our-team .pic {
                display: inline-block;
                width: 50%;
                height: 500%;
                background:  #BF8F73;
                padding: 0.75rem;
                transition: all 0.5s ease 0s;
        }

        .our-team:hover .pic {
                background: linear-gradient(35deg, hsl(0deg 0% 0%) 0%,hsl(14deg 100% 22%) 13%,hsl(28deg 100% 35%) 27%,hsl(34deg 100% 49%) 42%,hsl(38deg 100% 50%) 56%,hsl(42deg 100% 50%) 68%,hsl(46deg 100% 50%) 79%,hsl(43deg 100% 72%) 88%, hsl(42deg 100% 86%) 95%,hsl(0deg 0% 100%) 100%); 
                border-radius: 50%;
        }

        .pic img {
            width: 100%;
            height: auto;
            border-radius: 50%;
        }

        .our-team .title {
            display: block;
            font-size: 1.5rem;
            font-weight: 600;
            color: #260101;
          
        }
        .our-team .post {
            display: block;
            font-size: 1rem;
            color: #260101;
           
        }
        .our-team .social {
            list-style: none;
            display:block;
        }
        .our-team .social li {
               display: inline-block;
                
        }
        .our-team .social li a {
                    display: block;
                    width: 2rem;
                    height: 2rem;
                    line-height: 2rem;
                    border-radius: 50%;
                    font-size: 1rem;
                    color: #BF8F73;
                    border: 1px solid #BF8F73;
                    transition: all 0.5s ease 0s;
        }
        .our-team:hover .social li a {
            background: #BF8F73;
            color: #BF8F73;
        }

        .social li a:hover {
            background-color: #BF8F73 !important;
            border: none;
            text-decoration: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Content -->
    <div class="container-fluid mx-auto py-5" style="background-image: linear-gradient(35deg, hsl(0deg 0% 0%) 0%,hsl(14deg 100% 22%) 13%,hsl(28deg 100% 35%) 27%,hsl(34deg 100% 49%) 42%,hsl(38deg 100% 50%) 56%,hsl(42deg 100% 50%) 68%,hsl(46deg 100% 50%) 79%,hsl(43deg 100% 72%) 88%, hsl(42deg 100% 86%) 95%,hsl(0deg 0% 100%) 100%);">

        <h1 class="text-center mb-1 mt-5 display-3 fw-bold">OUR TEAM</h1>
        <hr style="background: #002800; margin: 15px auto; height: 3px !important;" class="w-25" />
        <p class="text-center text-muted">Proud to be the part of this family</p>

        <div class="row  mx-auto mb-1 ps-5 pe-5 pt-5" >
          <div class="col-md-3  mb-2" >
              <div class="our-team p-3" >
                    <div class="pic" >
                        <img src="images/t1.jpg" />
                    </div>
                    <h3 class="title">ELENA BROWER</h3>
                    <span class="post">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum animi architecto praesentium, neque odio pariatur deleniti, officia id hic aliquid nihil qui fugiat nostrum corrupti quas minus aliquam omnis. Blanditiis.</span>
                    <ul class="social mt-3 me-4">
                        <li> <a href="#"><img src="images/facebook%20(2).png" class="h-100"/></a></li>
                        <li> <a href="#"><img src="images/linkedin.png" class="h-100 "/></a></li>
                        <li> <a href="#"><img src="images/twitter.png" class="h-100 "/></a></li>
                    </ul>
                </div>
          </div>
           <div class="col-md-3  mb-2" >
              <div class="our-team p-3" >
                    <div class="pic">
                        <img src="images/t3.jpg" />
                    </div>
                    <h3 class="title">VISHUDDHI KALP</h3> 
                    <span class="post">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum animi architecto praesentium, neque odio pariatur deleniti, officia id hic aliquid nihil qui fugiat nostrum corrupti quas minus aliquam omnis. Blanditiis.</span>
                    <ul class="social me-4 mt-3">
                        <li> <a href="#"><img src="images/facebook%20(2).png" class="h-100"/></a></li>
                        <li> <a href="#"><img src="images/linkedin.png" class="h-100"/></a></li>
                        <li> <a href="#"><img src="images/twitter.png" class="h-100"/></a></li>
                    </ul>
                </div>
          </div>
                  <div class="col-md-3 mb-2 " >
              <div class="our-team p-3" >
                    <div class="pic" >
                        <img src="images/t2.jpg" />
                    </div>
                    <h3 class="title">NIMRIT JHA</h3>
                      <span class="post">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum animi architecto praesentium, neque odio pariatur deleniti, officia id hic aliquid nihil qui fugiat nostrum corrupti quas minus aliquam omnis. Blanditiis.</span>
                  <ul class="social me-4 mt-3">
                        <li> <a href="#"><img src="images/facebook%20(2).png" class="h-100"/></a></li>
                        <li> <a href="#"><img src="images/linkedin.png" class="h-100"/></a></li>
                        <li> <a href="#"><img src="images/twitter.png" class="h-100"/></a></li>
                    </ul>
                </div>
          </div>
            <div class="col-md-3  " >
              <div class="our-team p-3" >
                    <div class="pic" >
                        <img src="images/man-1517990_1280.jpg" />
                    </div>
                    <h3 class="title">JASON CRANDEL</h3>
                      <span class="post">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum animi architecto praesentium, neque odio pariatur deleniti, officia id hic aliquid nihil qui fugiat nostrum corrupti quas minus aliquam omnis. Blanditiis.</span>
                    <ul class="social me-4 mt-3">
                        <li> <a href="#"><img src="images/facebook%20(2).png" class="h-100"/></a></li>
                        <li> <a href="#"><img src="images/linkedin.png" class="h-100"/></a></li>
                        <li> <a href="#"><img src="images/twitter.png" class="h-100"/></a></li>
                    </ul>
                </div>
          </div>
       </div>
        
        <div class="row  mx-auto mb-5 pt-md-5 ps-5 pe-5 pb-5" >
         <div class="col-md-3 mb-2 " >
              <div class="our-team p-3" >
                    <div class="pic" >
                        <img src="images/tnew.jpg" />
                    </div>
                    <h3 class="title">VIDHISHA VERMA</h3>                     
                       <span class="post">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum animi architecto praesentium, neque odio pariatur deleniti, officia id hic aliquid nihil qui fugiat nostrum corrupti quas minus aliquam omnis. Blanditiis.</span>
                    <ul class="social me-4 mt-3">
                        <li> <a href="#"><img src="images/facebook%20(2).png" class="h-100"/></a></li>
                        <li> <a href="#"><img src="images/linkedin.png" class="h-100"/></a></li>
                        <li> <a href="#"><img src="images/twitter.png" class="h-100"/></a></li>
                    </ul>
                </div>
          </div>
            <div class="col-md-3 mb-2">
              <div class="our-team p-3" >
                    <div class="pic" >
                        <img src="images/praful.jpg" />
                    </div>
                    <h3 class="title">PRAFUL TYAGI</h3>
                     <span class="post">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum animi architecto praesentium, neque odio pariatur deleniti, officia id hic aliquid nihil qui fugiat nostrum corrupti quas minus aliquam omnis. Blanditiis.</span>
                    <ul class="social me-4 mt-3">
                        <li> <a href="#"><img src="images/facebook%20(2).png" class="h-100"/></a></li>
                        <li> <a href="#"><img src="images/linkedin.png" class="h-100"/></a></li>
                        <li> <a href="#"><img src="images/twitter.png" class="h-100"/></a></li>
                    </ul>
                </div>
          </div>
            <div class="col-md-3  mb-2 " >
              <div class="our-team p-3" >
                    <div class="pic" >
                        <img src="images/t4.jpg" />
                    </div>
                    <h3 class="title">SIANNA SHERMA</h3>
                     <span class="post">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum animi architecto praesentium, neque odio pariatur deleniti, officia id hic aliquid nihil qui fugiat nostrum corrupti quas minus aliquam omnis. Blanditiis.</span>
                    <ul class="social me-4 mt-3">
                        <li> <a href="#"><img src="images/facebook%20(2).png" class="h-100"/></a></li>
                        <li> <a href="#"><img src="images/linkedin.png" class="h-100"/></a></li>
                        <li> <a href="#"><img src="images/twitter.png" class="h-100"/></a></li>
                    </ul>
                </div>
          </div>
            <div class="col-md-3  mb-2" >
              <div class="our-team p-3" >
                  <div class="pic" >
                        <img src="images/m1.jpg" />
                    </div>
                    <h3 class="title">HARSH GOEL</h3>
                     <span class="post">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum animi architecto praesentium, neque odio pariatur deleniti, officia id hic aliquid nihil qui fugiat nostrum corrupti quas minus aliquam omnis. Blanditiis.</span>
                    <ul class="social me-4 mt-3">
                        <li> <a href="#"><img src="images/facebook%20(2).png" class="h-100"/></a></li>
                        <li> <a href="#"><img src="images/linkedin.png" class="h-100"/></a></li>
                        <li> <a href="#"><img src="images/twitter.png" class="h-100"/></a></li>
                    </ul>
                </div>
          </div>
       </div>

        <!-- /.container -->
    </div>
</asp:Content>
