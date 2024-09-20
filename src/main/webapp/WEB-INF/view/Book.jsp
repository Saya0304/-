<%--
  Created by IntelliJ IDEA.
  User: 78431
  Date: 2024/2/19
  Time: 12:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="com.ssm.domain.Classics" %>
<%@ page import="com.ssm.domain.Comment" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>书籍页面</title>
    <%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.11.338/pdf.min.js"></script>--%>
    <script src="/static/js/pdf.js"></script>
    <script src="/static/js/pdf.worker.js"></script>
    <link rel="icon" href="/static/images/logotest.jpg" type="image/x-icon">
    <style>
        @media  (max-width: 768px){
            .product-big{
                margin-bottom: 900px;
            }
        }
        @media (max-width:992px) {
            .product-big .unit-left{
                min-width: 320px;
            }
        }
    </style>
    <style>
        .pre1 {
            white-space: pre-wrap;
            word-wrap: break-word;
            width:400px;
            overflow:hidden;
            background-color:white;
            border: 0;
            font-size: 15px;
            margin-top: 20px;
            font-family: Myfont;
        }
        @font-face {
            font-family: Myfont;
            src: url("/static/fonts/lg.svg");
        }
        .comments {
            max-width: 80%;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);

        }
        .comment {
            border-bottom: 1px solid #eee;
            padding: 10px 0;
        }
        .comment .user {
            font-weight: bold;
        }
        .comment .timestamp {
            font-size: 0.8em;
            color: #888;
        }
        .comment .message {
            margin-top: 5px;
        }
    </style>
</head>
<body>
<%@include file="../pages/PageHeader.jsp"%>
<div style="margin:100px;">
    <%
        Classics classics=(Classics)request.getAttribute("classics");
    %>
    <!-- Product Big-->
    <article class="product-big" style="border: 0px;">
        <div class="unit flex-column flex-md-row align-items-md-stretch" style="height: 500px;">
            <div class="unit-left" style="flex-basis: 40%;"><a class="product-big-figure"  href="#"><img src="<%=classics.getExpand()%>" /></a></div>
            <div class="unit-body" style="flex-basis: 60%;">
                <div class="product-big-body">
                    <h5 class="product-big-title"><a href="#"><%=classics.getTitle()%></a></h5>
                    <p class="product-big-reviews" style="font-size: 24px"><%=classics.getAuthor()%></p>
                    <div class="group-sm group-middle justify-content-start">
                        <div class="product-big-rating"><span class="icon material-icons-star"></span>
                            <span class="icon material-icons-star"></span><span class="icon material-icons-star"></span>
                            <span class="icon material-icons-star"></span><span class="icon material-icons-star_half"></span>
                        </div>
                    </div>
                    <p class="product-big-text"><%=classics.getInformation()%></p>
                    <button class="button button-black-outline button-ujarak" href="pdffile/<%=classics.getTitle()%>.pdf" onclick="start()">Start</button>
                    <button class="button button-black-outline button-ujarak" onclick="collection()">Collection</button>
                </div>
            </div>
        </div>
    </article>
</div>


<article class="product-big" style="height: 240px;margin:100px">
    <div style="display: flex ;">
        <div class="box-icon-classic-icon fl-bigmug-line-download136" style="margin: 10px"></div>
        <h4 class="product-big-title" style=" text-align: center;color: #63bbe8;margin-top: 20px">
            <span style="color: #00aced"><%=classics.getTitle()%></span>
        </h4>
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


<div style="background-color: white;">
    <div style="display:flex;flex-direction: column;align-items: center;">
        <div class="" style="width:50%;position: relative;background-color: white;">
            <textarea class="form-input textarea-lg" placeholder="缺一条精彩的书评" id="comment"></textarea>
        </div>
        <button class="button button-secondary button-pipaluk" onclick="comment()">提交</button>
    </div>

    <div class="comments" id="comments" >
        <%
            Object object2=request.getAttribute("comment");
            List<Comment> commentList=(List<Comment>) object2;
            int j=commentList.size()<10?commentList.size():10;
            for (int i=0;i<j;i++){
        %>
        <div class="comment" style="display: flex;flex-direction: column;">
            <div class="user"><%=commentList.get(i).getUsername()%></div>
            <div class="timestamp"><%=commentList.get(i).getExpand()%></div>
            <div class="message"><%=commentList.get(i).getText()%></div>
        </div>
        <%}%>
    </div>
</div>

<div style="margin: 50px;">
    <div id="pdfContainer" style="display: flex;flex-wrap: wrap;justify-content: center;flex-direction: row;align-content: flex-start;"></div>
</div>

<script>
    var pdfPath = '/static/pdffile/<%=classics.getTitle()%>.pdf';

    var pdfInstance = pdfjsLib.getDocument(pdfPath);

    pdfInstance.promise.then(function(pdf) {
        var totalPages = pdf.numPages;
        totalPages=totalPages>12?12:totalPages;
        for (var pageNumber = 1; pageNumber <= totalPages; pageNumber++) {
            pdf.getPage(pageNumber).then(function(page) {
                var scale = 0.5;
                var viewport = page.getViewport({scale: scale});
                var canvas = document.createElement('canvas');
                var context = canvas.getContext('2d');
                canvas.height = viewport.height;
                canvas.width = viewport.width;

                var dpi = 96.0/ 72.0;
                var renderContext = {
                    transform: [dpi, 0, 0, dpi, 0, 0],
                    canvasContext: context,
                    viewport: viewport
                };
                page.render(renderContext).promise.then(function() {
                    var img = new Image();
                    img.src = canvas.toDataURL();
                    // (function(pageNumber) {
                    //     img.addEventListener('click', function() {
                    //         window.open(pdfPath + '#page=' + pageNumber, '_blank');
                    //     });
                    // })(pageNumber);
                    document.getElementById('pdfContainer').appendChild(img);
                });
            });
        }
    });
</script>
<script src="/static/js/axios-0.18.0.js"></script>
<script>
    function start() {
        <%--window.open( 'pdf.jsp?id=<%=classics.getTitle()%>','_blank');--%>
        window.open( '/pdf/<%=classics.getTitle()%>','_blank');
    }
    function comment() {
        var currentDate = new Date();
        var year = currentDate.getFullYear();
        var month = currentDate.getMonth() + 1; // 注意：月份从 0 开始计数，所以要加 1
        var day = currentDate.getDate();
        var hours = currentDate.getHours();
        var minutes = currentDate.getMinutes();

        var comment=document.getElementById("comment").value
        var title="<%=classics.getTitle()%>"
        var expand=year + '-' + month + '-' + day + ' ' + hours + ':' + minutes

        const dataObject = {
            "title":title,
            "username":null,
            "text":comment,
            "expand":expand
        };

        axios.post("/comment/add",dataObject).then(res=>{
            alert(res.data.data)
        })
    }
    function collection() {
        var title="<%=classics.getTitle()%>"
        const dataObject = {
            "username":null,
            "title":title,
        };
        axios.post("/collection/save",dataObject).then(res=>{
            alert(res.data.data)
        })
    }
</script>
</body>
</html>
