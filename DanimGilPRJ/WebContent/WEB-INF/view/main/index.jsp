<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="utf-8">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>메인화면</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image" sizes="16x16" href="../resource/image/favicon.png">
    <!-- Pignose Calender -->
    <link href="../resource/plugins/pg-calendar/css/pignose.calendar.min.css" rel="stylesheet">
    <!-- Chartist -->
    <link rel="stylesheet" href="../resource/plugins/chartist/css/chartist.min.css">
    <link rel="stylesheet" href="../resource/plugins/chartist-plugin-tooltips/css/chartist-plugin-tooltip.css">
    <!-- Custom Stylesheet -->
    <link href="../resource/css/style.css" rel="stylesheet">

</head>

<body>

    <!--*******************
        Preloader start
    ********************-->
    <div id="preloader">
        <div class="loader">
            <svg class="circular" viewBox="25 25 50 50">
                <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3" stroke-miterlimit="10" />
            </svg>
        </div>
    </div>
    <!--*******************
        Preloader end
    ********************-->

    
    <!--**********************************
        Main wrapper start
    ***********************************-->
    <div id="main-wrapper">

        <!--**********************************
            Nav header start
        ***********************************-->
        <div class="nav-header">
            <div class="brand-logo">
                <a href="/main/index.do">
                    <b class="logo-abbr"><img src="../resource/image/logo.png" alt=""> </b>
                    <span class="logo-compact"><img src="../resource/image/logo-compact.png" alt=""></span>
                    <span class="brand-title">
                       	<h3>소공서</h3>
                    </span>
                </a>
            </div>
        </div>
        <!--**********************************
            Nav header end
        ***********************************-->

        <!--**********************************
            Header start
        ***********************************-->
        <div class="header">    
            <div class="header-content clearfix">
                
                <div class="nav-control">
                    <div class="hamburger">
                        <span class="toggle-icon"><i class="icon-menu"></i></span>
                    </div>
                </div>
                <div class="header-left">
                    <div class="input-group icons">
                       <!--  <div class="input-group-prepend">
                            <span class="input-group-text bg-transparent border-0 pr-2 pr-sm-3" id="basic-addon1"><i class="mdi mdi-magnify"></i></span>
                        </div>
                         <input type="search" class="form-control" placeholder="Search" aria-label="Search Dashboard">
                        <div class="drop-down animated flipInX d-md-none">
                            <form action="#">
                                <input type="text" class="form-control" placeholder="Search">
                            </form>
                        </div>  -->
                    </div>
                </div>
                <div class="header-right">
                     <ul class="clearfix">
                        <!-- <li class="icons dropdown"><a href="javascript:void(0)" data-toggle="dropdown">
                                <i class="mdi mdi-email-outline"></i>
                                <span class="badge badge-pill gradient-1">3</span>
                            </a> 
                            <div class="drop-down animated fadeIn dropdown-menu">
                                <div class="dropdown-content-heading d-flex justify-content-between">
                                    <span class="">3 New Messages</span>  
                                    <a href="javascript:void()" class="d-inline-block">
                                        <span class="badge badge-pill gradient-1">3</span>
                                    </a>
                                </div>
                                <div class="dropdown-content-body">
                                    <ul>
                                        <li class="notification-unread">
                                            <a href="javascript:void()">
                                                <img class="float-left mr-3 avatar-img" src="../resource/image/avatar/1.jpg" alt="">
                                                <div class="notification-content">
                                                    <div class="notification-heading">Saiful Islam</div>
                                                    <div class="notification-timestamp">08 Hours ago</div>
                                                    <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="notification-unread">
                                            <a href="javascript:void()">
                                                <img class="float-left mr-3 avatar-img" src="../resource/image/avatar/2.jpg" alt="">
                                                <div class="notification-content">
                                                    <div class="notification-heading">Adam Smith</div>
                                                    <div class="notification-timestamp">08 Hours ago</div>
                                                    <div class="notification-text">Can you do me a favour?</div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void()">
                                                <img class="float-left mr-3 avatar-img" src="../resource/image/avatar/3.jpg" alt="">
                                                <div class="notification-content">
                                                    <div class="notification-heading">Barak Obama</div>
                                                    <div class="notification-timestamp">08 Hours ago</div>
                                                    <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void()">
                                                <img class="float-left mr-3 avatar-img" src="../resource/image/avatar/4.jpg" alt="">
                                                <div class="notification-content">
                                                    <div class="notification-heading">Hilari Clinton</div>
                                                    <div class="notification-timestamp">08 Hours ago</div>
                                                    <div class="notification-text">Hello</div>
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                    
                                </div>
                            </div>
                        </li> -->
                       <!--  <li class="icons dropdown"><a href="javascript:void(0)" data-toggle="dropdown">
                                <i class="mdi mdi-bell-outline"></i>
                                <span class="badge badge-pill gradient-2">3</span>
                            </a>
                            <div class="drop-down animated fadeIn dropdown-menu dropdown-notfication">
                                <div class="dropdown-content-heading d-flex justify-content-between">
                                    <span class="">2 New Notifications</span>  
                                    <a href="javascript:void()" class="d-inline-block">
                                        <span class="badge badge-pill gradient-2">5</span>
                                    </a>
                                </div>
                                <div class="dropdown-content-body">
                                    <ul>
                                        <li>
                                            <a href="javascript:void()">
                                                <span class="mr-3 avatar-icon bg-success-lighten-2"><i class="icon-present"></i></span>
                                                <div class="notification-content">
                                                    <h6 class="notification-heading">Events near you</h6>
                                                    <span class="notification-text">Within next 5 days</span> 
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void()">
                                                <span class="mr-3 avatar-icon bg-danger-lighten-2"><i class="icon-present"></i></span>
                                                <div class="notification-content">
                                                    <h6 class="notification-heading">Event Started</h6>
                                                    <span class="notification-text">One hour ago</span> 
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void()">
                                                <span class="mr-3 avatar-icon bg-success-lighten-2"><i class="icon-present"></i></span>
                                                <div class="notification-content">
                                                    <h6 class="notification-heading">Event Ended Successfully</h6>
                                                    <span class="notification-text">One hour ago</span>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void()">
                                                <span class="mr-3 avatar-icon bg-danger-lighten-2"><i class="icon-present"></i></span>
                                                <div class="notification-content">
                                                    <h6 class="notification-heading">Events to Join</h6>
                                                    <span class="notification-text">After two days</span> 
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                    
                                </div>
                            </div>
                        </li> -->
                      <!--   <li class="icons dropdown d-none d-md-flex">
                            <a href="javascript:void(0)" class="log-user"  data-toggle="dropdown">
                                <span>English</span>  <i class="fa fa-angle-down f-s-14" aria-hidden="true"></i>
                            </a>
                            <div class="drop-down dropdown-language animated fadeIn  dropdown-menu">
                                <div class="dropdown-content-body">
                                    <ul>
                                        <li><a href="javascript:void()">한국어</a></li>
                                        <li><a href="javascript:void()">English</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li> -->
                        <li class="icons dropdown">
                            <div class="user-img c-pointer position-relative"   data-toggle="dropdown">
                                <span class="activity active"></span>
                                <img src="../resource/image/user/1.png" height="40" width="40" alt="">
                            </div>
                            <div class="drop-down dropdown-profile animated fadeIn dropdown-menu">
                                <div class="dropdown-content-body">
                                    <ul>
                                        <li>
                                            <a href="/main/UserEdit.do"><i class="icon-user"></i> <span>Profile</span></a>
                                        </li>
                                       <!--  <li>
                                            <a href="javascript:void()">
                                                <i class="icon-envelope-open"></i> <span>Inbox</span> <div class="badge gradient-3 badge-pill gradient-1">3</div>
                                            </a>
                                        </li>
                                        
                                        <hr class="my-2">
                                        <li>
                                            <a href="page-lock.html"><i class="icon-lock"></i> <span>Lock Screen</span></a>
                                        </li> -->
                                        <li><a href="page-login.html"><i class="icon-key"></i> <span>Logout</span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!--**********************************
            Header end ti-comment-alt
        ***********************************-->

        <!--**********************************
            Sidebar start
        ***********************************-->
        <div class="nk-sidebar">           
            <div class="nk-nav-scroll">
                <ul class="metismenu" id="menu">
                    <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-speedometer menu-icon"></i><span class="nav-text">가게현황</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="/main/currentsit.do">가게현황관리</a></li>
                            <!-- <li><a href="./index-2.html">Home 2</a></li> -->
                        </ul>
                    </li>
                    <li class="mega-menu mega-menu-sm">
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-globe-alt menu-icon"></i><span class="nav-text">매출현황</span>
                        </a>
                        <ul aria-expanded="false">
                        	<li><a href="/main/salesStatus.do">일일매출상세보기</a></li>
                            <li><a href="/main/salesStatus.do">월별매출상세보기</a></li>
                            <li><a href="/main/salesStatus.do">연도별매출상세보기</a></li>
                        </ul>
                    </li>
                    <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-envelope menu-icon"></i> <span class="nav-text">급여내역</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="/main/manage.do">직원급여내역</a></li>
                            <!-- <li><a href="./email-read.html">Read</a></li>
                            <li><a href="./email-compose.html">Compose</a></li> -->
                        </ul>
                    </li>
                    <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-screen-tablet menu-icon"></i><span class="nav-text">인원관리</span>
                        </a>
                        <ul aria-expanded="false">
                           <li><a href="/main/detail.do">직원상세정보</a></li>
                        </ul>
                    </li>
                    <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-graph menu-icon"></i> <span class="nav-text">스케쥴</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="/main/calender.do">캘린더</a></li>
                            <!-- <li><a href="#">스케쥴관리</a></li> -->
                            <!-- <li><a href="#">Chart../resource/js</a></li>
                            <li><a href="#">Chartist</a></li>
                            <li><a href="#">Sparkline</a></li>
                            <li><a href="#">Peity</a></li> -->
                        </ul>
                    </li>
                   <!--  <li class="nav-label">UI Components</li>
                    <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-grid menu-icon"></i><span class="nav-text">UI Components</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="#">Accordion</a></li>
                            <li><a href="#">Accordion</a></li>
                            <li><a href="#">Accordion</a></li>
                            <li><a href="#">Accordion</a></li>
                            <li><a href="#">Accordion</a></li>
                            <li><a href="#">Accordion</a></li>
                            <li><a href="#">Accordion</a></li>
                       </ul>
                    </li> -->
                    <!-- <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-layers menu-icon"></i><span class="nav-text">Components</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="#">Nestedable</a></li>
                            <li><a href="#">Nestedable</a></li>
                            <li><a href="#">Nestedable</a></li>
                            <li><a href="#">Nestedable</a></li>
                        </ul>
                    </li> -->
                   <!--  <li>
                        <a href="widgets.html" aria-expanded="false">
                            <i class="icon-badge menu-icon"></i><span class="nav-text">Widget</span>
                        </a>
                    </li>
                    <li class="nav-label">Forms</li>
                    <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-note menu-icon"></i><span class="nav-text">Forms</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="#">Basic Form</a></li>
                            <li><a href="#">Basic Form</a></li>
                            <li><a href="#">Basic Form</a></li>
                            <li><a href="#">Basic Form</a></li>
                            <li><a href="#">Basic Form</a></li>
                        </ul>
                    </li> -->
                   <!--  <li class="nav-label">Table</li>
                    <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-menu menu-icon"></i><span class="nav-text">Table</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="./table-basic.html" aria-expanded="false">Basic Table</a></li>
                            <li><a href="./table-datatable.html" aria-expanded="false">Data Table</a></li>
                        </ul>
                    </li> -->
                   <!--  <li class="nav-label">Pages</li>
                    <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-notebook menu-icon"></i><span class="nav-text">Pages</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="#">Login</a></li>
                            <li><a href="#">Login</a></li>
                            <li><a href="#">Login</a></li>
                            <li><a href="#">Login</a></li>
                            <li><a class="has-arrow" href="javascript:void()" aria-expanded="false">Error</a>
                                <ul aria-expanded="false">
                                    <li><a href="#">Error 404</a></li>
                                    <li><a href="#">Error 404</a></li>
                                    <li><a href="#">Error 404</a></li>
                                    <li><a href="#">Error 404</a></li>
                                    <li><a href="#">Error 404</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li> -->
                </ul>
            </div>
        </div>
        <!--**********************************
            Sidebar end
        ***********************************-->

        <!--**********************************
            Content body start
        ***********************************-->
        <div class="content-body">

            <div class="container-fluid mt-3">
                <div class="row">
                    <div class="col-lg-3 col-sm-6">
                        <div class="card gradient-1">
                            <div class="card-body">
                                <h3 class="card-title text-white">월별매출</h3>
                                <div class="d-inline-block">
                                    <h2 class="text-white">23,400,000</h2>
                                    <p class="text-white mb-0">21년 06월 01일</p>
                                </div>
                                <span class="float-right display-5 opacity-5"><i class="fa fa-shopping-cart"></i></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="card gradient-2">
                            <div class="card-body">
                                <h3 class="card-title text-white">년도별매출</h3>
                                <div class="d-inline-block">
                                    <h2 class="text-white">$ 123,130,000</h2>
                                    <p class="text-white mb-0">21년 06월 01일</p>
                                </div>
                                <span class="float-right display-5 opacity-5"><i class="fa fa-money"></i></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="card gradient-3">
                            <div class="card-body">
                                <h3 class="card-title text-white">순이익</h3>
                                <div class="d-inline-block">
                                    <h2 class="text-white">94,000,000</h2>
                                    <p class="text-white mb-0">21년 06월 01일</p>
                                </div>
                                <span class="float-right display-5 opacity-5"><i class="fa fa-users"></i></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="card gradient-4">
                            <div class="card-body">
                                <h3 class="card-title text-white">금일 출력현황n</h3>
                                <div class="d-inline-block">
                                    <h2 class="text-white">5명</h2>
                                    <p class="text-white mb-0">21년 06월 01일</p>
                                </div>
                                <span class="float-right display-5 opacity-5"><i class="fa fa-heart"></i></span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body pb-0 d-flex justify-content-between">
                                        <div>
                                            <h4 class="mb-1">매출 현황</h4>
                                            <p>Today's Percerceived Status</p>
                                            <h3 class="m-0">1명</h3>
                                        </div>
                                        <div>
                                            <ul>
                                                <li class="d-inline-block mr-3"><a class="text-dark" href="#">Day</a></li>
                                                <li class="d-inline-block mr-3"><a class="text-dark" href="#">Week</a></li>
                                                <li class="d-inline-block"><a class="text-dark" href="#">Month</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="chart-wrapper">
                                        <canvas id="chart_widget_2"></canvas>
                                    </div>
                                    <div class="card-body">
                                        <div class="d-flex justify-content-between">
                                            <div class="w-100 mr-2">
                                                <h6>Pixel 2</h6>
                                                <div class="progress" style="height: 6px">
                                                    <div class="progress-bar bg-danger" style="width: 40%"></div>
                                                </div>
                                            </div>
                                            <div class="ml-2 w-100">
                                                <h6>iPhone X</h6>
                                                <div class="progress" style="height: 6px">
                                                    <div class="progress-bar bg-primary" style="width: 80%"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                

                <!-- <div class="row">
                        <div class="col-lg-6 col-md-12">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">Order Summary</h4>
                                    <div id="morris-bar-chart"></div>
                                </div>
                            </div>
                            
                        </div>    
                        <div class="col-lg-3 col-md-6">
                            <div class="card card-widget">
                                <div class="card-body">
                                    <h5 class="text-muted"> </h5>
                                    <h2 class="mt-4">5680</h2>
                                    <span>Total Revenue</span>
                                    <div class="mt-4">
                                        <h4>30</h4>
                                        <h6>Online Order <span class="pull-right">30%</span></h6>
                                        <div class="progress mb-3" style="height: 7px">
                                            <div class="progress-bar bg-primary" style="width: 30%;" role="progressbar"><span class="sr-only">30% Order</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mt-4">
                                        <h4>50</h4>
                                        <h6 class="m-t-10 text-muted">Offline Order <span class="pull-right">50%</span></h6>
                                        <div class="progress mb-3" style="height: 7px">
                                            <div class="progress-bar bg-success" style="width: 50%;" role="progressbar"><span class="sr-only">50% Order</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mt-4">
                                        <h4>20</h4>
                                        <h6 class="m-t-10 text-muted">Cash On Develery <span class="pull-right">20%</span></h6>
                                        <div class="progress mb-3" style="height: 7px">
                                            <div class="progress-bar bg-warning" style="width: 20%;" role="progressbar"><span class="sr-only">20% Order</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="card">
                                <div class="card-body px-0">
                                    <h4 class="card-title px-4 mb-3">Todo</h4>
                                    <div class="todo-list">
                                        <div class="tdl-holder">
                                            <div class="tdl-content">
                                                <ul id="todo_list">
                                                    <li><label><input type="checkbox"><i></i><span>Get up</span><a href='#' class="ti-trash"></a></label></li>
                                                    <li><label><input type="checkbox" checked><i></i><span>Stand up</span><a href='#' class="ti-trash"></a></label></li>
                                                    <li><label><input type="checkbox"><i></i><span>Don't give up the fight.</span><a href='#' class="ti-trash"></a></label></li>
                                                    <li><label><input type="checkbox" checked><i></i><span>Do something else</span><a href='#' class="ti-trash"></a></label></li>
                                                </ul>
                                            </div>
                                            <div class="px-4">
                                                <input type="text" class="tdl-new form-control" placeholder="Write new item and hit 'Enter'...">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> -->

                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="active-member">
                                    <div class="table-responsive">
                                        <table class="table table-xs mb-0">
                                        <h4>가게 현황</h4>
                                            <thead>
                                                <tr>
                                                    <th>등록번호</th>
                                                    <th>이름</th>
                                                    <th>직급</th>
                                                    <th>시급</th>
                                                    <th>출근시간</th>
                                                    <th>퇴근시간</th>
                                                    <th>일일급여</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>2120110015</td>
                                                    <td>임수상</td>
                                                    <td>
                                                        <span>매니저</span>
                                                    </td>
                                                    <td>
                                                       <!--  <div>
                                                            <div class="progress" style="height: 6px">
                                                                <div class="progress-bar bg-success" style="width: 50%"></div>
                                                            </div>
                                                        </div> -->
                                                        <span>10,000원</span>
                                                    </td>
                                                    <td><!-- <i class="fa fa-circle-o text-success  mr-2"></i> Paid -->
                                                    	<span> 10 : 00</span>
                                                    </td>
                                                    <td>
                                                        <span> 13 : 00 </span>
                                                    </td>
                                                    <td>
                                                        <span> 40,000원 </span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>2120110004</td>
                                                    <td>김범중</td>
                                                    <td><span>알바</span></td>
                                                    <td>
                                                        <!-- <div>
                                                            <div class="progress" style="height: 6px">
                                                                <div class="progress-bar bg-success" style="width: 50%"></div>
                                                            </div>
                                                        </div> -->
                                                        <span>8,720원</span>
                                                    </td>
                                                    <td><!-- <i class="fa fa-circle-o text-success  mr-2"></i> Paid -->
                                                    	<span>10 : 00</span>
                                                    </td>
                                                     <td>
                                                        <span> 13 : 00 </span>
                                                    </td>
                                                    <td>
                                                        <span> 34,880원 </span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>2120110056</td>
                                                    <td>김용우</td>
                                                    <td><span>알바</span></td>
                                                    <td>
                                                        <!-- <div>
                                                            <div class="progress" style="height: 6px">
                                                                <div class="progress-bar bg-warning" style="width: 50%"></div>
                                                            </div>
                                                        </div> -->
                                                       <span>8,720원</span>
                                                    </td>
                                                    <td><!-- <i class="fa fa-circle-o text-success  mr-2"></i> Paid -->
                                                    	<span>13 : 00</span>
                                                    </td>
                                                     <td>
                                                        <span>17 : 00 </span>
                                                    </td>
                                                    <td>
                                                        <span> 34,880원 </span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>212010000</td>
                                                    <td>이강희</td>
                                                    <td><span>알바</span></td>
                                                    <td>
                                                        <!-- <div>
                                                            <div class="progress" style="height: 6px">
                                                                <div class="progress-bar bg-success" style="width: 50%"></div>
                                                            </div>
                                                        </div> -->
                                                        <span>8,720원</span>
                                                    </td>
                                                     <td><!-- <i class="fa fa-circle-o text-success  mr-2"></i> Paid -->
                                                    	<span>13 : 00</span>
                                                    </td>
                                                     <td>
                                                        <span> 17 : 00 </span>
                                                    </td>
                                                    <td>
                                                        <span> 34,880원 </span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>2120110078</td>
                                                    <td>김하윤</td>
                                                    <td><span>알바</span></td>
                                                    <td>
                                                        <!-- <div>
                                                            <div class="progress" style="height: 6px">
                                                                <div class="progress-bar bg-success" style="width: 50%"></div>
                                                            </div>
                                                        </div> -->
                                                        <span>8,720원</span>
                                                    </td>
                                                    <td><!-- <i class="fa fa-circle-o text-success  mr-2"></i> Paid -->
                                                    	<span>17 : 00</span>
                                                    </td>
                                                     <td>
                                                        <span> 21 : 00 </span>
                                                    </td>
                                                    <td>
                                                        <span> 34,880원 </span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>2120110055</td>
                                                    <td>석경민</td>
                                                    <td><span>알바</span></td>
                                                    <td>
                                                        <!-- <div>
                                                            <div class="progress" style="height: 6px">
                                                                <div class="progress-bar bg-warning" style="width: 50%"></div>
                                                            </div>
                                                        </div> -->
                                                       <span>8,720원</span>
                                                    </td>
                                                     <td><!-- <i class="fa fa-circle-o text-success  mr-2"></i> Paid -->
                                                    	<span>17 : 00</span>
                                                    </td>
                                                     <td>
                                                        <span> 21 : 00 </span>
                                                    </td>
                                                    <td>
                                                        <span> 34,880원 </span>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>                        
                    </div>
                </div>

                <!-- <div class="row">
                    <div class="col-xl-3 col-lg-6 col-sm-6 col-xxl-6">

                        <div class="card">
                            <div class="chart-wrapper mb-4">
                                <div class="px-4 pt-4 d-flex justify-content-between">
                                    <div>
                                        <h4>Sales Activities</h4>
                                        <p>Last 6 Month</p>
                                    </div>
                                    <div>
                                        <span><i class="fa fa-caret-up text-success"></i></span>
                                        <h4 class="d-inline-block text-success">720</h4>
                                        <p class=" text-danger">+120.5(5.0%)</p>
                                    </div>
                                </div>
                                <div>
                                        <canvas id="chart_widget_3"></canvas>
                                </div>
                            </div>
                            <div class="card-body border-top pt-4">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <ul>
                                            <li>5% Negative Feedback</li>
                                            <li>95% Positive Feedback</li>
                                        </ul>
                                        <div>
                                            <h5>Customer Feedback</h5>
                                            <h3>385749</h3>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div id="chart_widget_3_1"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-6 col-sm-6 col-xxl-6">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Activity</h4>
                                <div id="activity">
                                    <div class="media border-bottom-1 pt-3 pb-3">
                                        <img width="35" src="../resource/image/avatar/1.jpg" class="mr-3 rounded-circle">
                                        <div class="media-body">
                                            <h5>Received New Order</h5>
                                            <p class="mb-0">I shared this on my fb wall a few months back,</p>
                                        </div><span class="text-muted ">April 24, 2018</span>
                                    </div>
                                    <div class="media border-bottom-1 pt-3 pb-3">
                                        <img width="35" src="../resource/image/avatar/2.jpg" class="mr-3 rounded-circle">
                                        <div class="media-body">
                                            <h5>iPhone develered</h5>
                                            <p class="mb-0">I shared this on my fb wall a few months back,</p>
                                        </div><span class="text-muted ">April 24, 2018</span>
                                    </div>
                                    <div class="media border-bottom-1 pt-3 pb-3">
                                        <img width="35" src="../resource/image/avatar/2.jpg" class="mr-3 rounded-circle">
                                        <div class="media-body">
                                            <h5>3 Order Pending</h5>
                                            <p class="mb-0">I shared this on my fb wall a few months back,</p>
                                        </div><span class="text-muted ">April 24, 2018</span>
                                    </div>
                                    <div class="media border-bottom-1 pt-3 pb-3">
                                        <img width="35" src="../resource/image/avatar/2.jpg" class="mr-3 rounded-circle">
                                        <div class="media-body">
                                            <h5>Join new Manager</h5>
                                            <p class="mb-0">I shared this on my fb wall a few months back,</p>
                                        </div><span class="text-muted ">April 24, 2018</span>
                                    </div>
                                    <div class="media border-bottom-1 pt-3 pb-3">
                                        <img width="35" src="../resource/image/avatar/2.jpg" class="mr-3 rounded-circle">
                                        <div class="media-body">
                                            <h5>Branch open 5 min Late</h5>
                                            <p class="mb-0">I shared this on my fb wall a few months back,</p>
                                        </div><span class="text-muted ">April 24, 2018</span>
                                    </div>
                                    <div class="media border-bottom-1 pt-3 pb-3">
                                        <img width="35" src="../resource/image/avatar/2.jpg" class="mr-3 rounded-circle">
                                        <div class="media-body">
                                            <h5>New support ticket received</h5>
                                            <p class="mb-0">I shared this on my fb wall a few months back,</p>
                                        </div><span class="text-muted ">April 24, 2018</span>
                                    </div>
                                    <div class="media pt-3 pb-3">
                                        <img width="35" src="../resource/image/avatar/3.jpg" class="mr-3 rounded-circle">
                                        <div class="media-body">
                                            <h5>Facebook Post 30 Comments</h5>
                                            <p class="mb-0">I shared this on my fb wall a few months back,</p>
                                        </div><span class="text-muted ">April 24, 2018</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-12 col-sm-12 col-xxl-12">
                        <div class="card">
                            <div class="card-body">
                                    <h4 class="card-title mb-0">Store Location</h4>
                                <div id="world-map" style="height: 470px;"></div>
                            </div>        
                        </div>
                    </div>
                </div> -->

                

                <!-- <div class="row">
                        <div class="col-lg-3 col-sm-6">
                            <div class="card">
                                <div class="social-graph-wrapper widget-facebook">
                                    <span class="s-icon"><i class="fa fa-facebook"></i></span>
                                </div>
                                <div class="row">
                                    <div class="col-6 border-right">
                                        <div class="pt-3 pb-3 pl-0 pr-0 text-center">
                                            <h4 class="m-1">89k</h4>
                                            <p class="m-0">Friends</p>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="pt-3 pb-3 pl-0 pr-0 text-center">
                                            <h4 class="m-1">119k</h4>
                                            <p class="m-0">Followers</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="card">
                                <div class="social-graph-wrapper widget-linkedin">
                                    <span class="s-icon"><i class="fa fa-linkedin"></i></span>
                                </div>
                                <div class="row">
                                    <div class="col-6 border-right">
                                        <div class="pt-3 pb-3 pl-0 pr-0 text-center">
                                            <h4 class="m-1">89k</h4>
                                            <p class="m-0">Friends</p>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="pt-3 pb-3 pl-0 pr-0 text-center">
                                            <h4 class="m-1">119k</h4>
                                            <p class="m-0">Followers</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="card">
                                <div class="social-graph-wrapper widget-googleplus">
                                    <span class="s-icon"><i class="fa fa-google-plus"></i></span>
                                </div>
                                <div class="row">
                                    <div class="col-6 border-right">
                                        <div class="pt-3 pb-3 pl-0 pr-0 text-center">
                                            <h4 class="m-1">89k</h4>
                                            <p class="m-0">Friends</p>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="pt-3 pb-3 pl-0 pr-0 text-center">
                                            <h4 class="m-1">119k</h4>
                                            <p class="m-0">Followers</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <div class="card">
                                <div class="social-graph-wrapper widget-twitter">
                                    <span class="s-icon"><i class="fa fa-twitter"></i></span>
                                </div>
                                <div class="row">
                                    <div class="col-6 border-right">
                                        <div class="pt-3 pb-3 pl-0 pr-0 text-center">
                                            <h4 class="m-1">89k</h4>
                                            <p class="m-0">Friends</p>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="pt-3 pb-3 pl-0 pr-0 text-center">
                                            <h4 class="m-1">119k</h4>
                                            <p class="m-0">Followers</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> -->
            </div>
            <!-- #/ container -->
        </div>
        <!--**********************************
            Content body end
        ***********************************-->
        
        
        <!--**********************************
            Footer start
        ***********************************-->
        <div class="footer">
            <div class="copyright">
                <p>Copyright &copy; Designed & Developed by <a href="https://themeforest.net/user/quixlab">Quixlab</a> 2018</p>
            </div>
        </div>
        <!--**********************************
            Footer end
        ***********************************-->
    </div>
    <!--**********************************
        Main wrapper end
    ***********************************-->

    <!--**********************************
        Scripts
    ***********************************-->
    <script src="../resource/plugins/common/common.min.js"></script>
    <script src="../resource/js/custom.min.js"></script>
    <script src="../resource/js/settings.js"></script>
    <script src="../resource/js/gleek.js"></script>
    <script src="../resource/js/styleSwitcher.js"></script>

    <!-- Chart../resource/js -->
    <script src="../resource/plugins/chart.js/Chart.bundle.min.js"></script>
    <script src="../resource/plugins/circle-progress/circle-progress.min.js"></script>
    <script src="../resource/plugins/d3v3/index.js"></script>
    <script src="../resource/plugins/topojson/topojson.min.js"></script>
    <script src="../resource/plugins/datamaps/datamaps.world.min.js"></script>
    <script src="../resource/plugins/raphael/raphael.min.js"></script>
    <script src="../resource/plugins/morris/morris.min.js"></script>
    <script src="../resource/plugins/moment/moment.min.js"></script>
    <script src="../resource/plugins/pg-calendar/js/pignose.calendar.min.js"></script>
    <script src="../resource/plugins/chartist/js/chartist.min.js"></script>
    <script src="../resource/plugins/chartist-plugin-tooltips/js/chartist-plugin-tooltip.min.js"></script>

    <script src="../resource/js/dashboard/dashboard-1.js"></script>

</body>

</html>