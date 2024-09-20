<%--
  Created by IntelliJ IDEA.
  User: 78431
  Date: 2024/2/19
  Time: 17:48
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: 78431
  Date: 2023/10/21
  Time: 22:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Terminology</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <link rel="icon" href="/static/images/logotest.jpg" type="image/x-icon">
    <title>Title</title>
    <style>
        p{
            color: #01b3a7;
        }
    </style>
</head>
<body style="background-color: whitesmoke">
<%@include file="../pages/PageHeader.jsp"%>
<section class="breadcrumbs-custom-inset">
    <div class="breadcrumbs-custom context-dark bg-overlay-60">
        <div class="container">
            <h2 class="breadcrumbs-custom-title">Terminology</h2>
            <ul class="breadcrumbs-custom-path">
                <li><a href="/Home">Home</a></li>
                <li class="active">Terminology</li>
            </ul>
        </div>
        <div class="box-position" style="background-image: url(/static/images/bgimages/key.jpg);"></div>
    </div>
</section>

<h3 style="text-align: center;margin: 50px">术语库查询</h3>
<nav class="rd-navbar-search" style="display: flex;justify-content: center;">
    <%--    <form action="" method="GET" >--%>

    <div>
        <input class="form-input" style="width: 400px;" type="text" id="character" name="term"  required placeholder="请输入需查询术语">
        <div style="display: flex;justify-content: center;align-items: center; margin: 20px;">
            <button class="button button-width-xl-230 button-primary button-pipaluk"  onclick="search()">查询</button>
        </div>
    </div>
    <%--    </form>--%>
</nav>
<div class="form-input textarea-lg" id="txt" style="margin-bottom: 10px;height: 200px;width: 500px;;overflow: auto;background-color: white;margin: auto;margin-bottom: 50px;border-radius: 30px">

</div>

<section class="section section-sm section-first bg-default text-left" >
    <div class="container">
        <div class="row row-40 flex-lg-row-reverse justify-content-xl-between">
            <div class="col-xl-5 d-none d-xl-block" style="max-width:20%">
                <div class="offset-left-xl-45">
                    <h5>索引</h5>
                    <div>
                        <%
                            for (char i = 'A'; i <= 'Z'; i++) {
                                if(i=='I'||i=='O'||i=='U'||i=='V'){}else{
                        %>
                        <a style="font-size: 24px" href="javascript:void(0)" onclick="document.getElementById('<%=i%>').scrollIntoView();"><%=i%></a>
                        <%}}%>
                    </div>
                </div>
            </div>
            <div class="col-xl-7" style="max-width: 80%" id="targetDiv">
                <ul class="list-xl box-typography" style="font-size: 20px;" >
                    <%@include file="../pages/Terminologytext.jsp"%>
                </ul>
            </div>
        </div>
    </div>
</section>

<script>
    var highlightedText = [];
    function searchCharacter() {
        var targetDiv = document.getElementById('targetDiv');
        var character = document.getElementById("character").value;
        if (window.find && window.getSelection) {
            var sel = window.getSelection();
            sel.collapse(targetDiv, 0);

            resetHighlightedText();

            if (!window.find(character)) {
                alert("暂无数据！");
            }else{
                while (window.find(character,true)) {
                    var range = sel.getRangeAt(0);
                    var span = document.createElement('span');
                    span.style.backgroundColor = '#01b3a7';
                    range.surroundContents(span);
                    highlightedText.push(span);
                    sel.collapseToEnd();
                }
            }
        }
    }

    function resetHighlightedText() {
        highlightedText.forEach(function(element) {
            var parent = element.parentNode;
            parent.replaceChild(element.firstChild, element);
            parent.normalize();
        });
        highlightedText = [];
    }

    function search() {
        const targetDiv = document.getElementById('targetDiv');
        const divText = targetDiv.innerText;
        var character = document.getElementById("character").value;
        var txt=document.getElementById("txt")

        txt.innerHTML='';
        const lines = divText.split('\n');
        lines.forEach(line => {
            if (line.includes(character)) {
                const textNode = document.createTextNode(line);
                txt.appendChild(textNode);
                txt.appendChild(document.createElement('br'));
            }
        });
    }

</script>
<script>
    var arr = document.getElementsByClassName("rd-nav-item");
    arr[3].classList.add("active")
</script>
</body>
</html>

