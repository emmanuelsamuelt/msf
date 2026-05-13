<%-- 
    Document   : home
    Created on : 5 May, 2025, 4:31:53 PM
    Author     : asst_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Donations | Subscriptions</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 

        <link href="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>

        <style>
            .high {
                background-color: greenyellow;
                color: black;
            }
            .low {
                background-color: #ffb3b3;
                color: black;
            }
            .loading{
                width:90%;
                margin:0 auto;
                height:8px;
                background-color:lightblue;
                position:relative;
                transition: all 300ms ease-in-out;
                z-index: 1;
            }
            .sidenav {
                height: 100%;
                width: 0;
                position: fixed;
                z-index: 1;
                top: 0;
                left: 0;
                background-color: #ffe114 !important;
                overflow-x: hidden;
                transition: 0.1s;
                padding-top: 90px;
                z-index: 1000;
            }

            .sidenav a {
                padding: 5px 5px 5px 20px;
                text-decoration: none;
                font-size: 13px;
                font-weight: bold;
                color: #01354a;
                display: block;
                transition: 0.3s;
                z-index: 1;
            }

            .sidenav a:hover {
                background-color: #01354a !important;
                color: #ffe114;
            }

            .sidenav .closebtn {
                position: absolute;
                top: 0;
                right: 7px;
                font-size: 25px;
                font-weight: bold;
                padding-top: 45px;
            }
            .footer {
                position: fixed;
                left: 0;
                bottom: 0;
                width: 100%;
                background-color: #01354a !important;
                color: #ffe114;
                text-align: center;
                font-size: 10px;
            }


        </style>

        <style>
            .navbar{
                top:0;
                width:100%;
                z-index: 9999;
                position: fixed;
                background-color: #01354a;
            }

        </style>
        <style>
            .dropdown:hover .dmenu {
                display: block;
            }
            .dropdown-submenu {
                position: relative;
            }

            .dropdown-submenu>.dropdown-menu {
                top: 0;
                left: 100%;
                margin-top: -6px;
                margin-left: -1px;
                -webkit-border-radius: 0 6px 6px 6px;
                -moz-border-radius: 0 6px 6px;
                border-radius: 0 6px 6px 6px;
            }

            .dropdown-submenu:hover>.dropdown-menu {
                display: block;
            }

            .dropdown-submenu>a:after {
                display: block;
                content: " ";
                float: right;
                width: 0;
                height: 0;
                border-color: transparent;
                border-style: solid;
                border-width: 5px 0 5px 5px;
                border-left-color: #ccc;
                margin-top: 5px;
                margin-right: -10px;
            }

            .dropdown-submenu:hover>a:after {
                border-left-color: #fff;
            }

            .dropdown-submenu.pull-left {
                float: none;
            }

            .dropdown-submenu.pull-left>.dropdown-menu {
                left: -100%;
                margin-left: 10px;
                -webkit-border-radius: 6px 0 6px 6px;
                -moz-border-radius: 6px 0 6px 6px;
                border-radius: 6px 0 6px 6px;
            }

            .navbar-brand {
                margin-top: 0;
                margin-bottom: 0;
                background-color: #01354a;
                color: #ffe114 !important;
                z-index: 9999;
                border: 0;
                font-size: 28px !important;
                letter-spacing: 4px;
                border-radius: 0;
                font-family: Montserrat, sans-serif;
                cursor:pointer;
                vertical-align: middle;
            }
        </style>
        <style>
            *{
                margin: 0;
                padding: 0;
                -webkit-box-sizing: border-box;
                box-sizing: border-box;
            }

            h1{
                font-size: 2.5rem;
                font-family: 'Montserrat';
                font-weight: normal;
                color: #444;
                text-align: center;
                margin: 2rem 0;
            }

            .wrapper{
                width: 98%;
                margin: 0 auto;
                max-width: 80rem;
            }

            .cols{
                display: -webkit-box;
                display: -ms-flexbox;
                display: flex;
                -ms-flex-wrap: wrap;
                flex-wrap: wrap;
                -webkit-box-pack: center;
                -ms-flex-pack: center;
                justify-content: center;
            }

            .col{
                width: calc(33% - 4rem);
                margin: 1rem;
                cursor: pointer;
            }

            .container{
                -webkit-transform-style: preserve-3d;
                transform-style: preserve-3d;
                -webkit-perspective: 1000px;
                perspective: 1000px;
            }

            .front{
                background-size: cover;
                background-position: center;
                -webkit-transition: -webkit-transform .7s cubic-bezier(0.4, 0.2, 0.2, 1);
                transition: -webkit-transform .7s cubic-bezier(0.4, 0.2, 0.2, 1);
                -o-transition: transform .7s cubic-bezier(0.4, 0.2, 0.2, 1);
                transition: transform .7s cubic-bezier(0.4, 0.2, 0.2, 1);
                transition: transform .7s cubic-bezier(0.4, 0.2, 0.2, 1), -webkit-transform .7s cubic-bezier(0.4, 0.2, 0.2, 1);
                -webkit-backface-visibility: hidden;
                backface-visibility: hidden;
                text-align: center;
                min-height: 200px;
                height: auto;
                border-radius: 10px;
                color: #fff;
                font-size: 1.5rem;
            }

