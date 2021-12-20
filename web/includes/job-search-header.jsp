<div class="search-header">

    <div class="container">

        <div class="box">
            <form class="inputs" method="post">
                <input type="text" placeholder="Job Title" name="jobName">
                <input type="text" placeholder="City or location" name="city">
                <button type="submit">Search</button>
            </form>

            <ul>
                <li><a class="${param.jobPageMenu == 'all-job' ? 'active' : ''}" href="all-jobs">All Jobs</a></li>
                <li><a class="${param.jobPageMenu == 'company-job' ? 'active' : ''}" href="company-job">Jobs By
                        Company</a></li>
                <li><a class="${param.jobPageMenu == 'category-job' ? 'active' : ''}" href=" category-job">Jobs By
                        Category</a></li>
                <li><a href="">Jobs By Location</a></li>
                <li><a href="">Jobs By Designation</a></li>
                <li><a href="">Jobs By Skill</a></li>
            </ul>

        </div>

    </div>

</div>