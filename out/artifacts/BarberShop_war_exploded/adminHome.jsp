<%--
  Created by IntelliJ IDEA.
  User: And
  Date: 21.11.2019
  Time: 2:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="model.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Barber</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/nice-select.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/gijgo.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/slicknav.css">
    <link rel="stylesheet" href="css/style.css">
    <!-- <link rel="stylesheet" href="css/responsive.css"> -->
</head>

<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade
    your browser</a> to improve your experience and security.</p>
<![endif]-->
<%List<Service> allService = (List<Service>) request.getSession().getAttribute("allService");%>
<%List<Master> allMaster = (List<Master>) request.getSession().getAttribute("allMaster");%>
<%List<Image> allImage = (List<Image>) request.getSession().getAttribute("allImage");%>
<%List<Apointment> allApointment = (List<Apointment>) request.getAttribute("allAponitment");%>
<!-- header-start -->
<header>
    <div class="header-area ">
        <div id="sticky-header" class="main-header-area">
            <div class="container-fluid p-0">
                <div class="row align-items-center no-gutters">
                    <div class="col-xl-3 col-lg-3">
                        <div class="logo-img">
                            <a href="index.jsp">
                                <img src="img/logo.png" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6">
                        <div class="main-menu  d-none d-lg-block">
                            <nav>
                                <ul id="navigation">
                                    <li><a class="popup-with-form" href="#test-form">Add Master</a></li>
                                    <li><a class="popup-with-form" href="#test-form3">Add Service</a></li>
                                    <li><a class="popup-with-form" class="active" href="#test-form2">Add Image</a></li>
                                    <li><a class="popup-with-form" class="active" href="#test-form4">Change
                                        Master_Status</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 d-none d-lg-block">
                        <div class="book_room">
                            <div class="book_btn d-none d-lg-block">
                                <a href="/logout">LogOut</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="mobile_menu d-block d-lg-none"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- header-end -->

<!-- service_area_start -->
<div class="service_area">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="section_title2 text-center mb-90">
                    <i class="flaticon-scissors"></i>
                    <h3>Our Apointment</h3>
                </div>
            </div>
        </div>
        <div class="white_bg_pos">
            <div class="row" id="content">
                <%--                <table class="blueTable">--%>
                <%--                    <thead>--%>
                <%--                    <tr>--%>
                <%--                        <th>Name:</th>--%>
                <%--                        <th>Email:</th>--%>
                <%--                        <th>Phone Number</th>--%>
                <%--                        <th>Service:</th>--%>
                <%--                        <th>Master:</th>--%>
                <%--                        <th>Date_Time:</th>--%>
                <%--                    </tr>--%>
                <%--                    </thead>--%>
                <%--                    <tfoot>--%>
                <%--                    <tr>--%>
                <%--                        <td colspan="4">--%>
                <%--                            <div class="links"><a href="#">&laquo;</a> <a class="active" href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">&raquo;</a></div>--%>
                <%--                        </td>--%>
                <%--                    </tr>--%>
                <%--                    </tfoot>--%>
                <%--                    <tbody>--%>
                <%--                    <%for (Apointment apointment : allApointment) {%>--%>

                <%--                        <tr>--%>
                <%--                            <td><%=apointment.getName()%></td>--%>
                <%--                            <td> <%=apointment.getEmail()%></td>--%>
                <%--                            <td><<%=apointment.getPhoneNumber()%></td>--%>
                <%--                            <td><%=apointment.getService().getName()%></td>--%>
                <%--                            <td><%=apointment.getMaster().getName()%></td>--%>
                <%--                            <td><%=apointment.getTime()%></td>--%>
                <%--                        </tr>--%>

                <%--                    <% } %>--%>


                <%--                    </tbody>--%>
                <%--                </table>--%>


                <%--        <div class="white_bg_pos">--%>
                <%--            <div class="row">--%>
                <%--                <div class="col-xl-6">--%>
                <%--                    <table border="1px">--%>
                <%--                    <%for (Apointment apointment : allApointment) {%>--%>


                <%--                                <th>Name:</th>--%>
                <%--                                <th>Date_Time:</th>--%>
                <%--                                <th>Master:</th>--%>
                <%--                                <th>Service:</th>--%>
                <%--                                <th>Email:</th>--%>
                <%--                                <th>Phone Number:</th>--%>
                <%--                                <tr>--%>
                <%--                                    <td><%=apointment.getName()%></td>--%>
                <%--                                    <td> <%=apointment.getTime()%></td>--%>
                <%--                                    <td><%=apointment.getMaster().getName()%></td>--%>
                <%--                                    <td><%=apointment.getService().getName()%></td>--%>
                <%--                                    <td><%=apointment.getEmail()%></td>--%>
                <%--                                    <td><%=apointment.getPhoneNumber()%></td>--%>
                <%--                                </tr>--%>

                <%--                    <% } %>--%>
                <%--                    </table>--%>
            </div>
        </div>
    </div>
