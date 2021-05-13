<%@ page import="kz.javaee.music.model.Music" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.javaee.music.DBconnection.DBConnection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- site metas -->
    <title>Rock</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- bootstrap css -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <!-- style css -->
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <!-- Responsive-->
    <link rel="stylesheet" href="css/responsive.css" type="text/css">
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css" type="text/css">
    <!-- Tweaks for older IEs-->
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<!-- body -->
<body>
<%!
String name = "";
%>

<header>
    <!-- header inner -->
    <div class="header">
        <div class="container">
            <div class="row">

                <div class="col-xl-2 col-lg-2 col-md-2 col-sm-2 col logo_section">
                    <div class="full">
                        <div class="center-desk">
                            <div class="logo">
                                <a href="index.jsp"><img src="images/logo.jpg" alt="logo" /></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-8 col-lg-8 col-md-10 col-sm-10">
                    <div class="menu-area">
                        <div class="limit-box">
                            <nav class="main-menu">
                                <ul class="menu-area-main">
                                    <li class="active"> <a href="index.jsp">Home</a> </li>
                                    <li> <a href="about.jsp">about</a> </li>
                                    <li> <a href="ProfileServlet"> Albums</a> </li>
                                    <li> <a href="blog.jsp">Blog</a> </li>
                                    <li> <a href="contact.jsp">Contact</a> </li>
                                    <li> <a class="login" href="user.jsp"><%
                                        name = request.getParameter("name");
                                        out.print(name);
                                        pageContext.setAttribute("user",name,PageContext.SESSION_SCOPE);
                                    %></a>&nbsp;&nbsp</li>
                                    <li><a class="sign" href="LogoutServlet">Logout</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>

                <div class="col-xl-2 col-lg-2 col-md-2 col-sm-2">
                    <form class="search">
                        <label>
                            <input class="form-control" type="text" placeholder="Search">
                        </label>
                        <button><img src="images/search_icon.png" alt=""></button>
                    </form>
                </div>

            </div>
        </div>
    </div>
</header>
<!-- end header -->


<div class="Albumsbg">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="Albumstitlepage">
                    <h2>Albums</h2>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Albums -->
<div class="Albums">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="titlepage">

                    <span>It is a long established fact that a reader will be distracted by the readable <br>content of a page when looking at its layout. The point of using Lorem </span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 margin">
                <div class="Albums-box">
                    <figure>
                        <a href="images/album1.jpg" class="fancybox" rel="ligthbox">
                            <img src="images/album1.jpg" class="zoom img-fluid " alt="">
                        </a>
                        <span class="hoverle">
                        <a href="images/album1.jpg" class="fancybox" rel="ligthbox"><img src="images/search.png"></a>
                        </span>
                    </figure>
                </div>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 margin">
                <div class="Albums-box">
                    <figure>
                        <a href="images/album2.jpg" class="fancybox" rel="ligthbox ">
                            <img src="images/album2.jpg" class="zoom img-fluid " alt="">
                        </a>
                        <span class="hoverle">
                        <a href="images/album2.jpg" class="fancybox" rel="ligthbox"><img src="images/search.png"></a>
                        </span>
                    </figure>
                </div>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 margin">
                <div class="Albums-box">
                    <figure>
                        <a href="images/album2.jpg" class="fancybox" rel="ligthbox">
                            <img src="images/album2.jpg" class="zoom img-fluid " alt="">
                        </a>
                        <span class="hoverle">
                        <a href="images/album2.jpg" class="fancybox" rel="ligthbox"><img src="images/search.png"></a>
                        </span>
                    </figure>
                </div>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 margin">
                <div class="Albums-box">
                    <figure>
                        <a href="images/album1.jpg" class="fancybox" rel="ligthbox ">
                            <img src="images/album1.jpg" class="zoom img-fluid " alt="">
                        </a>
                        <span class="hoverle">
                        <a href="images/album1.jpg" class="fancybox" rel="ligthbox"><img src="images/search.png"></a>
                        </span>
                    </figure>
                </div>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 margin">
                <div class="Albums-box">
                    <figure>
                        <a href="images/album1.jpg" class="fancybox" rel="ligthbox">
                            <img src="images/album1.jpg" class="zoom img-fluid " alt="">
                        </a>
                        <span class="hoverle">
                        <a href="images/album1.jpg" class="fancybox" rel="ligthbox"><img src="images/search.png"></a>
                        </span>
                    </figure>
                </div>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 margin">
                <div class="Albums-box">
                    <figure>
                        <a href="images/album2.jpg" class="fancybox" rel="ligthbox ">
                            <img src="images/album2.jpg" class="zoom img-fluid " alt="">
                        </a>
                        <span class="hoverle">
                        <a href="images/album2.jpg" class="fancybox" rel="ligthbox"><img src="images/search.png"></a>
                        </span>
                    </figure>
                </div>
            </div>

        </div>
    </div>