/*            .back{
                background: #cedce7;
                background: -webkit-linear-gradient(45deg,  #cedce7 0%,#596a72 100%);
                background: -o-linear-gradient(45deg,  #cedce7 0%,#596a72 100%);
                background: linear-gradient(45deg,  #cedce7 0%,#596a72 100%);
            }*/

            .front:after{
                position: absolute;
                top: 0;
                left: 0;
                z-index: 1;
                width: 100%;
                height: 100%;
                content: '';
                display: block;
                opacity: .6;
                background-color: #000;
                -webkit-backface-visibility: hidden;
                backface-visibility: hidden;
                border-radius: 10px;
            }
            .container:hover .front{
                -webkit-transition: -webkit-transform .7s cubic-bezier(0.4, 0.2, 0.2, 1);
                transition: -webkit-transform .7s cubic-bezier(0.4, 0.2, 0.2, 1);
                -o-transition: transform .7s cubic-bezier(0.4, 0.2, 0.2, 1);
                transition: transform .7s cubic-bezier(0.4, 0.2, 0.2, 1);
                transition: transform .7s cubic-bezier(0.4, 0.2, 0.2, 1), -webkit-transform .7s cubic-bezier(0.4, 0.2, 0.2, 1);
            }

/*            .back{
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
            }*/

            .inner{
                -webkit-transform: translateY(-50%) translateZ(60px) scale(0.94);
                transform: translateY(-50%) translateZ(60px) scale(0.94);
                top: 50%;
                position: absolute;
                left: 0;
                width: 100%;
                padding: 2rem;
                -webkit-box-sizing: border-box;
                box-sizing: border-box;
                outline: 1px solid transparent;
                -webkit-perspective: inherit;
                perspective: inherit;
                z-index: 2;
            }

/*            .container .back{
                -webkit-transform: rotateY(180deg);
                transform: rotateY(180deg);
                -webkit-transform-style: preserve-3d;
                transform-style: preserve-3d;
            }*/

            .container .front{
                -webkit-transform: rotateY(0deg);
                transform: rotateY(0deg);
                -webkit-transform-style: preserve-3d;
                transform-style: preserve-3d;
            }

/*            .container:hover .back{
                -webkit-transform: rotateY(0deg);
                transform: rotateY(0deg);
                -webkit-transform-style: preserve-3d;
                transform-style: preserve-3d;
            }*/

/*            .container:hover .front{
                -webkit-transform: rotateY(-180deg);
                transform: rotateY(-180deg);
                -webkit-transform-style: preserve-3d;
                transform-style: preserve-3d;
            }*/

            .front .inner p{
                font-size: 2rem;
                margin-bottom: 2rem;
                position: relative;
            }

            .front .inner p:after{
                content: '';
                width: 4rem;
                height: 2px;
                position: absolute;
                background: #C6D4DF;
                display: block;
                left: 0;
                right: 0;
                margin: 0 auto;
                bottom: -.75rem;
            }

            .front .inner span{
                color: rgba(255,255,255,0.7);
                font-family: 'Montserrat';
                font-weight: 300;
            }

            @media screen and (max-width: 64rem){
                .col{
                    width: calc(33.333333% - 2rem);
                }
            }

            @media screen and (max-width: 48rem){
                .col{
                    width: calc(50% - 2rem);
                }
            }

            @media screen and (max-width: 32rem){
                .col{
                    width: 100%;
                    margin: 0 0 2rem 0;
                }
            }
        </style>
    </head>
    <body style="background-color: #fff; width: 100%;">
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container-fluid" style="margin-left: 50px;">           
                <a href="#"><img alt="The Gideons International" src="images/GideonsLogo2.png" align="left"  height="50" width="170"  style="padding: 5px;"/></a>

            </div>
        </nav>
        <div class="container-fluid">
            <h1>Recurring Payments</h1>
            <div class="cols">
                <div class="col" ontouchstart="this.classList.toggle('hover');">
                    <div class="container">
                        <div class="front" style="background-image: url(https://img.freepik.com/free-vector/donations-online-with-laptop_98292-982.jpg?t=st=1746443413~exp=1746447013~hmac=42997bc9bb029672e2860cc09bd064cf1e89b8b4b4e0f506215b8067b2f0540f&w=1380)">
                             <a href="msf_r.jsp" style="color: white; font-size: 18px; font-weight: bold;">
                                <div class="inner">
                                    <p><font style="color:yellow; text-align: center;">Ministry Support Fund<br>Recurring Ministry Support Fund</font><br><br>Click here for the Subscription.</p>   
                                </div></a>
                        </div>
                        <div class="back">
                        </div>
                    </div>
                </div>
                <div class="col" ontouchstart="this.classList.toggle('hover');">
                    <div class="container">
                        <div class="front" style="background-image: url(https://img.freepik.com/free-vector/detailed-point-exchange-concept_23-2148879876.jpg?t=st=1746444195~exp=1746447795~hmac=f1d0f9deedaea5c9ce44306e90193e8b1cad8ca7fbac19e75b7c2a89c554bd49&w=1060)">
                            <a href="https://pages.razorpay.com/pl_SokM5S2OOPiaqM/view" style="color: white; font-size: 18px; font-weight: bold;">
                                <div class="inner">
                                    <p><font style="color:yellow; text-align: center;">Ministry Support Fund<br>One Time Payment</font><br><br>Click here for the Payment.</p>   
                                </div></a>
                        </div>
                        <div class="back">
                        </div>
                    </div>
                </div>           
            </div>
        </div>
        <br><br>
        <footer class="footer">
            <span class="text-muted">&nbsp;</span>
        </footer>
    </body>
</html>