</div>


<div class="service_area">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="section_title2 text-center mb-90">
                    <i class="flaticon-scissors"></i>
                    <h3>our service</h3>
                </div>
            </div>
        </div>
        <div class="white_bg_pos">
            <div class="row">
                <div class="col-xl-6">
                    <%for (Service service : allService) {%>
                    <div class="single_service d-flex justify-content-between align-items-center">
                        <div class="service_inner d-flex align-items-center">
                            <div class="thumb">
                                <img src="/getImage?imgName=<%=service.getImagePath()%>" alt="">
                            </div>
                            <span>Name:<%=service.getName()%> :Description:<%=service.getDescription()%></span>
                        </div>
                        <p>………………………..$<%=service.getPrice()%>
                        </p>
                    </div>
                    <% } %>

                                                    <img src="img/service/1.png" alt="">
                                                </div>
                                                <span>Men’s Facial</span>
                                            </div>
                                            <p>………………………..$15</p>

                                                <div class="single_service d-flex justify-content-between align-items-center">
                                                    <div class="service_inner d-flex align-items-center">
                                                        <div class="thumb">
                                                            <img src="img/service/2.png" alt="">
                                                        </div>
                                                        <span>Clean Cut</span>
                                                    </div>
                                                    <p>………………………..$15</p>
                                                </div>
                                                <div class="single_service d-flex justify-content-between align-items-center">
                                                    <div class="service_inner d-flex align-items-center">
                                                        <div class="thumb">
                                                            <img src="img/service/3.png" alt="">
                                                        </div>
                                                        <span>Close Shave</span>
                                                    </div>
                                                    <p>………………………..$15</p>
                                                </div>
                                                <div class="single_service d-flex justify-content-between align-items-center">
                                                    <div class="service_inner d-flex align-items-center">
                                                        <div class="thumb">
                                                            <img src="img/service/4.png" alt="">
                                                        </div>
                                                        <span>Razor Cut</span>
                                                    </div>
                                                    <p>………………………..$15</p>
                                                </div>
                                                <div class="single_service d-flex justify-content-between align-items-center">
                                                    <div class="service_inner d-flex align-items-center">
                                                        <div class="thumb">
                                                            <img src="img/service/5.png" alt="">
                                                        </div>
                                                        <span>Face Massage</span>
                                                    </div>
                                                    <p>………………………..$15</p>
                                                </div>
                </div>
                                        <div class="col-xl-6">
                                            <div class="single_service d-flex justify-content-between align-items-center">
                                                <div class="service_inner d-flex align-items-center">
                                                    <div class="thumb">
                                                        <img src="img/service/6.png" alt="">
                                                    </div>
                                                    <span>Classic haircut</span>
                                                </div>
                                                <p>………………………..$15</p>
                                            </div>
                                            <div class="single_service d-flex justify-content-between align-items-center">
                                                <div class="service_inner d-flex align-items-center">
                                                    <div class="thumb">
                                                        <img src="img/service/7.png" alt="">
                                                    </div>
                                                    <span>Haircut and shampoo</span>
                                                </div>
                                                <p>………………………..$15</p>
                                            </div>
                                            <div class="single_service d-flex justify-content-between align-items-center">
                                                <div class="service_inner d-flex align-items-center">
                                                    <div class="thumb">
                                                        <img src="img/service/8.png" alt="">
                                                    </div>
                                                    <span>Hair treatment</span>
                                                </div>
                                                <p>………………………..$15</p>
                                            </div>
                                            <div class="single_service d-flex justify-content-between align-items-center">
                                                <div class="service_inner d-flex align-items-center">
                                                    <div class="thumb">
                                                        <img src="img/service/9.png" alt="">
                                                    </div>
                                                    <span>Beard trimming</span>
                                                </div>
                                                <p>………………………..$15</p>
                                            </div>
                                            <div class="single_service d-flex justify-content-between align-items-center">
                                                <div class="service_inner d-flex align-items-center">
                                                    <div class="thumb">
                                                        <img src="img/service/10.png" alt="">
                                                    </div>
                                                    <span>Beard and moustache</span>
                                                </div>
                                                <p>………………………..$15</p>
                                            </div>
                                        </div>
            </div>
        </div>
    </div>
</div>


