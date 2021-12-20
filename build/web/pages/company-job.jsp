<%@page contentType="text/html" pageEncoding="UTF-8" %>
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
            <jsp:param name="pageName" value="jobs" />
        </jsp:include>

        <jsp:include page="../includes/job-search-header.jsp">
            <jsp:param name="jobPageMenu" value="company-job" />
        </jsp:include>


        <div class="company-page-container">

            <div class="heading">
                <h2>BROWSE JOBS BY COMPANIES</h2>
            </div>

            <div class="company-list">

                <ul>
                    <li><a href="">Email Marketing</a></li>
                    <li><a href="">Philips Software Centre Jobs</a></li>
                    <li><a href="">Direct Jobs</a></li>
                    <li><a href="">Samsung Software Jobs</a></li>
                    <li><a href="">African Commodities DMC Jobs</a></li>
                    <li><a href="">Foton Motors Jobs</a></li>
                    <li><a href="">Email Marketing</a></li>
                    <li><a href="">Philips Software Centre Jobs</a></li>
                    <li><a href="">Direct Jobs</a></li>
                    <li><a href="">Samsung Software Jobs</a></li>
                    <li><a href="">African Commodities DMC Jobs</a></li>
                    <li><a href="">Foton Motors Jobs</a></li>
                    <li><a href="">Email Marketing</a></li>
                    <li><a href="">Philips Software Centre Jobs</a></li>
                    <li><a href="">Direct Jobs</a></li>
                    <li><a href="">Samsung Software Jobs</a></li>
                    <li><a href="">African Commodities DMC Jobs</a></li>
                    <li><a href="">Foton Motors Jobs</a></li>
                    <li><a href="">Email Marketing</a></li>
                    <li><a href="">Philips Software Centre Jobs</a></li>
                    <li><a href="">Direct Jobs</a></li>
                    <li><a href="">Samsung Software Jobs</a></li>
                    <li><a href="">African Commodities DMC Jobs</a></li>
                    <li><a href="">Foton Motors Jobs</a></li>
                    <li><a href="">Email Marketing</a></li>
                    <li><a href="">Philips Software Centre Jobs</a></li>
                    <li><a href="">Direct Jobs</a></li>
                    <li><a href="">Samsung Software Jobs</a></li>
                    <li><a href="">African Commodities DMC Jobs</a></li>
                    <li><a href="">Foton Motors Jobs</a></li>
                </ul>

            </div>

        </div>

        <jsp:include page="../includes/footer.jsp" />


    </body>
    </html>