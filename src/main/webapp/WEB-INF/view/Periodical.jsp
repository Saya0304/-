<%--
  Created by IntelliJ IDEA.
  User: 78431
  Date: 2024/2/19
  Time: 17:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.ssm.domain.Periodical" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
<head>
    <title>Periodical</title>
    <link rel="icon" href="/static/images/logotest.jpg" type="image/x-icon">
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <style>.ie-panel{display: none;background: #212121;padding: 10px 0;box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3);clear: both;text-align:center;position: relative;z-index: 1;} html.ie-10 .ie-panel, html.lt-ie-10 .ie-panel {display: block;}</style>
</head>
<body>

<div class="page">
    <%@include file="../pages/PageHeader.jsp"%>
    <!-- Breadcrumbs -->
    <section class="breadcrumbs-custom-inset">
        <div class="breadcrumbs-custom context-dark bg-overlay-60">
            <div class="container">
                <h2 class="breadcrumbs-custom-title">Periodical</h2>
                <ul class="breadcrumbs-custom-path">
                    <li><a href="/Home">Home</a></li>
                    <li class="active">Periodical</li>
                </ul>
            </div>
            <div class="box-position" style="background-image: url(/static/images/bgimages/astronomy-1867616_1280.jpg);"></div>
        </div>
    </section>

    <h2 class="title-classic-title">Trial Reading</h2>
    <div id="dataContainer" style="max-width: 1200px;padding: 100px;border:1px solid #ddd;margin:auto;margin-top: 10px">

        <p style="text-align: left;margin-bottom: 10px;color: #01b3a7;font-size: 20px;">
            <a href="/pdf/periodicalpdf/中国典籍英译_成绩_问题与对策">
                中国典籍英译: 成绩、问题与对策
            </a>
        </p>
        <p style="text-align: left;margin-bottom: 20px;">
            典籍英译是把中国优秀传统文化推向世界的主要途径。经过多年的发展，中国典
            籍英译在翻译实践和学科建设等方面取得了很大的成绩，正面临更大的发展机遇。本文回顾
            了典籍英译所取得的成绩，分析了现存的问题，并提出了可资借鉴的具体对策。
        </p>
        <hr style="text-align:center;max-width: 1000px;border-width: 2px;" />

        <p style="text-align: left;margin-bottom: 10px;color: #01b3a7;font-size: 20px;">
            <a href="/pdf/periodicalpdf/中国民族典籍英译研究现状分析">
                中国民族典籍英译研究现状分析
            </a>
        </p>
        <p style="text-align: left;margin-bottom: 20px;">
            通过对国家社科基金和教育部人文社科项目少数民族典籍英译项目和主要刊物上相关论文的统 计和分析，
            发现其主要特征和走向，把握少数民族典籍英译的研究热点、研究方向、研究模式，评价研究总 体状况，
            从而提高民族典籍英译研究的选题、设计、实施的针对性、策略性和整体水平。
        </p>
        <hr style="text-align:center;max-width: 1000px;border-width: 2px;" />

    </div>
    <button id="more" onclick="getAll()" class="button button-md button-default-outline-2 button-ujarak">Get more</button>

    <!-- HTML Text Elements-->
    <section class="section section-sm bg-default text-left">
        <%--        <div class="container">--%>
        <%--          <h3>HTML Text Elements</h3>--%>
        <%--          <p class="text-block">Welcome to our wonderful world. This is a bold text--%>
        <%--            <mark>This is a highlighted text</mark>We sincerely hope that each and every user entering our website will find exactly what he/she is looking for. With advanced features of activating account and new login<span class="tooltip-custom" data-toggle="tooltip" data-placement="top" title="Default text">Tooltips</span>widgets, you will definitely have a great experience of using our web page.<span class="text-strike">This is a strikethrough text</span><span class="text-underline">This is an underlined text.</span><a href="#">Link</a><a class="link-hover" href="#">Hover link</a><a class="link-active" href="#">Press link</a>--%>
        <%--          </p>--%>
        <%--        </div>--%>
    </section>

<%--    Featured Periodicals--%>
    <div style="width: 1200px;padding: 10px;margin:auto">
        <h5 style="text-align: left;">Featured Periodicals</h5>
    </div>
    <div style="width: 1200px;padding: 10px;border:1px solid #ddd;margin:auto">
        <div class="row row-sm row-30" >
            <div class="col-sm-4">
                <ul class="list-marked">
                    <li><a href="/pdf/FeaturedPeriodicals/典籍英译传统文化的可译性及翻译策略">典籍英译传统文化的可译性及翻译策略</a></li>
                    <li><a href="/pdf/FeaturedPeriodicals/典籍英译文化翻译观下的异化策略与中国英语">典籍英译文化翻译观下的异化策略与中国英语</a></li>
                    <li><a href="/pdf/FeaturedPeriodicals/跨文化视域下中国典籍英译中">跨文化视域下中国典籍英译中</a></li>
                </ul>
            </div>
            <div class="col-sm-4">
                <ul class="list-marked">
                    <li><a href="/pdf/FeaturedPeriodicals/论翻译文体学视域下典籍英译的文体选择与翻译策略">论翻译文体学视域下典籍英译的文体选择与翻译策略</a></li>
                    <li><a href="/pdf/FeaturedPeriodicals/论汉语典籍英译的翻译策略与文化传真">论汉语典籍英译的翻译策略与文化传真</a></li>
                    <li><a href="/pdf/FeaturedPeriodicals/文化专有项的翻译策略典籍">文化专有项的翻译策略典籍</a></li>
                </ul>
            </div>
            <div class="col-sm-4">
                <ul class="list-marked">
                    <li><a href="/pdf/FeaturedPeriodicals/中国典籍英译中“归化”和“异化”的辩证法阐释">中国典籍英译中“归化”和“异化”的辩证法阐释</a></li>
                    <li><a href="/pdf/FeaturedPeriodicals/中国文化典籍英译中翻译策略">中国文化典籍英译中翻译策略</a></li>
                </ul>
            </div>
        </div>
    </div>

    <div style="width: 1200px;padding: 10px;margin:auto;margin-top: 50px">
        <h5 style="text-align: left;">Resource Downloads</h5>
    </div>
    <div style="max-width: 1200px;padding: 10px;border:1px solid #ddd;margin:auto">

        <div class="row row-sm row-30" >
            <%
            List<Periodical> periodicalList=(List<Periodical>) request.getAttribute("alldata");
            for (int i=0;i<periodicalList.size();i++){
            %>
            <div class="col-sm-4">
                <ul class="list-marked">
                    <li><a href="/Search?title=<%=periodicalList.get(i).getTitle()%>">
                        <span style="margin-left: 5px;color: black"><%=periodicalList.get(i).getAuthor()%></span>
                        <%=periodicalList.get(i).getTitle()%>
                    </a></li>

<%--                    <li><a href="showpdf.jsp?id=3"><%=periodicalList.get(i+2).getTitle()%></a></li>--%>
                </ul>
            </div>
            <%}%>
        </div>
    </div>

    <!-- Lists and Blockquote-->
    <section class="section section-sm section-last bg-default text-left">
        <div class="container">
            <div class="row row-60 row-md-80 row-lg-90">
                <div class="col-lg-8 col-xl-6">
                    <h3>Links</h3>
                    <div class="row row-sm row-30">
                        <div class="col-sm-6">
                            <ul class="list-marked">
                                <li><a href="https://www.fltrp.com/">外研网</a></li>
                                <li><a href="https://shuyuku.chinesethought.cn/">中华思想文化术语库</a></li>
                                <li><a href="https://www.cssn.cn/">中国科学社会网</a></li>
                                <li><a href="http://www.nlc.cn/web/index.shtml">中国国家图书馆</a></li>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Page Footer-->
    <%@include file="../pages/PageFooter.jsp"%>
</div>
<!-- Global Mailform Output-->
<div class="snackbars" id="form-output-global"></div>
<!-- Javascript-->
<script src="/static/js/axios-0.18.0.js"></script>
<script>
    function getAll() {
        document.getElementById('more').style.display = 'none';
        axios.get('/periodcal/all').then(res => {
            var dataList = res.data;
            var container = document.getElementById('dataContainer');
            for (var i = 2; i < 6; i++) {
                var item = dataList[i].title;
                var titleElem = document.createElement('p');
                titleElem.style.textAlign = 'left';
                titleElem.style.marginBottom = '10px';
                titleElem.style.color = '#01b3a7';
                titleElem.style.fontSize = '20px';
                var linkElem = document.createElement('a');
                ///static/pdffile/"+title+".pdf
                linkElem.href = '/pdf/periodicalpdf/'+dataList[i].title;
                linkElem.textContent = item;
                titleElem.appendChild(linkElem);
                var contentElem = document.createElement('p');
                contentElem.style.textAlign = 'left';
                contentElem.style.marginBottom = '20px';
                contentElem.textContent = dataList[i].summary;
                container.appendChild(titleElem);
                container.appendChild(contentElem);
                var hrElem = document.createElement('hr');
                hrElem.style.textAlign = 'center';
                hrElem.style.maxwidth = '1000px';
                hrElem.style.borderWidth = '2px';
                container.appendChild(hrElem);
            }
        }).catch(error => {
            console.error('Error fetching data:', error);
        });
    }
</script>
<script>
    var arr = document.getElementsByClassName("rd-nav-item");
    arr[2].classList.add("active")
</script>
</body>
</html>