<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>


        <!-- Redirecting To Home Page -->

        <% String redirectUrl="pages/home" ; response.sendRedirect(redirectUrl); %>

    </body>
    </html>