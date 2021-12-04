<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
        <link rel="stylesheet" href="../css/style.css">
        <script src="../assets/FA5PRO-fa6/js/all.min.js"></script>
    </head>
    <body>

        <jsp:include page="../includes/header.jsp" />

        <!-- <%
            response.setHeader("Cache-Control", "no-cache");
            response.setHeader("Cache-Control", "no-store");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires", 0);

            if (session.getAttribute("uid") != null) {
                response.sendRedirect("/JobPortal");
            }
        %> -->

        <div class="signup-page-container">


            <form action="/JobPortal/signUpServlet" method="post">

                <h1 class="title">Sign Up</h1>

                <p class="sub-title">Enter Your Personal Details :</p>

                <div class="input-filed">
                    <input type="text" placeholder="User Name" name="name" />
                </div>
                <div class="input-filed">
                    <input type="email" placeholder="Email Address" name="email" />
                </div>
                <div class="input-filed">
                    <input type="password" placeholder="Password" name="password" />
                </div>
                <div class="input-filed">
                    <input type="password" placeholder="Confirm Password" />
                </div>

                <% if (session.getAttribute("error") != null) {
                        out.println("<h5 class='error'>Error : "
                                + session.getAttribute("error") + "</h5>");
                    }
                %>

                <div class="btn">
                    <a href="login" class="forgot-link">
                        Already Have An Account !
                    </a>
                    <input type="submit" class="signup-submit" value="Sign Up" name="signup-btn" />
                </div>



            </form>

        </div>

    </body>
</html>