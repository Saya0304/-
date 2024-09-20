<%--
  Created by IntelliJ IDEA.
  User: 78431
  Date: 2024/2/19
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>classicspdf</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <link rel="icon" href="/static/images/logotest.jpg" type="image/x-icon">
    <style>.ie-panel{display: none;background: #212121;padding: 10px 0;box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3);clear: both;text-align:center;position: relative;z-index: 1;} html.ie-10 .ie-panel, html.lt-ie-10 .ie-panel {display: block;}</style>
    <script src="/static/js/pdfobject.js"></script>
</head>
<body>
<%@include file="../pages/PageHeader.jsp"%>

<div id="pdf"></div>
<style>
    .pdfobject-container {
        /* width: 936px; height: 902px;  */
        max-width: 100%;
        width: 100%;
        height: 640px;
        border: 5px solid rgba(0,0,0,.3);
    }
</style>
<script>

    var options = {
        pdfOpenParams: {
            page: 1, //页面
            toolbar: 1,  // 关闭工具栏
            navpanes: 1,
            statusbar: 1,
            view: "FitV",
            scrollbars: "0",
        }
    };

    var title='<%=request.getAttribute("title")%>'
    if(PDFObject.supportsPDFs){
        PDFObject.embed("/static/pdffile/"+title+".pdf","#pdf",options);
    }else{alert("Mobile browsers currently do not support PDF document viewing, please go to PC to view")}


</script>

</body>
</html>
