<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="../css/style.css">
        <script src="../assets/FA5PRO-fa6/js/all.min.js"></script>
    </head>
    <body>


        <%
            response.setHeader("Cache-Control", "no-cache");
            response.setHeader("Cache-Control", "no-store");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires", 0);
            if (session.getAttribute("uid") != null) {
                response.sendRedirect("/JobPortal");
            }
        %>


        <div class="login-page-container">

            <form action="/JobPortal/loginReq" method="POST">

                <h1 class="title">Personal Information</h1>

                <p class="sub-title">Enter your e-mail address and your password.</p>

                <div class="input-filed">
                    <input type="email" name="email" placeholder="Enter Email" required />
                </div>

                <div class="input-filed">
                    <input type="password" name="password" placeholder="Enter Password" required />
                </div>

                <%
                    if (session.getAttribute("error") != null) {
                        out.println("<h5 class='error'>Error : "
                                + session.getAttribute("error") + "</h5>");
                    }
                %>


                <div class="btn">
                    <a href="" class="forgot-link">
                        <i class="fas fa-lock"></i> Forgot Password ?
                    </a>
                    <input type="submit" value="Login" class="login-btn" />
                </div>


            </form>

            <div class="divider"></div>

            <a class="signup-btn" href="signup">Create an account</a>

        </div>




    </body>
</html>