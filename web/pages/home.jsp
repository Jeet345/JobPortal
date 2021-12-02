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

        <jsp:include page="../includes/header.jsp" />


        <div class="job-search-container">
            <div class="inner-box">
                <div class="search-box">
                    <h4 class="title">Find Jobs, Employment & Career Opportunites</h4>
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
        <%            try {
                //              create connection object of DatabaseConnection class Connection

                Connection connection = DatabaseConnection.initializeDatabase();
                Statement stmt = connection.createStatement();
                if (!connection.isClosed()) {
                }
                connection.close();
            } catch (Exception e) {
                out.println(e);
            }
        %>

    </body>
</html>