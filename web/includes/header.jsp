<div class="header">

    <div class="header-menu">
        <ul class="logo">
            <a href="">
                <h1>
                    <span>Clear</span><span>Career</span>
                </h1>
            </a>
        </ul>
        <ul class="menu">

            <li><a class="${param.pageName == 'home' ? 'active' : ''}" href="/JobPortal">Home</a></li>
            <li><a class="${param.pageName == 'jobs' ? 'active' : ''}" href="all-jobs">Jobs</a></li>
            <li><a href="">Recruiters</a></li>
            <li><a href="">About</a></li>
            <li><a href="">Contact</a></li>
        </ul>

        <% if (session.getAttribute("uid") == null) { %>
        <ul class="account">
            <li><a href="/JobPortal/pages/login">Login</a></li>
            <li><a href="/JobPortal/pages/signup">SignUp</a></li>
        </ul>
        <% } else { %>
        <ul class="account">
            <li><a href="/JobPortal/logout">Logout</a></li>
        </ul>
        <% }%>







    </div>


</div>