<!-- gallery_area_start -->
<div class="gallery_area">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="section_title2 text-center mb-90">
                    <i class="flaticon-scissors" style="color: black"></i>
                    <h3 class="flaticon-scissors" style="color: black">Our Gallery</h3>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-12">
                <div class="gallery_active owl-carousel">
                    <%for (Image image : allImage) { %>
                    <div class="single_gallery">
                        <div class="thumb">
                            <img src="/getImage?imgName=<%=image.getImgPath()%>" style="height: 440px;">
                            <div class="image_hover">
                                <a class="popup-image" href="/getImage?imgName=<%=image.getImgPath()%>">
                                    <i class="ti-plus"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <%}%>
                    <div class="single_gallery">
                        <div class="thumb">
                            <img src="img/gallery/2.png" alt="">
                            <div class="image_hover">
                                <a class="popup-image" href="img/gallery/2.png">
                                    <i class="ti-plus"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="single_gallery">
                        <div class="thumb">
                            <img src="img/gallery/3.png" alt="">
                            <div class="image_hover">
                                <a class="popup-image" href="img/gallery/3.png">
                                    <i class="ti-plus"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="single_gallery">
                        <div class="thumb">
                            <img src="img/gallery/1.png" alt="">
                            <div class="image_hover">
                                <a class="popup-image" href="img/gallery/1.png">
                                    <i class="ti-plus"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="single_gallery">
                        <div class="thumb">
                            <img src="img/gallery/2.png" alt="">
                            <div class="image_hover">
                                <a class="popup-image" href="img/gallery/2.png">
                                    <i class="ti-plus"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="single_gallery">
                        <div class="thumb">
                            <img src="img/gallery/3.png" alt="">
                            <div class="image_hover">
                                <a class="popup-image" href="img/gallery/3.png">
                                    <i class="ti-plus"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="cutter_muster">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="section_title2 text-center mb-90">
                    <i class="flaticon-scissors" class="flaticon-scissors" style="color: black"></i>
                    <h3 class="flaticon-scissors" style="color: black">Our Cutter Masters</h3>
                </div>
            </div>
        </div>
        <div class="row">
            <%for (Master master : allMaster) {%>
            <div class="col-xl-3 col-md-6 col-lg-3">
                <div class="single_master">
                    <div class="thumb">
                        <img src="/getImage?imgName=<%=master.getImagePath()%>" style="height: 320px">
                        <div class="social_link">
                            <a href="#"><i class="fa fa-envelope"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                        </div>
                    </div>
                    <div class="master_name text-center">
                        <h3><%=master.getName()%> <%=master.getSurname()%>
                        </h3>
                        <p><%=master.getProfession()%>
                        </p>
                        <p><%=master.getStatus()%>
                        </p>

                    </div>
                </div>
            </div>
            <% }%>
                                <div class="col-xl-3 col-md-6 col-lg-3">
                                    <div class="single_master">
                                        <div class="thumb">
                                            <img src="img/team/2.png" alt="">
                                            <div class="social_link">
                                                <a href="#"><i class="fa fa-envelope"></i></a>
                                                <a href="#"><i class="fa fa-twitter"></i></a>
                                                <a href="#"><i class="fa fa-linkedin"></i></a>
                                            </div>
                                        </div>
                                        <div class="master_name text-center">
                                            <h3>Dan Jacky</h3>
                                            <p>Mens Cut</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-md-6 col-lg-3">
                                    <div class="single_master">
                                        <div class="thumb">
                                            <img src="img/team/3.png" alt="">
                                            <div class="social_link">
                                                <a href="#"><i class="fa fa-envelope"></i></a>
                                                <a href="#"><i class="fa fa-twitter"></i></a>
                                                <a href="#"><i class="fa fa-linkedin"></i></a>
                                            </div>
                                        </div>
                                        <div class="master_name text-center">
                                            <h3>Luka Luka</h3>
                                            <p>Mens Cut</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-md-6 col-lg-3">
                                    <div class="single_master">
                                        <div class="thumb">
                                            <img src="img/team/4.png" alt="">
                                            <div class="social_link">
                                                <a href="#"><i class="fa fa-envelope"></i></a>
                                                <a href="#"><i class="fa fa-twitter"></i></a>
                                                <a href="#"><i class="fa fa-linkedin"></i></a>
                                            </div>
                                        </div>
                                        <div class="master_name text-center">
                                            <h3>Rona Dana</h3>
                                            <p>Ladies Cut</p>
                                        </div>
                                    </div>
                                </div>
        </div>
    </div>
</div>
<!-- footer -->
<!-- link that opens popup -->

