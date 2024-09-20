<%--
  Created by IntelliJ IDEA.
  User: 78431
  Date: 2024/2/19
  Time: 17:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <title>Contact Us</title>
    <link rel="icon" href="/static/images/logotest.jpg" type="image/x-icon">
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <style>.ie-panel{display: none;background: #212121;padding: 10px 0;box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3);clear: both;text-align:center;position: relative;z-index: 1;} html.ie-10 .ie-panel, html.lt-ie-10 .ie-panel {display: block;}</style>
</head>
<body>
<div class="ie-panel"><a href="http://windows.microsoft.com/en-US/internet-explorer/"><img src="/static/images/ie8-panel/warning_bar_0000_us.jpg" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."></a></div>

<div class="page">
    <%--      <!-- Page Header--><a class="banner banner-top" href="https://www.templatemonster.com/intense-multipurpose-html-template.html" target="_blank"><img src="images/intense_02.jpg" alt=""/></a>--%>
    <%@include file="../pages/PageHeader.jsp"%>

    <!-- Why choose us-->
    <section class="section section-sm section-first bg-default text-md-left">
        <div class="container">
            <div class="row row-50 justify-content-center align-items-xl-center">
                <div class="col-md-10 col-lg-5 col-xl-6"><img src="/static/images/logo.jpg" alt="" width="519" height="564"/>
                </div>
                <div class="col-md-10 col-lg-7 col-xl-6">
                    <h1 class="text-spacing-25 font-weight-normal title-opacity-9">What can we do</h1>
                    <!-- Bootstrap tabs-->
                    <div class="tabs-custom tabs-horizontal tabs-line" id="tabs-4">
                        <!-- Nav tabs-->
                        <ul class="nav nav-tabs">
                            <li class="nav-item" role="presentation"><a class="nav-link active" href="#tabs-4-1" data-toggle="tab">Experience</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link" href="#tabs-4-2" data-toggle="tab">Skills</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link" href="#tabs-4-3" data-toggle="tab">Statement</a></li>
                        </ul>
                        <!-- Tab panes-->
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="tabs-4-1">
                                <p>We collect and organize a variety of excellent English translation ancient books, aiming to promote Chinese traditional culture, let the world understand the colorful Chinese culture, and experience the charm of ancient Chinese and Chinese dialects</p>
                                <!-- Linear progress bar-->
                                <article class="progress-linear progress-secondary">
                                    <div class="progress-header">
                                        <p>Classics</p>
                                    </div>
                                    <div class="progress-bar-linear-wrap">
                                        <div class="progress-bar-linear" data-gradient=""><span class="progress-value">46%</span><span class="progress-marker"></span></div>
                                    </div>
                                </article>
                                <!-- Linear progress bar-->
                                <article class="progress-linear progress-orange">
                                    <div class="progress-header">
                                        <p>Periodical</p>
                                    </div>
                                    <div class="progress-bar-linear-wrap">
                                        <div class="progress-bar-linear" data-gradient=""><span class="progress-value">38%</span><span class="progress-marker"></span></div>
                                    </div>
                                </article>
                                <!-- Linear progress bar-->
                                <article class="progress-linear">
                                    <div class="progress-header">
                                        <p>Sayings</p>
                                    </div>
                                    <div class="progress-bar-linear-wrap">
                                        <div class="progress-bar-linear" data-gradient=""><span class="progress-value">16%</span><span class="progress-marker"></span></div>
                                    </div>
                                </article>
                            </div>
                            <div class="tab-pane fade" id="tabs-4-2">
                                <div class="row row-40 justify-content-center text-center inset-top-10">
                                    <div class="col-sm-4">
                                        <!-- Circle Progress Bar-->
                                        <div class="progress-bar-circle" data-value="0.46" data-gradient="#01b3a7" data-empty-fill="transparent" data-size="150" data-thickness="12" data-reverse="true"><span></span></div>
                                        <p class="progress-bar-circle-title">Classics</p>
                                    </div>
                                    <div class="col-sm-4">
                                        <!-- Circle Progress Bar-->
                                        <div class="progress-bar-circle" data-value="0.38" data-gradient="#01b3a7" data-empty-fill="transparent" data-size="150" data-thickness="12" data-reverse="true"><span></span></div>
                                        <p class="progress-bar-circle-title">Periodical</p>
                                    </div>
                                    <div class="col-sm-4">
                                        <!-- Circle Progress Bar-->
                                        <div class="progress-bar-circle" data-value="0.16" data-gradient="#01b3a7" data-empty-fill="transparent" data-size="150" data-thickness="12" data-reverse="true"><span></span></div>
                                        <p class="progress-bar-circle-title">Sayings</p>
                                    </div>
                                </div>
                                <div class="group-md group-middle"><a class="button button-width-xl-230 button-primary button-pipaluk" href="javascript:void(0)" onclick="document.getElementById('one').scrollIntoView();">Get in touch</a><a class="button button-black-outline button-width-xl-230" href="/Home">Read more</a></div>
                            </div>
                            <div class="tab-pane fade" id="tabs-4-3">
                                <p></p>
                                <div class="text-center text-sm-left offset-top-30 tab-height">
                                    <p style="color: red">If you believe that our actions have violated your privacy or legitimate rights and interests, please contact us in time</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <%--  数字--%>
    <section class="section section-fluid bg-default">
        <div class="parallax-container" data-parallax-img="/static/images/bgimages/books-1163695_1280.jpg">
            <div class="parallax-content section-xl context-dark bg-overlay-26">
                <div class="container">
                    <div class="row row-50 justify-content-center border-classic">
                        <div class="col-sm-6 col-md-5 col-lg-3">
                            <div class="counter-classic">
                                <div class="counter-classic-number"><span class="counter">56</span>
                                </div>
                                <h5 class="counter-classic-title">classics</h5>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-5 col-lg-3">
                            <div class="counter-classic">
                                <div class="counter-classic-number"><span class="counter">26</span>
                                </div>
                                <h5 class="counter-classic-title">periodical</h5>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-5 col-lg-3">
                            <div class="counter-classic">
                                <div class="counter-classic-number"><span class="counter">2</span><span class="symbol">k</span>
                                </div>
                                <h5 class="counter-classic-title">Saying</h5>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-5 col-lg-3">
                            <div class="counter-classic">
                                <div class="counter-classic-number"><span class="counter">4</span>
                                </div>
                                <h5 class="counter-classic-title">Team members</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact information-->
    <section class="section section-sm section-first bg-default" id="one">
        <div class="container">
            <div class="row row-30 justify-content-center">
                <div class="col-sm-8 col-md-6 col-lg-4">
                    <article class="box-contacts">
                        <div class="box-contacts-body">
                            <div class="box-contacts-icon fl-bigmug-line-cellphone55"></div>
                            <div class="box-contacts-decor"></div>
                            <p class="box-contacts-link"><a href="tel:#">+86-18229673933</a></p>
                            <p class="box-contacts-link"><a href="tel:#">+86-18800480515</a></p>
                        </div>
                    </article>
                </div>
                <div class="col-sm-8 col-md-6 col-lg-4">
                    <article class="box-contacts">
                        <div class="box-contacts-body">
                            <div class="box-contacts-icon fl-bigmug-line-up104"></div>
                            <div class="box-contacts-decor"></div>
                            <p class="box-contacts-link"><a href="http://www.hrbnu.edu.cn/">Harbin Normal University</a></p>
                        </div>
                    </article>
                </div>
                <div class="col-sm-8 col-md-6 col-lg-4">
                    <article class="box-contacts">
                        <div class="box-contacts-body">
                            <div class="box-contacts-icon fl-bigmug-line-chat55"></div>
                            <div class="box-contacts-decor"></div>
                            <p class="box-contacts-link"><a href="mailto:#">wen78431296@gmail.com</a></p>
                            <p class="box-contacts-link"><a href="mailto:#">78431296@qq.com</a></p>
                        </div>
                    </article>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Form-->
    <section class="section section-sm section-last bg-default text-left">
        <div class="container">
            <article class="title-classic">
                <div class="title-classic-title">
                    <h3 >Get in touch</h3>
                </div>
                <div class="title-classic-text">
                    <p>If you have any questions, just fill in the contact form, and we will answer you shortly.</p>
                </div>
            </article>
            <form class="rd-form rd-form-variant-2 rd-mailform" data-form-output="form-output-global" data-form-type="contact" method="post" action="bat/rd-mailform.php">
                <div class="row row-14 gutters-14">
                    <div class="col-md-4">
                        <div class="form-wrap">
                            <input class="form-input" id="contact-your-name-2" type="text" name="name" data-constraints="@Required">
                            <label class="form-label" for="contact-your-name-2">Your Name</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-wrap">
                            <input class="form-input" id="contact-email-2" type="email" name="email" data-constraints="@Email @Required">
                            <label class="form-label" for="contact-email-2">E-mail</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-wrap">
                            <input class="form-input" id="contact-phone-2" type="text" name="phone" data-constraints="@Numeric">
                            <label class="form-label" for="contact-phone-2">Phone</label>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="form-wrap">
                            <label class="form-label" for="contact-message-2">Message</label>
                            <textarea class="form-input textarea-lg" id="contact-message-2" name="message" data-constraints="@Required"></textarea>
                        </div>
                    </div>
                </div>
                <button class="button button-primary button-pipaluk" type="submit">Send Message</button>
            </form>
        </div>
    </section>

    <!-- Page Footer-->
    <%@include file="../pages/PageFooter.jsp"%>
</div>
<!-- Global Mailform Output-->
<div class="snackbars" id="form-output-global"></div>
<!-- Javascript-->
<script src="js/core.min.js"></script>
<script src="js/script.js"></script>
<script>
    var arr = document.getElementsByClassName("rd-nav-item");
    arr[4].classList.add("active")
</script>
</body>
</html>
