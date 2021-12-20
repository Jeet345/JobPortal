<%@ page import="com.oracle.wls.shaded.org.apache.bcel.classfile.Code" %>
    <%@ page contentType="text/html" pageEncoding="UTF-8" %>
        <%@ page import="java.sql.Connection" %>
            <%@ page import="java.io.*" %>
                <%@ page import="java.sql.ResultSet" %>
                    <%@ page import="java.sql.Statement" %>
                        <%@ page import="connection.DatabaseConnection" %>

                            <!DOCTYPE html>
                            <html>
                            <head>
                                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                                <title>JSP Page</title>
                                <link href="../css/style.css" rel="stylesheet" type="text/css">

                                <script src="../assets/FA5PRO-fa6/js/all.min.js"></script>
                                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
                                    integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
                                    crossorigin="anonymous" referrerpolicy="no-referrer"></script>
                                <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"
                                    integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA=="
                                    crossorigin="anonymous" referrerpolicy="no-referrer"></script>

                            </head>
                            <body>

                                <jsp:include page="../includes/header.jsp">
                                    <jsp:param name="pageName" value="home" />
                                </jsp:include>


                                <div class="job-search-container">
                                    <div class="inner-box">
                                        <div class="search-box">
                                            <h4 class="title">Find Jobs, Employment & Career Opportunities</h4>
                                            <h1 class="heading">
                                                Search Between More Then<span> 50,000 </span>Open Jobs.
                                            </h1>
                                            <div class="input-box">
                                                <form action="" method="post">
                                                    <div class="input-filed">
                                                        <input type="text" placeholder="Job Title, KeyWord, Or Phrase">
                                                        <span class="icon"><i class="fas fa-search"></i></span>
                                                    </div>
                                                    <div class="input-filed">
                                                        <input type="text" placeholder="City, State or ZIP">
                                                        <span class="icon"><i class="fas fa-map-marker-alt"></i></span>
                                                    </div>
                                                    <div class="input-filed">
                                                        <div class="select-box">
                                                            <h4 class="select">Select Sector</h4>
                                                            <span class="icon"><i class="fas fa-angle-down"></i></span>
                                                        </div>
                                                        <div class="option">
                                                            <a href="">Select Sector</a>
                                                            <a href="">Option 1</a>
                                                            <a href="">Option 2</a>
                                                            <a href="">Option 3</a>
                                                            <a href="">Option 4</a>
                                                            <a href="">Option 5</a>
                                                            <a href="">Option 6</a>
                                                            <a href="">Option 7</a>
                                                            <a href="">Option 8</a>
                                                            <a href="">Option 9</a>
                                                            <a href="">Option 2</a>
                                                            <a href="">Option 3</a>
                                                            <a href="">Option 4</a>
                                                            <a href="">Option 5</a>
                                                            <a href="">Option 6</a>
                                                            <a href="">Option 7</a>
                                                            <a href="">Option 8</a>
                                                            <a href="">Option 9</a>
                                                            <a href="">Option 10</a>
                                                        </div>
                                                    </div>
                                                    <button type="submit" class="submit-btn">Find Job</button>
                                                </form>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <div class="category-container">
                                    <div class="container">
                                        <div class="category-box">
                                            <div class="icon"><i class="fal fa-pencil-paintbrush"></i></div>
                                            <a href="#" class="name">Design, Art & Multimedia</a>
                                            <h4 class="count">198 Open Positions</h4>
                                        </div>

                                        <div class="category-box">
                                            <div class="icon"><i class="fal fa-book-reader"></i></div>
                                            <a href="#" class="name">Education Training</a>
                                            <h4 class="count">198 Open Positions</h4>
                                        </div>

                                        <div class="category-box">
                                            <div class="icon"><i class="fal fa-wallet"></i></div>
                                            <a href="#" class="name">Accounting/Finance</a>
                                            <h4 class="count">198 Open Positions</h4>
                                        </div>

                                        <div class="category-box">
                                            <div class="icon"><i class="fal fa-cloud-upload"></i></div>
                                            <a href="#" class="name">Human Resource</a>
                                            <h4 class="count">198 Open Positions</h4>
                                        </div>

                                        <div class="category-box">
                                            <div class="icon"><i class="fal fa-phone-rotary"></i></div>
                                            <a href="#" class="name">Telecommunication</a>
                                            <h4 class="count">198 Open Positions</h4>
                                        </div>

                                        <div class="category-box">
                                            <div class="icon"><i class="fal fa-burger-soda"></i></div>
                                            <a href="#" class="name">Restuarant/Food Service</a>
                                            <h4 class="count">198 Open Positions</h4>
                                        </div>

                                        <div class="category-box">
                                            <div class="icon"><i class="fal fa-user-hard-hat"></i></div>
                                            <a href="#" class="name">Construction/Facility</a>
                                            <h4 class="count">198 Open Positions</h4>
                                        </div>

                                        <div class="category-box">
                                            <div class="icon"><i class="fal fa-briefcase-medical"></i></div>
                                            <a href="#" class="name">Health</a>
                                            <h4 class="count">198 Open Positions</h4>
                                        </div>
                                    </div>
                                    <a href="#" class="category-btn">All Category</a>

                                </div>


                                <div class="city-container">

                                    <div class="container">

                                        <h1 class="title">Featured Cities</h1>
                                        <p class="sub-title">20+ Featured Cities Added Jobs</p>

                                        <div class="flex-box">

                                            <div class="box" style="background-image: url(../assets/images/surat.jpg);">
                                                <div class="inner-box">
                                                    <h3>Surat</h3>
                                                </div>
                                            </div>

                                            <div class="box"
                                                style="background-image: url(../assets/images/ahmedabad.jpg);">
                                                <div class="inner-box">
                                                    <h3>Ahmedabad</h3>
                                                </div>
                                            </div>

                                            <div class="box"
                                                style="background-image: url(../assets/images/mumbai.jpg);">
                                                <div class="inner-box">
                                                    <h3>Mumbai</h3>
                                                </div>
                                            </div>

                                            <div class="box" style="background-image: url(../assets/images/delhi.jpg);">
                                                <div class="inner-box">
                                                    <h3>Delhi</h3>
                                                </div>
                                            </div>

                                            <div class="box"
                                                style="background-image: url(../assets/images/Chennai-.jpg);">
                                                <div class="inner-box">
                                                    <h3>Chennai</h3>
                                                </div>
                                            </div>

                                            <div class="box"
                                                style="background-image: url(../assets/images/noaida.jpg);">
                                                <div class="inner-box">
                                                    <h3>Noida</h3>
                                                </div>
                                            </div>

                                            <div class="box"
                                                style="background-image: url(../assets/images/bangalore-dne.jpg);">
                                                <div class="inner-box">
                                                    <h3>Bangalore</h3>
                                                </div>
                                            </div>

                                            <div class="box" style="background-image: url(../assets/images/pune.jpg);">
                                                <div class="inner-box">
                                                    <h3>Pune</h3>
                                                </div>
                                            </div>

                                        </div>

                                    </div>

                                </div>

                                <div class="recent-jobs-container">

                                    <h1 class="title">Recent Jobs</h1>
                                    <h3 class="sub-title">20+ Recently Added Jobs</h3>

                                    <div class="job-list-container">

                                        <div class="job-box">

                                            <div class="col-1">
                                                <div class="img">
                                                    <img class="logo" src="../assets/images/logo1.jpg">
                                                </div>
                                                <div class="desc">
                                                    <a href="" class="job-title">Digital Marketing Executive</a>
                                                    <h4 class="row-2">
                                                        <a href="">
                                                            <span class="icon">
                                                                <i class="fas fa-map-marker-alt"></i>
                                                            </span>
                                                            Sacramento, California
                                                        </a>
                                                        <a href="">
                                                            <span class="icon">
                                                                <i class="far fa-bookmark"></i>
                                                            </span>
                                                            Full Time
                                                        </a>
                                                        <a href="">
                                                            <span class="icon">
                                                                <i class="far fa-clock"></i>
                                                            </span>
                                                            Published 11 months ago
                                                        </a>
                                                    </h4>

                                                </div>
                                                <a href="#" class="fav-btn">
                                                    <i class="fal fa-heart"></i>
                                                </a>

                                            </div>

                                            <div class="col-2">

                                                <h4 class="job-type">Full Time</h4>

                                                <h2 class="salary">$1200 -$2500</h2>

                                            </div>
                                        </div>

                                        <div class="job-box">

                                            <div class="col-1">
                                                <div class="img">
                                                    <img class="logo" src="../assets/images/logo1.jpg">
                                                </div>
                                                <div class="desc">
                                                    <a href="" class="job-title">Digital Marketing Executive</a>
                                                    <h4 class="row-2">
                                                        <a href="">
                                                            <span class="icon">
                                                                <i class="fas fa-map-marker-alt"></i>
                                                            </span>
                                                            Sacramento, California
                                                        </a>
                                                        <a href="">
                                                            <span class="icon">
                                                                <i class="far fa-bookmark"></i>
                                                            </span>
                                                            Full Time
                                                        </a>
                                                        <a href="">
                                                            <span class="icon">
                                                                <i class="far fa-clock"></i>
                                                            </span>
                                                            Published 11 months ago
                                                        </a>
                                                    </h4>

                                                </div>
                                                <a href="#" class="fav-btn">
                                                    <i class="fal fa-heart"></i>
                                                </a>

                                            </div>

                                            <div class="col-2">

                                                <h4 class="job-type">Full Time</h4>

                                                <h2 class="salary">$1200 -$2500</h2>

                                            </div>
                                        </div>

                                        <div class="job-box">

                                            <div class="col-1">
                                                <div class="img">
                                                    <img class="logo" src="../assets/images/logo1.jpg">
                                                </div>
                                                <div class="desc">
                                                    <a href="" class="job-title">Digital Marketing Executive</a>
                                                    <h4 class="row-2">
                                                        <a href="">
                                                            <span class="icon">
                                                                <i class="fas fa-map-marker-alt"></i>
                                                            </span>
                                                            Sacramento, California
                                                        </a>
                                                        <a href="">
                                                            <span class="icon">
                                                                <i class="far fa-bookmark"></i>
                                                            </span>
                                                            Full Time
                                                        </a>
                                                        <a href="">
                                                            <span class="icon">
                                                                <i class="far fa-clock"></i>
                                                            </span>
                                                            Published 11 months ago
                                                        </a>
                                                    </h4>

                                                </div>
                                                <a href="#" class="fav-btn">
                                                    <i class="fal fa-heart"></i>
                                                </a>

                                            </div>

                                            <div class="col-2">

                                                <h4 class="job-type">Full Time</h4>

                                                <h2 class="salary">$1200 -$2500</h2>

                                            </div>
                                        </div>

                                        <div class="job-box">

                                            <div class="col-1">
                                                <div class="img">
                                                    <img class="logo" src="../assets/images/logo1.jpg">
                                                </div>
                                                <div class="desc">
                                                    <a href="" class="job-title">Digital Marketing Executive</a>
                                                    <h4 class="row-2">
                                                        <a href="">
                                                            <span class="icon">
                                                                <i class="fas fa-map-marker-alt"></i>
                                                            </span>
                                                            Sacramento, California
                                                        </a>
                                                        <a href="">
                                                            <span class="icon">
                                                                <i class="far fa-bookmark"></i>
                                                            </span>
                                                            Full Time
                                                        </a>
                                                        <a href="">
                                                            <span class="icon">
                                                                <i class="far fa-clock"></i>
                                                            </span>
                                                            Published 11 months ago
                                                        </a>
                                                    </h4>

                                                </div>
                                                <a href="#" class="fav-btn">
                                                    <i class="fal fa-heart"></i>
                                                </a>

                                            </div>

                                            <div class="col-2">

                                                <h4 class="job-type">Full Time</h4>

                                                <h2 class="salary">$1200 -$2500</h2>

                                            </div>
                                        </div>

                                        <div class="job-box">

                                            <div class="col-1">
                                                <div class="img">
                                                    <img class="logo" src="../assets/images/logo1.jpg">
                                                </div>
                                                <div class="desc">
                                                    <a href="" class="job-title">Digital Marketing Executive</a>
                                                    <h4 class="row-2">
                                                        <a href="">
                                                            <span class="icon">
                                                                <i class="fas fa-map-marker-alt"></i>
                                                            </span>
                                                            Sacramento, California
                                                        </a>
                                                        <a href="">
                                                            <span class="icon">
                                                                <i class="far fa-bookmark"></i>
                                                            </span>
                                                            Full Time
                                                        </a>
                                                        <a href="">
                                                            <span class="icon">
                                                                <i class="far fa-clock"></i>
                                                            </span>
                                                            Published 11 months ago
                                                        </a>
                                                    </h4>

                                                </div>
                                                <a href="#" class="fav-btn">
                                                    <i class="fal fa-heart"></i>
                                                </a>

                                            </div>

                                            <div class="col-2">

                                                <h4 class="job-type">Full Time</h4>

                                                <h2 class="salary">$1200 -$2500</h2>

                                            </div>
                                        </div>

                                        <div class="job-box">

                                            <div class="col-1">
                                                <div class="img">
                                                    <img class="logo" src="../assets/images/logo1.jpg">
                                                </div>
                                                <div class="desc">
                                                    <a href="" class="job-title">Digital Marketing Executive</a>
                                                    <h4 class="row-2">
                                                        <a href="">
                                                            <span class="icon">
                                                                <i class="fas fa-map-marker-alt"></i>
                                                            </span>
                                                            Sacramento, California
                                                        </a>
                                                        <a href="">
                                                            <span class="icon">
                                                                <i class="far fa-bookmark"></i>
                                                            </span>
                                                            Full Time
                                                        </a>
                                                        <a href="">
                                                            <span class="icon">
                                                                <i class="far fa-clock"></i>
                                                            </span>
                                                            Published 11 months ago
                                                        </a>
                                                    </h4>

                                                </div>
                                                <a href="#" class="fav-btn">
                                                    <i class="fal fa-heart"></i>
                                                </a>

                                            </div>

                                            <div class="col-2">

                                                <h4 class="job-type">Full Time</h4>

                                                <h2 class="salary">$1200 -$2500</h2>

                                            </div>
                                        </div>
                                    </div>

                                </div>


                                <jsp:include page="../includes/footer.jsp" />


                                <script>

                                    $(document).ready(function () {

                                        $('.job-search-container .input-box .select-box').click(function () {
                                            $('.job-search-container .input-box .option').toggle();
                                        });

                                        $('.job-search-container .input-box .option a').click(function (e) {
                                            e.preventDefault();

                                            var option = $(this).text();

                                            $('.job-search-container .input-box .select-box .select').text(option);

                                            $('.job-search-container .input-box .option a').removeClass('selected');
                                            $(this).addClass('selected');

                                            $('.job-search-container .input-box .option').hide();

                                        })

                                        // outside click hide
                                        $(document).mouseup(function (e) {
                                            var container = $('.job-search-container .input-box .option');
                                            if (!container.is(e.target) && container.has(e.target).length === 0) {
                                                container.hide();
                                            }
                                        });

                                    });

                                </script>


                                <!--Database connection script-->
                                <!-- <%
            try { // create connection object of DatabaseConnection class Connection Connection
                Connection connection = DatabaseConnection.initializeDatabase();
                Statement stmt = connection.createStatement();
                if (!connection.isClosed()) {
                }
                connection.close();
            } catch (Exception e) {
                out.println(e);
            }
        %> -->

                            </body>
                            </html>