<!-- form itself end-->
<form id="test-form" class="white-popup-block mfp-hide" action="/addMaster" method="post" enctype="multipart/form-data">
    <div class="popup_box ">
        <div class="popup_inner">
            <h3>Add Master</h3>
            <form action="#">
                <div class="row">
                    <div class="col-xl-6 col-md-6">
                        <input type="text" name="name" placeholder="Name">
                    </div>

                    <div class="col-xl-6 col-md-6">
                        <input type="text" name="surname" placeholder="Surname">
                    </div>

                    <div class="col-xl-6 col-md-6">
                        <input type="text" name="proffesion" placeholder="Proffesion">
                    </div>

                    <div class="col-xl-6 col-md-6">
                        <input type="file" name="image" placeholder="Image">
                    </div>

                    <button type="submit" class="boxed-btn3">Submit</button>
                </div>
            </form>
        </div>
    </div>
</form>
<form id="test-form4" class="white-popup-block mfp-hide" action="/changeMasterStatus" method="post">
    <div class="popup_box ">
        <div class="popup_inner">
            <h3>Change Status</h3>
            <form action="#">
                <div class="row">
                <div class="col-xl-6 col-md-6">
                    <select class="form-select wide" id="default-select" class="" name="master_id">

                        <option data-display="Choose Barbers">Choose Barbers</option>

                        <%
                            for (Master master : allMaster) {%>
                        <option value="<%=master.getId()%>" name="master_id"><%=master.getName()%>
                        </option>

                        <% }%>
                    </select>
                </div>
                <div class="col-xl-6 col-md-6">
                <select class="form-select wide" id="default-select" class="" name="status">

                        <option data-display="Choose Barbers_Status">Choose Barbers_Status</option>

                            <%
                            for (MasterStatus status : MasterStatus.values()) {%>
                        <option value="<%=status.name()%>" name="status"><%=status.name()%>
                        </option>
                            <% }%>
                </select>
        </div>

        <button type="submit" class="boxed-btn3">Submit</button>
                </div>
</form>
</div>
</div>
</form>

<!-- form itself end -->
<form id="test-form2" class="white-popup-block mfp-hide" action="/addImage" method="post" enctype="multipart/form-data">
    <div class="popup_box ">
        <div class="popup_inner">
            <h3>Add Image</h3>
            <form action="#">
                <div class="row">

                    <div class="col-xl-6 col-md-6">
                        <input type="file" name="image" placeholder="Image">
                    </div>

                    <button type="submit" class="boxed-btn3">Submit</button>
                </div>
            </form>
        </div>
    </div>
</form>
<form id="test-form3" class="white-popup-block mfp-hide" action="/addService" method="post"
      enctype="multipart/form-data">
    <div class="popup_box ">
        <div class="popup_inner">
            <h3>Add Service</h3>
            <form action="#">
                <div class="row">

                    <div class="col-xl-6 col-md-6">
                        <input type="file" name="image" placeholder="Image">
                    </div>
                    <div class="col-xl-6 col-md-6">
                        <input type="text" name="name" placeholder="Name">
                    </div>
                    <div class="col-xl-6 col-md-6">
                        <input type="text" name="description" placeholder="Description">
                    </div>
                    <div class="col-xl-6 col-md-6">
                        <input type="text" name="price" placeholder="price">
                    </div>

                    <button type="submit" class="boxed-btn3">Submit</button>
                </div>
            </form>
        </div>
    </div>
</form>
<!-- JS here -->
<script src="js/vendor/modernizr-3.5.0.min.js"></script>
<script src="js/vendor/jquery-1.12.4.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/isotope.pkgd.min.js"></script>
<script src="js/ajax-form.js"></script>
<script src="js/waypoints.min.js"></script>
<script src="js/jquery.counterup.min.js"></script>
<script src="js/imagesloaded.pkgd.min.js"></script>
<script src="js/scrollIt.js"></script>
<script src="js/jquery.scrollUp.min.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/nice-select.min.js"></script>
<script src="js/jquery.slicknav.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/plugins.js"></script>
<script src="js/gijgo.min.js"></script>


<!--contact js-->
<script src="js/contact.js"></script>
<script src="js/jquery.ajaxchimp.min.js"></script>
<script src="js/jquery.form.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/mail-script.js"></script>

<script src="js/main.js"></script>
<%--<script src="js/jquery-3.4.1.min.js"></script>--%>
<script>
    $('#datepicker').datepicker({
        iconsLibrary: 'fontawesome',
        disableDaysOfWeek: [0, 0],
        //     icons: {
        //      rightIcon: '<span class="fa fa-caret-down"></span>'
        //  }
    });
    $('#datepicker2').datepicker({
        iconsLibrary: 'fontawesome',
        icons: {
            rightIcon: '<span class="fa fa-caret-down"></span>'
        }

    });
    var timepicker = $('#timepicker').timepicker({
        format: 'hh.MM'
    });


</script>
<script>
    setInterval(function () {
        $.ajax({
            url: "http://localhost:8080/allAppointment",
            success: function (result) {
                $("#content").html(result);
            }
        });
    }, 10000);

</script>
</body>

</html>
