<%@ page import="com.ssm.domain.Saying" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ssm.domain.Classics" %><%--
  Created by IntelliJ IDEA.
  User: 78431
  Date: 2024/2/19
  Time: 12:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Classics</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <link rel="icon" href="/static/images/logotest.jpg" type="image/x-icon">
    <style>
        .owl-item1{
            max-width:150px ;
        }
        .classimg{
            max-height: 700px;
            min-height: 700px;
        }
    </style>
    <style>.ie-panel{display: none;background: #212121;padding: 10px 0;box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3);clear: both;text-align:center;position: relative;z-index: 1;} html.ie-10 .ie-panel, html.lt-ie-10 .ie-panel {display: block;}</style>
</head>

<body>
<div class="page">
    <%@include file="../pages/PageHeader.jsp"%>

    <%--首图--%>
    <section class="breadcrumbs-custom-inset">
        <div class="breadcrumbs-custom context-dark bg-overlay-60">
            <div class="container">
                <h2 class="breadcrumbs-custom-title">Classics</h2>
                <ul class="breadcrumbs-custom-path">
                    <li><a href="/Home">Home</a></li>
                    <li class="active">Classics</li>
                </ul>
            </div>
            <div class="box-position" style="background-image: url(/static/images/bgimages/christmas-1911637_1280.jpg);"></div>
        </div>
    </section>

    <%--  名人名言--%>
    <section class="section section-sm section-last bg-default">
        <div class="container">
            <!-- Owl Carousel-->
            <div class="owl-carousel owl-modern" data-items="1" data-stage-padding="15" data-margin="30" data-dots="true" data-animation-in="fadeIn" data-animation-out="fadeOut" data-autoplay="true">
                <!-- Quote Lisa-->
                <%
                    Object ob=request.getAttribute("listsay");
                    List<Saying> listsay=(List<Saying>)ob;
                    Saying saying;
                    if(listsay!=null){
                        for (int i=0;i<listsay.size();i++){
                            saying=listsay.get(i);
                %>
                <article class="quote-lisa">
                    <div class="quote-lisa-body">
                        <div class="quote-lisa-text">
                            <p class="q"><%=saying.getSay1()%></p>
                        </div>
                        <div class="quote-lisa-text">
                            <p class="q"><%=saying.getSay2()%></p>
                        </div>
                        <p class="quote-lisa-status"><%=saying.getAuthor()%></p>
                    </div>
                </article>
                <%
                        }}
                %>
            </div>
        </div>
    </section>

    <%--  展示--%>
    <section class="section section-sm section-fluid bg-default">

        <!-- Owl Carousel-->
        <div class="owl-carousel owl-classic owl-timeline" data-items="1" data-md-items="2" data-lg-items="3" data-xl-items="4" data-margin="30" data-autoplay="false" data-nav="true" data-dots="true">
            <div class="owl-item">
                <!-- Thumbnail Classic-->
                <article class="thumbnail thumbnail-mary">
                    <div class="thumbnail-mary-figure"><img class="classimg" src="/static/images/javaweb/w700d1q75cms1.jpg" alt="" width="420" height="308"/>
                    </div>
                    <div class="thumbnail-mary-caption"><a class="icon fl-bigmug-line-zoom60" href="/static/images/javaweb/w700d1q75cms1.jpg" data-lightgallery="item"><img src="/static/images/gallery-image-11-420x308.jpg" alt="" width="420" height="308"/></a>
                    </div>
                </article>
                <div class="thumbnail-mary-description">
                    <h5 class="thumbnail-mary-project"><a href="#">book</a></h5><span class="thumbnail-mary-decor"></span>
                    <h5 class="thumbnail-mary-time">
                    </h5>
                </div>
            </div>
            <div class="owl-item">
                <!-- Thumbnail Classic-->
                <article class="thumbnail thumbnail-mary">
                    <div class="thumbnail-mary-figure"><img class="classimg" src="/static/images/javaweb/w700d1q75cms2.jpg" alt="" width="420" height="308"/>
                    </div>
                    <div class="thumbnail-mary-caption"><a class="icon fl-bigmug-line-zoom60" href="/static/images/javaweb/w700d1q75cms2.jpg" data-lightgallery="item"><img src="/static/images/gallery-image-11-420x308.jpg" alt="" width="420" height="308"/></a>
                    </div>
                </article>
                <div class="thumbnail-mary-description">
                    <h5 class="thumbnail-mary-project"><a href="#">book</a></h5><span class="thumbnail-mary-decor"></span>
                    <h5 class="thumbnail-mary-time">
                    </h5>
                </div>
            </div>
            <div class="owl-item">
                <!-- Thumbnail Classic-->
                <article class="thumbnail thumbnail-mary">
                    <div class="thumbnail-mary-figure"><img class="classimg" src="/static/images/javaweb/w700d1q75cms3.jpg" alt="" width="420" height="308"/>
                    </div>
                    <div class="thumbnail-mary-caption"><a class="icon fl-bigmug-line-zoom60" href="/static/images/javaweb/w700d1q75cms3.jpg" data-lightgallery="item"><img src="/static/images/gallery-image-11-420x308.jpg" alt="" width="420" height="308"/></a>
                    </div>
                </article>
                <div class="thumbnail-mary-description">
                    <h5 class="thumbnail-mary-project"><a href="#">book</a></h5><span class="thumbnail-mary-decor"></span>
                    <h5 class="thumbnail-mary-time">
                    </h5>
                </div>
            </div>
            <div class="owl-item">
                <!-- Thumbnail Classic-->
                <article class="thumbnail thumbnail-mary">
                    <div class="thumbnail-mary-figure"><img class="classimg"  src="/static/images/javaweb/w700d1q75cms4.jpg" alt="" width="420" height="308"/>
                    </div>
                    <div class="thumbnail-mary-caption"><a class="icon fl-bigmug-line-zoom60" href="/static/images/javaweb/w700d1q75cms4.jpg" data-lightgallery="item"><img src="/static/images/gallery-image-11-420x308.jpg" alt="" width="420" height="308"/></a>
                    </div>
                </article>
                <div class="thumbnail-mary-description">
                    <h5 class="thumbnail-mary-project"><a href="#">book</a></h5><span class="thumbnail-mary-decor"></span>
                    <h5 class="thumbnail-mary-time">
                    </h5>
                </div>
            </div>
            <div class="owl-item">
                <!-- Thumbnail Classic-->
                <article class="thumbnail thumbnail-mary">
                    <div class="thumbnail-mary-figure"><img class="classimg"  src="/static/images/javaweb/w700d1q75cms5.jpg" alt="" width="420" height="308"/>
                    </div>
                    <div class="thumbnail-mary-caption"><a class="icon fl-bigmug-line-zoom60" href="/static/images/javaweb/w700d1q75cms5.jpg" data-lightgallery="item"><img src="/static/images/gallery-image-11-420x308.jpg" alt="" width="420" height="308"/></a>
                    </div>
                </article>
                <div class="thumbnail-mary-description">
                    <h5 class="thumbnail-mary-project"><a href="#">book</a></h5><span class="thumbnail-mary-decor"></span>
                    <h5 class="thumbnail-mary-time">
                    </h5>
                </div>
            </div>
            <div class="owl-item">
                <!-- Thumbnail Classic-->
                <article class="thumbnail thumbnail-mary">
                    <div class="thumbnail-mary-figure"><img  class="classimg" src="/static/images/javaweb/w700d1q75cms6.jpg" alt="" width="420" height="308"/>
                    </div>
                    <div class="thumbnail-mary-caption"><a class="icon fl-bigmug-line-zoom60" href="/static/images/javaweb/w700d1q75cms6.jpg" data-lightgallery="item"><img src="/static/images/gallery-image-11-420x308.jpg" alt="" width="420" height="308"/></a>
                    </div>
                </article>
                <div class="thumbnail-mary-description">
                    <h5 class="thumbnail-mary-project"><a href="#">book</a></h5><span class="thumbnail-mary-decor"></span>
                    <h5 class="thumbnail-mary-time">
                    </h5>
                </div>
            </div>
            <div class="owl-item">
                <!-- Thumbnail Classic-->
                <article class="thumbnail thumbnail-mary">
                    <div class="thumbnail-mary-figure"><img class="classimg"  src="/static/images/javaweb/w700d1q75cms7.jpg" alt="" width="420" height="308"/>
                    </div>
                    <div class="thumbnail-mary-caption"><a class="icon fl-bigmug-line-zoom60" href="/static/images/javaweb/w700d1q75cms7.jpg" data-lightgallery="item"><img src="/static/images/gallery-image-11-420x308.jpg" alt="" width="420" height="308"/></a>
                    </div>
                </article>
                <div class="thumbnail-mary-description">
                    <h5 class="thumbnail-mary-project"><a href="#">book</a></h5><span class="thumbnail-mary-decor"></span>
                    <h5 class="thumbnail-mary-time">
                    </h5>
                </div>
            </div>
            <div class="owl-item">
                <!-- Thumbnail Classic-->
                <article class="thumbnail thumbnail-mary">
                    <div class="thumbnail-mary-figure"><img class="classimg"  src="/static/images/javaweb/w700d1q75cms8.jpg" alt="" width="420" height="308"/>
                    </div>
                    <div class="thumbnail-mary-caption"><a class="icon fl-bigmug-line-zoom60" href="/static/images/javaweb/w700d1q75cms8.jpg" data-lightgallery="item"><img src="/static/images/gallery-image-11-420x308.jpg" alt="" width="420" height="308"/></a>
                    </div>
                </article>
                <div class="thumbnail-mary-description">
                    <h5 class="thumbnail-mary-project"><a href="#">book</a></h5><span class="thumbnail-mary-decor"></span>
                    <h5 class="thumbnail-mary-time">
                    </h5>
                </div>
            </div>


        </div>
    </section>

    <%--分类--%>
    <%--      <div style="display: flex;align-items: center;flex-wrap: wrap;justify-content: center;align-items: center;">--%>
    <%--        <article class="box-icon-classic" style="height: 10px;min-width: 150px;margin: 10px;" id="btn1">--%>
    <%--          <p  class="product-big-title">文学典籍</p>--%>
    <%--        </article>--%>

    <%--        <article class="box-icon-classic" style="height: 10px;min-width: 150px;margin: 10px;" id="btn2">--%>
    <%--          <p class="product-big-title">医学典籍</p>--%>
    <%--        </article>--%>

    <%--        <article class="box-icon-classic" style="height: 10px;min-width: 150px;margin: 10px;" id="btn3">--%>
    <%--          <p class="product-big-title">农学典籍</p>--%>
    <%--        </article>--%>

    <%--        <article class="box-icon-classic" style="height: 10px;min-width: 150px;margin: 10px;" id="btn4">--%>
    <%--          <p class="product-big-title">少数民族典籍</p>--%>
    <%--        </article>--%>

    <%--        <article class="box-icon-classic" style="height: 10px;min-width: 150px;margin: 10px;" id="btn5">--%>
    <%--          <p class="product-big-title">其他</p>--%>
    <%--        </article>--%>
    <%--      </div>--%>

    <%--      <div style="display: flex">--%>
    <%--        <div style="background-color: #01b3a7;margin: auto;width: 100px;height: 100px">--%>

    <%--        </div>--%>
    <%--  &lt;%&ndash;      <div style="display: flex;flex-wrap: wrap;justify-content: center;align-items: center;" id="result1"></div>&ndash;%&gt;--%>
    <%--        <div style="align:right" id="result1">--%>
    <%--        </div>--%>
    <%--      </div>--%>
    <%
        Object object=request.getAttribute("list");
        List<String> stringList= (List<String>) request.getAttribute("kind");
        List<Classics> list=(List<Classics>)object;
        Classics classics;
        for (int i=0;i<stringList.size();i++){
    %>
    <div style="margin-bottom: 20px;">
        <section class="section section-sm section-top-0 section-fluid section-relative bg-gray-4">
            <div class="container-fluid">
                <h3 class="title-classic-text"><%=stringList.get(i)%></h3>
                <!-- Owl Carousel-->
                <div class="owl-carousel owl-classic owl-dots-secondary" data-items="1" data-sm-items="2" data-md-items="3" data-lg-items="4" data-xl-items="5" data-xxl-items="6" data-stage-padding="100" data-xxl-stage-padding="0" data-margin="-10" data-autoplay="true" data-nav="true" data-dots="true">
                    <%
                        if(list!=null){
                            for (int j=0;j<list.size();j++){
                                classics=list.get(j);
                                if (classics.getKind().equals(stringList.get(i))){
                    %>
                    <div class="owl-item" style="height: 230px;width: 100px">
                        <article class="thumbnail ">
                            <div class="thumbnail-mary-figure"><img src="<%=classics.getExpand()%>" alt="" width="190px" max-height="170px"/>
                            </div>
                            <div class="thumbnail-mary-caption">
                                <a class="icon fl-bigmug-line-zoom60" href="/Search?title=<%=classics.getTitle()%>" data-lightgallery="item">
                                    <img src="<%=classics.getExpand()%>" alt="" width="190px" height="275px"/>
                                </a>
                            </div>
                        </article>
                        <div class="thumbnail-mary-description">
                            <h5 style="text-align: center;font-size: 20px"><a href="/Search?title=<%=classics.getTitle()%>"><%=classics.getTitle()%></a>
                            </h5>
                            <span class="thumbnail-mary-decor"></span>
                        </div>
                    </div>
                    <%}}}%>
                </div>
            </div>
        </section>
    </div>
    <%}%>

    <!-- Page Footer-->
    <%@include file="../pages/PageFooter.jsp"%>
</div>
<!-- Global Mailform Output-->
<div class="snackbars" id="form-output-global"></div>
<!-- Javascript-->
</body>

<script>
    var arr = document.getElementsByClassName("rd-nav-item");
    arr[1].classList.add("active")
</script>

</html>
