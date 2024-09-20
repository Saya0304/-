<%--
  Created by IntelliJ IDEA.
  User: 78431
  Date: 2023/7/12
  Time: 0:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html class="wide wow-animation" lang="en">

<head>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <link rel="icon" href="/static/images/logotest.jpg" type="image/x-icon">
    <link rel="stylesheet" href="/static/css/bootstrap.css">
    <link rel="stylesheet" href="/static/css/fonts.css">
    <link rel="stylesheet" href="/static/css/style.css">
</head>
<body>

<div>
    <!-- 欢迎致辞 -->
    <section class="section bg-default text-center offset-top-50">
        <div class="parallax-container" data-parallax-img="/static/images/fatestaynight.png">
            <div class="parallax-content section-xl section-inset-custom-1 context-dark bg-overlay-2-21">
                <div class="container">
                    <h2 class="heading-2 oh font-weight-normal wow slideInDown"><span class="d-block font-weight-semi-bold">The rhyme of poetry</span><span class="d-block font-weight-light">are Waiting for You!</span></h2>
                    <p class="text-width-medium text-spacing-75 wow fadeInLeft" data-wow-delay=".1s">There are many classic English translations waiting for you to discover, I hope this site can help you learn more classical Chinese English translation works!</p>
                    <a class="button button-secondary button-pipaluk" href="/Home">Get started quickly</a>
                </div>
                <div style="margin: 50px 100px"></div>

                <section class="section section-sm section-first bg-default text-md-left" style="opacity: 0.7;color: #63bbe8">
                    <div class="container">
                        <div class="row row-50  justify-content-center justify-content-xl-between">
                            <div class="col-lg-6 text-center wow fadeInUp"><img src="/static/images/logo.jpg" alt="" width="556" height="382"/>
                            </div>
                            <div class="col-lg-6 wow fadeInRight" data-wow-delay=".1s">
                                <div class="box-width-lg-470">
                                    <h3 style="color: #01b3a7">Welcome to The rhyme of poetry</h3>
                                    <!-- Bootstrap tabs-->
                                    <div class="tabs-custom tabs-horizontal tabs-line tabs-line-big tabs-line-style-2 text-center text-md-left" id="tabs-7">
                                        <!-- Nav tabs-->
                                        <ul class="nav nav-tabs">
                                            <li class="nav-item" role="presentation"><a class="nav-link active" href="#tabs-7-1" data-toggle="tab">Sign in</a></li>
                                            <li class="nav-item" role="presentation"><a class="nav-link" href="#tabs-7-2" data-toggle="tab" name="here" id="here">Sign up</a></li>
                                            <li class="nav-item" role="presentation"><a class="nav-link" href="#tabs-7-3" data-toggle="tab">introduction</a></li>
                                        </ul>

                                        <div class="tab-content">
                                            <!-- login-->
                                            <div class="tab-pane fade show active" id="tabs-7-1">
                                                <form class="form-product-search"  action="/user/login" method="post" id="form1">
                                                    <input class="form-input" style="color: #01b3a7;" placeholder="username" type="text" id="sign-name" name="sign-name" data-constraints="@Required"/>
                                                    <input class="form-input" style="color: #01b3a7;margin-top: 10px;" placeholder="password" type="password" id="sign-password" name="sign-password" data-constraints="@Required"/>
                                                </form>
                                                <div id="signerr"style="font-size: 12px;color: red;display: flex;justify-content: center">${message}</div>

                                                <div class="group-md group-middle" style="display: flex;justify-content: center;align-items: center;">
                                                    <a class="button button-secondary" onclick="sign()">Sign in</a>
                                                    <a class="button button-black-outline button-md" href="/Home">Guest Login</a>
                                                </div>
                                                <p style="color: black;text-align: center;">if you don't have an account,you can try <span style="color: #01b3a7;">'Guest Login'↑</span></p>
                                            </div>

                                            <%--register--%>
                                            <div class="tab-pane fade" id="tabs-7-2">
                                                <form class="form-product-search" id="form2">
                                                    <input class="form-input" style="color: #01b3a7;margin-bottom: 10px" placeholder="username" type="text" name="username" id="username"/>
                                                    <span class="errorun" style="font-size: 5px"></span>
                                                    <input class="form-input" style="color: #01b3a7;margin-top: 10px;" placeholder="password" type="password" name="password" id="password"/>
                                                    <span class="errorps"  style="font-size: 5px"></span>
                                                    <input class="form-input" style="color: #01b3a7;margin-top: 10px;" placeholder="confirm password" type="password" name="confirm_password" id="confirm_password"/>
                                                    <span class="errorcps"  style="font-size: 5px"></span>
                                                    <input class="form-input" style="color: #01b3a7;margin-top: 10px;" placeholder="email" type="email" name="email" id="email"/>
                                                    <span class="errorem"  style="font-size: 5px"></span>
                                                </form>
                                                <div id="registererr"style="font-size: 12px;color: red;display: flex;justify-content: center"></div>
                                                <div class="group-md group-middle" style="display: flex;justify-content: center;align-items: center;">
                                                    <button class="button button-secondary" id="btn" onclick="register()">Sign up</button>
                                                </div>
                                            </div>

                                            <div class="tab-pane fade" id="tabs-7-3">
                                                <p>The name of this website is called The rhyme of poetry, where you can view English and Chinese classics translations and periodical materials</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </section>

</div>
<script src="/static/js/core.min.js"></script>
<script src="/static/js/script.js"></script>
<script src="/static/js/axios-0.18.0.js"></script>
<script>
    function sign() {
        var username = document.getElementById('sign-name').value;
        var password = document.getElementById('sign-password').value;
        if (username===""&&password===""){
            document.getElementById("signerr").innerText="Please enter a username and password";
        }else {
        const dataObject = {
            'username':username,
            'password':password
        };
        axios.post('/user/ajax', dataObject).then(res => {
                document.getElementById("signerr").innerHTML=res.data.data;
                if (res.data.data==="Landing successful"){
                    document.getElementById('form1').submit();return false;
                }
            }
        )}
    }
    function register() {
        var username = document.getElementById('username').value;
        var password = document.getElementById('password').value;
        var confirm_password= document.getElementById('confirm_password').value;
        var email = document.getElementById('email').value;
        if (username===""&&password===""&&confirm_password===""&&email===""){
            document.getElementById("registererr").innerText="Please fill in your personal information";
        }else if(confirm_password!==password){
            document.getElementById("registererr").innerText="The password entered twice is inconsistent";
        }else{
            const dataObject = {
                'username':username,
                'password':password,
                'email':email
            };
            axios.post('/user/registered', dataObject,{
                headers: {
                    'Content-Type': 'application/json'
                }}).then(res => {
                    document.getElementById("registererr").innerHTML=res.data.msg;
                    if (res.data.code===20011){
                        document.getElementById('sign-name').value=username
                        document.getElementById('sign-password').value=password
                        document.getElementById('form1').submit();return false;
                    }
                }
            )}
    }
</script>

</body>

