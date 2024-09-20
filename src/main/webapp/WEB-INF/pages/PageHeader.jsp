<%--
  Created by IntelliJ IDEA.
  User: 78431
  Date: 2023/9/1
  Time: 16:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<link rel="icon" href="/static/images/favicon.ico" type="image/x-icon">--%>
<link rel="stylesheet" href="/static/css/bootstrap.css">
<link rel="stylesheet" href="/static/css/style.css">
<link rel="stylesheet" href="/static/css/fonts.css">
<link rel="icon" href="/static/images/logotest.jpg" type="image/x-icon">
<header class="section page-header">
    <div class="rd-navbar-wrap">
        <nav class="rd-navbar rd-navbar-corporate" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed" data-md-layout="rd-navbar-fixed" data-md-device-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-static" data-lg-device-layout="rd-navbar-fixed" data-xl-layout="rd-navbar-static" data-xl-device-layout="rd-navbar-static" data-xxl-layout="rd-navbar-static" data-xxl-device-layout="rd-navbar-static" data-lg-stick-up-offset="46px" data-xl-stick-up-offset="46px" data-xxl-stick-up-offset="106px" data-lg-stick-up="true" data-xl-stick-up="true" data-xxl-stick-up="true">
            <div class="rd-navbar-collapse-toggle rd-navbar-fixed-element-1" data-rd-navbar-toggle=".rd-navbar-collapse">
                <span></span>
            </div>
            <!-- 上导航页 -->
            <div class="rd-navbar-aside-outer">
                <div class="rd-navbar-aside">
                    <!-- RD Navbar Panel-->
                    <div class="rd-navbar-panel">
                        <!-- RD Navbar Toggle-->
                        <button class="rd-navbar-toggle" data-rd-navbar-toggle=".rd-navbar-nav-wrap">
                            <span></span>
                        </button>
                        <!-- RD Navbar Brand-->
                        <div class="rd-navbar-brand">
                            <!--Brand-->
                            <a class="brand" href="#">
                                <img src="/static/images/logolong.jpg" alt="" width="225" height="18"/>
                            </a>
                        </div>
                    </div>
                    <div class="rd-navbar-aside-right rd-navbar-collapse">

                        <div style="margin: 10px;"></div>
                        <ul class="rd-navbar-corporate-contacts">
                            <li><div class="unit unit-spacing-xs">
                                <div class="unit-left"><span class="icon fa fa-clock-o"></span></div>
                                <div class="unit-body">
                                    <p>09:00<span>am</span> — 05:00<span>pm</span></p>
                                </div>
                            </div>
                            </li>
                            <li>
                                <div class="unit unit-spacing-xs">
                                    <div class="unit-left"><span class="icon fa fa-phone"></span></div>
                                    <div class="unit-body"><a class="link-phone" href="tel:#">+86-18229673933</a></div>
                                </div>
                            </li>
                        </ul>
                        <!-- nav按钮 -->
                        <!-- <a class="button button-md button-default-outline-2 button-ujarak" href="#">Get a Free Quote</a> -->
                    </div>
                </div>
            </div>
            <!-- 下导航页 -->
            <div class="rd-navbar-main-outer">
                <div class="rd-navbar-main">
                    <div class="rd-navbar-nav-wrap">
                        <form action="/Search" method="get">
                            <nav class="rd-navbar-search" style="display:inline-flex">
                                <input class="form-input" placeholder="title" required name="title" type="text" id="input"/>
                            </nav>
                            <button class="box-icon-classic-icon fl-bigmug-line-search74" style="border: 0;outline:none;background-color: transparent;" type="submit" ></button>
                        </form>
                        <!-- RD Navbar Nav-->
                        <ul class="rd-navbar-nav">
                            <li class="rd-nav-item"><a class="rd-nav-link" href="/Home">Home</a>
                            </li>
                            <li class="rd-nav-item"><a class="rd-nav-link" href="/Classics">Classics</a>
                            </li>
                            <li class="rd-nav-item"><a class="rd-nav-link" href="/Periodical">Periodical</a>
                            </li>
                            <li class="rd-nav-item"><a class="rd-nav-link" href="/Terminology">Terminology</a>
                            </li>
                            <li class="rd-nav-item"><a class="rd-nav-link" href="/About">About</a>
                            </li>
                            <li class="rd-nav-item"><a class="rd-nav-link" href="/Center">Center</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
    </div>
</header>
<script src="/static/js/axios-0.18.0.js"></script>
<script src="/static/js/core.min.js"></script>
<script src="/static/js/script.js"></script>