</div>
<!-- end Albums -->





    <h1 style="color: red; text-align: center; font-family: Montserrat">Music list only for you</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Music</th>
            <th>Year of publish</th>
            <th>min</th>
        </tr>

        <%
            DBConnection dbconnection = new DBConnection();
            ResultSet resultSet = dbconnection.getMusic();
            try{
                while (resultSet.next()) {
        %>

        <tr>
            <th><%= resultSet.getInt("id") %></th>
            <th><%= resultSet.getString("name") %></th>
            <th><%= resultSet.getInt("yearofpublish") %></th>
            <th><%= resultSet.getString("min") %></th>
        </tr>

        <%
                }
            } catch (Exception e){
                out.print(e.getMessage());
            }
        %>

    </table>

    <br>

<!--  footer -->
<footr>
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-12 width">
                    <div class="address">
                        <h3>Contact Us</h3>
                        <ul class="locarion_icon">
                            <li><img src="icon/1.png" alt="icon" />104 New York , USA</li>
                            <li><img src="icon/2.png" alt="icon" />Phone : ( +71 5896547 )</li>
                            <li><img src="icon/3.png" alt="icon" />Email : demo@email.com</li>

                        </ul>

                        <ul class="contant_icon">
                            <li><img src="icon/fb.png" alt="icon" /></li>
                            <li><img src="icon/tw.png" alt="icon" /></li>
                            <li><img src="icon/lin(2).png" alt="icon" /></li>
                            <li><img src="icon/instagram.png" alt="icon" /></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 width">
                    <div class="address">
                        <h3>Get In Touch</h3>
                        <form>
                            <div class="row">
                                <div class="col-sm-12">
                                    <input class="contactus" placeholder="Name" type="text" name="Name">
                                </div>
                                <div class="col-sm-12">
                                    <input class="contactus" placeholder="Phone" type="text" name="Email">
                                </div>
                                <div class="col-sm-12">
                                    <input class="contactus" placeholder="Email" type="text" name="Email">
                                </div>
                                <div class="col-sm-12">
                                    <textarea class="textarea" placeholder="Message" type="text" name="Message"></textarea>
                                </div>
                                <div class="col-sm-12">
                                    <button class="send">Send</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 width">
                    <div class="address">
                        <h3>New Music </h3>
                        <div class="row">
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 ">
                                <figure><img src="images/music1.jpg" /></figure>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 ">
                                <figure><img src="images/music2.jpg" /></figure>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 ">
                                <figure><img src="images/music3.jpg" /></figure>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 ">
                                <figure><img src="images/music4.jpg" /></figure>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="copyright">
            <p>© 2019 All Rights Reserved. <a href="https://html.design/">Free html Templates</a></p>
        </div>
    </div>
</footr>
<!-- end footer -->
<!-- Javascript files-->
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
<script src="js/jquery-3.0.0.min.js"></script>
<script src="js/plugin.js"></script>
<!-- sidebar -->
<script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="js/custom.js"></script>
<script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
<script>
    $(document).ready(function() {
        $(".fancybox").fancybox({
            openEffect: "none",
            closeEffect: "none"
        });

        $(".zoom").hover(function() {

            $(this).addClass('transition');
        }, function() {

            $(this).removeClass('transition');
        });
    });
</script>
</body>

</html>