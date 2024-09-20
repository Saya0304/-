<%--
  Created by IntelliJ IDEA.
  User: 78431
  Date: 2024/2/19
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.ssm.domain.Classics" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ssm.domain.Periodical" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html class="wide wow-animation" lang="en">
<head>
    <title>Search</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <link rel="icon" href="/static/images/logotest.jpg" type="image/x-icon">
    <style>.ie-panel{display: none;background: #212121;padding: 10px 0;box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3);clear: both;text-align:center;position: relative;z-index: 1;} html.ie-10 .ie-panel, html.lt-ie-10 .ie-panel {display: block;}</style>
</head>
<body>
<%@include file="../pages/PageHeader.jsp"%>

<%
    Object object=request.getAttribute("classicsList");
    Object object2=request.getAttribute("periodicalList");

    List<Classics> list=(List<Classics>)object;
    List<Periodical> list2= (List<Periodical>)object2;

    int i=0;
    Periodical periodical;
    Classics classics;
%>
<h5 class="product-big-reviews" style="color:#9b9b9b;font-size: 24px;margin-top: 60px;margin-left: 1000px">
    <span style="color:#00aced;">
        <%if(list2==null){%>
        <%=list.size()%>
        <%}else {%>
        <%=list.size()+list2.size()%>
        <%}%>
    </span>
    <%=request.getAttribute("msg")==null?"results were found":request.getAttribute("msg")%>
    <%--    No results were queried--%>
</h5>

<%
    //    while (i<list.size()){
//        classics=list.get(i);
//        out.print("<div><h1>"+classics.getTitle()+"</h1></div>");
//        i++;
//    }
    for (;i<list.size();i++){
        classics=list.get(i);
%>
<section class="section section-sm bg-default"><div class="container">
    <div class="row row-sm row-40 row-md-50">
        <div class="col-sm-6 col-md-12 wow fadeInRight" >
            <!-- Product Big-->
            <article class="product-big" style="height: 240px;">
                <div style="display: flex ;">
                    <div class="box-icon-classic-icon fl-bigmug-line-download136" style="margin: 10px"></div>
                    <h4 class="product-big-title" style=" text-align: center;color: #63bbe8;margin-top: 20px">
                        <span style="color: #00aced"><%=classics.getTitle()%></span>
                    </h4>
                    <span id="star" class="icon material-icons-star_border" style="font-size: 300%;display: flex;align-items: center;color: #ffcc00;margin-left: 80%;" onclick="addcollection('<%=classics.getTitle()%>')"></span>
                </div>

                <div style="padding: 20px;display:grid;">
                    <div style="display: flex;justify-content: space-between">
                        <div style="margin: 10px;">
                            <p class="product-big-reviews" style="color: #01b3a7;font-size: 15px">Author:<span style="color: black"><%=classics.getAuthor()%></span></p>
                            <p class="product-big-reviews" style="color: #01b3a7;font-size: 15px">
                                Original Download:<a href="<%=classics.getDownload1()%>">
                                <span style="color: red;font-size: 15px"><%=classics.getDownload1()%></span></a>
                            <p class="product-big-reviews" style="color: #01b3a7;font-size: 15px">password:<span style="color: #63bbe8;font-size: 15px"><%=classics.getPassword1()%></span></p>
                        </div>

                        <div style="margin: 10px;">
                            <p class="product-big-reviews" style="color: #01b3a7;font-size: 15px">translator:<span style="color: black"><%=classics.getTranslator()%></span></p>
                            <p class="product-big-reviews" style="color: #01b3a7;font-size: 15px">
                                Translation Download:<a href="<%=classics.getDownload2()%>">
                                <span style="color: red;font-size: 15px"><%=classics.getDownload2()%></span></a>
                            </p>
                            <p class="product-big-reviews" style="color: #01b3a7;font-size: 15px">password:<span style="color: #63bbe8;font-size: 15px"><%=classics.getPassword2()==null?"No Password":classics.getPassword2()%></span></p>
                        </div>
                    </div>
                    <!-- <div class="group-sm group-middle justify-content-start">
                        <a class="product-big-reviews" href="#">Rave reviews</a>
                    </div>
                    <p class="product-big-text">Brief introduction...</p>
                    <div class="product-big-price-wrap"><span class="product-big-price">TOP</span></div> -->
                </div>
            </article>
        </div>
    </div></div></section>
<%
    }
%>
<%
    if (list2!=null){
        for (int j=0;j<list2.size();j++){
            periodical=list2.get(j);
%>
<section class="section section-sm bg-default"><div class="container">
    <div class="row row-sm row-40 row-md-50">
        <div class="col-sm-6 col-md-12 wow fadeInRight" >
            <!-- Product Big-->
            <article class="product-big" style="height: 240px;">
                <div style="display: flex ;">
                    <div class="box-icon-classic-icon fl-bigmug-line-download136" style="margin: 10px"></div>
                    <h4 class="product-big-title" style=" text-align: center;color: #63bbe8;margin-top: 20px">
                        <span style="color: #00aced"><%=periodical.getTitle()%></span>
                    </h4>
                </div>

                <div style="padding: 20px;display:grid;">
                    <div style="display: flex;justify-content: space-between">
                        <div style="margin: 10px;">
                            <p class="product-big-reviews" style="color: #01b3a7;font-size: 15px">Author:<span style="color: black"><%=periodical.getAuthor()%></span></p>
                            <p class="product-big-reviews" style="color: #01b3a7;font-size: 15px">
                                Download:<a href="<%=periodical.getDownload()%>"> <span style="color: red;font-size: 15px"><%=periodical.getDownload()%></span></a>
                            </p>
                            <p class="product-big-reviews" style="color: #01b3a7;font-size: 15px">
                                password:<span style="color: #63bbe8;font-size: 15px"><%=periodical.getPassward()%></span>
                            </p>
                            <p style="font-size: 10px"><%=periodical.getSummary()%></p>
                        </div>

                    </div>
                    <!-- <div class="group-sm group-middle justify-content-start">
                        <a class="product-big-reviews" href="#">Rave reviews</a>
                    </div>
                    <p class="product-big-text">Brief introduction...</p>
                    <div class="product-big-price-wrap"><span class="product-big-price">TOP</span></div> -->
                </div>
            </article>
        </div>
    </div></div></section>
<%
        }}
%>
<script src="/static/js/axios-0.18.0.js"></script>
<script>
    function addcollection(title) {
        const dataObject = {
            username:null,
            title:title
        };
        axios.post("/collection/save",dataObject).then(res=>{
            alert(res.data.data)
        })
    }
</script>
</body>
</html>

