<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="d-flex align-items-center navbar-height">
    <form
            action="index.html"
            class="search-form mx-16pt pr-0 pl-16pt flex"
    >
        <input
                type="text"
                class="form-control pl-0"
                placeholder="Search"
        />
        <button class="btn" type="submit">
            <i class="material-icons">search</i>
        </button>
    </form>
</div>

<div
        class="d-flex flex-column flex-sm-row align-items-sm-center mb-24pt"
        style="white-space: nowrap"
>
    <small
            class="flex text-muted text-headings text-uppercase mr-3 mb-2 mb-sm-0"
    >Displaying 4 out of 10 courses</small
    >
    <div
            class="w-auto ml-sm-auto table d-flex align-items-center mb-2 mb-sm-0"
    >
        <div>
            <div class="d-flex">
                <div>
                    <select
                            id="expire_month"
                            class="form-control custom-select"
                            style="width: 140px"
                    >
                        <option value="1">January</option>
                        <option value="2">February</option>
                        <option value="3">March</option>
                        <option value="4">April</option>
                        <option value="5">May</option>
                        <option value="6">June</option>
                        <option value="7">July</option>
                        <option value="8">August</option>
                        <option value="9">September</option>
                        <option value="10">October</option>
                        <option value="11">November</option>
                        <option value="12">December</option>
                    </select>
                </div>
                <div class="ml-8pt">
                    <select
                            id="expire_year"
                            class="form-control custom-select"
                            style="width: 100px"
                    >
                        <option value="2018">2018</option>
                        <option value="2019">2019</option>
                        <option value="2020">2020</option>
                        <option value="2021">2021</option>
                        <option value="2022">2022</option>
                        <option value="2023">2023</option>
                    </select>
                </div>
            </div>
        </div>
    </div>

    <a
            href="#"
            data-target="#library-drawer"
            data-toggle="sidebar"
            class="btn btn-sm btn-white ml-sm-16pt"
    >
        <i class="material-icons icon--left">tune</i> Filters
    </a>
</div>
