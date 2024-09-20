<%@ page import="com.ssm.domain.User" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ssm.domain.Comment" %>
<%@ page import="com.ssm.domain.Classics" %>
<%--
  Created by IntelliJ IDEA.
  User: 78431
  Date: 2023/11/18
  Time: 21:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="icon" href="/static/images/logotest.jpg" type="/static/image/x-icon">
    <style>
        .nav-links1 {
            font-family: Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace;
            font-size: 25px;
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .nav-links1 li {
            margin: 0;
        }

        .nav-links1 li a {
            display: block;
            color: black;
            text-decoration: none;
            padding: 10px;
            transition: all 0.3s ease;
        }

        .nav-links1 li a:hover {
            background-color: #01b3a7;
            color:white
        }
    </style>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        #chat-container {
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }
        /*#chat-messages {*/
        /*    height: 200px; !* 设置固定高度 *!*/
        /*    margin-bottom: 20px;*/
        /*    overflow-y: auto; !* 添加垂直滚动条 *!*/
        /*    padding: 10px;*/
        /*    border: 1px solid #ccc;*/
        /*    border-radius: 5px;*/
        /*}*/
        #chat-messages {
            height: 500px;
            margin-bottom: 20px;
            overflow-y: auto;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .message-container {
            display: flex;
            justify-content: flex-start;
            margin-bottom: 10px;
        }

        .user-message {
            background-color: #DCF8C6;
            align-self: flex-end;
        }

        .ai-message {
            background-color: #E0E0E0;
            align-self: flex-start;
        }

        .message-text {
            padding: 10px;
            border-radius: 10px;
        }

        .user-message .message-text {
            border-top-right-radius: 3px;
        }

        .ai-message .message-text {
            border-top-left-radius: 3px;
        }
        .myinput{
            width: 70%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
    <style>
        .post-boxed1 {
            font-family: Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace;
            width: 100%;
            padding: 15px 15px;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: 10px;
            text-align: left;
            background: #ffffff;
            transition: .33s;
            will-change: transform;
            box-shadow: 0 0 7px 0 rgba(0, 0, 0, 0.19);
            display: flex;
        }

        .post-boxed1:hover {
            transform: scale3d(1.05, 1.05, 1.05);
            box-shadow: 0 0 7px 0 rgba(0, 0, 0, 0.19);
        }

        h3{
            color:darkgray;
            font-size: 18px;
            white-space: pre-wrap;
        }
        .p1 {
            font-size: 15px;
            white-space: pre-wrap;
            word-wrap: break-word;
            overflow:hidden;
            background-color:white;
            border: 0;
            font-weight: bold;
            overflow:hidden;
            background-color:white;
            border: 0;
            font-weight: bold;
            margin-left: 20%;
            margin-right: 25%;
        }
        hr {
            opacity: 0.2;
            margin: 10px;
        }
        .hotel {
            font-family: Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace;
            display: flex;
            flex-direction: row;
            justify-content: flex-start;
            align-items: baseline;
            font-weight: bold;
        }
        .alert {
            padding: 15px;
            border-radius: 4px;
            color: black;
            background-color: #00bd9d;
            position: fixed;
            top: 50%; /* 将 top 改为 50% */
            left: 50%; /* 新增 left 属性 */
            transform: translate(-50%, -50%); /* 使用 transform 属性进行居中 */
            z-index: 1000;
            display: none;
        }

    </style>
</head>
<body>
<jsp:include page="../pages/PageHeader.jsp" />
<link rel="icon" href="/static/images/logotest.jpg" type="image/x-icon">
<%
    Object object= request.getAttribute("user");
    Object object1=request.getAttribute("comment");
    List<Comment> commentList=(List<Comment>) object1;
    User user=(User)object;
    if (object==null){
        User usernull=new User();
        usernull.setUsername("游客");
        usernull.setPassword("123456");
        usernull.setEmail("暂无");
        user=usernull;
    }

%>
<div id="myAlert" class="alert">

</div>
<div class="shell">
    <div class="tabs-custom tabs-vertical tabs-corporate text-center" >
        <ul class="nav nav-links1" style="display: block;margin-left: 10%;">
            <li class="active"><a href="#tabs1" data-toggle="tab" style="text-align: center"><span>Account</span></a></li>
            <li><a href="#tabs2" data-toggle="tab" style="text-align: center"><span>Collection</span></a></li>
            <li><a href="#tabs3" data-toggle="tab" style="text-align: center"><span>comment</span></a></li>
            <li><a href="#tabs4" data-toggle="tab" style="text-align: center"><span>Atom-GPT</span></a></li>
        </ul>

        <div class="tab-content" style="margin: 0%;">

            <div id="tabs1" class="tab-pane active">
                <!-- <img src="images/about-4-649x427.jpg"> -->
                <div class="hotel">
                    <h4>Username</h4>
                    <input class="p1" type="text" value="<%=user.getUsername()%>" id="un" readonly/>
                    <div>账号不可更改</div>
                </div>
                <hr>
                <div class="hotel">
                    <h4>Password</h4>
                    <input class="p1" type="password" value="<%=user.getPassword()%>" id="ps" readonly/>
                    <div style="font-size: 25px;" class="fl-bigmug-line-lock64" id="lock2" onclick="unlock2()"></div>
                </div>
                <hr>
                <div class="hotel">
                    <h4>Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4>
                    <input class="p1" type="text" value="<%=user.getEmail()%>" id="email" readonly/>
                    <div style="font-size: 25px;" class="fl-bigmug-line-lock64" id="lock1" onclick="unlockElement(id,'email')"></div>

                </div>
                <hr>
                <div style="font-size: 20px;display: flex;justify-content: center" class="fl-bigmug-line-two316" id="save1" onclick="update()"><a>更新</a></div>
                <div style="font-size: 20px;display: flex;justify-content: center;margin: 10px" id="msg"></div>


            </div>

            <div id="tabs2" class="tab-pane">
                <%if (commentList!=null){
                List<Classics> classicsList= (List<Classics>) request.getAttribute("collection");
                for (int i=0;i<classicsList.size();i++){
                    Classics classics=classicsList.get(i);
                %>
                <section id="collection<%=classics.getId()%>" class="post-boxed1">

                    <div class="row row-sm row-40 row-md-50">
                        <div class="col-sm-6 col-md-12 wow fadeInRight" >
                            <!-- Product Big-->
                            <article class="product-big" style="height: 240px;">
                                <div style="display: flex ;">
                                    <div class="box-icon-classic-icon fl-bigmug-line-download136" style="margin: 10px"></div>
                                    <h4 class="product-big-title" style=" text-align: center;color: #63bbe8;margin-top: 20px">
                                        <span style="color: #00aced"><%=classics.getTitle()%></span>
                                    </h4>
                                    <span id="star" class="icon material-icons-star" style="font-size: 300%;display: flex;align-items: center;color: #ffcc00;margin-left: 80%;" onclick="removestar(<%=classics.getId()%>)"></span>
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
                    </div>
                </section>
            <%}}else {%>
                <span style="display: flex;justify-content: center;align-items: center;color: red;font-size: 50px;"><%=request.getAttribute("message")%></span>
                <%}%>
            </div>

            <div id="tabs3" class="tab-pane ">
                <%if (commentList!=null){
                    for (int i=0;i<commentList.size();i++){
                %>
                <div id="comment<%=commentList.get(i).getId()%>" class="post-boxed1" style="width: 90%;display:flex;flex-direction: row;align-items: center;">
                    <div>
                        <p style="color: #00bd9d;font-size: 20px;">书名：<%=commentList.get(i).getTitle()%></p>
                        <P style="margin-top: 0px;">评论：<%=commentList.get(i).getText()%></p>
                    </div>
                    <div style="margin-left: 80%;font-size: 30px;" onclick="deletesay(<%=commentList.get(i).getId()%>)"><span class="fl-bigmug-line-cross81"></span></div>
                </div>
                <%}}else {%>
                <span style="display: flex;justify-content: center;align-items: center;color: red;font-size: 50px;"><%=request.getAttribute("message")%></span>
                <%}%>
            </div>

            <div id="tabs4" class="tab-pane">
                <div id="chat-container">
                    <div id="chat-messages"></div>
                    <input class="myinput" type="text" id="user-input">
                    <button onclick="sendMessage()">Send</button>
                </div>
            </div>

        </div>
    </div>
</div>
<script src="/static/js/axios-0.18.0.js"></script>
<script>
    var lock2= document.getElementById("lock2")
    var ps= document.getElementById("ps")


    var list=[]

    function unlockElement(lockElementId, unElementId) {
        var lockElement = document.getElementById(lockElementId);
        var unElement = document.getElementById(unElementId);

        if (lockElement.className === "fl-bigmug-line-lock64") {
            lockElement.setAttribute("class", "fl-bigmug-line-unlocked27");
            unElement.removeAttribute("readonly");
        } else {
            lockElement.setAttribute("class", "fl-bigmug-line-lock64");
            unElement.setAttribute("readonly", "readonly");
        }
    }

    function unlock2(){
        if(lock2.className==="fl-bigmug-line-lock64"){
            lock2.setAttribute("class","fl-bigmug-line-unlocked27")
            ps.setAttribute("type","text")
            ps.removeAttribute("readonly");
        }else{
            lock2.setAttribute("class","fl-bigmug-line-lock64")
            ps.setAttribute("type","password")
            ps.setAttribute("readonly","readonly")
        }
    }
    function removestar(id) {
        axios.delete("/collection/delete/"+id).then(res=>{
            var divToRemove = document.getElementById("collection"+id);
            while (divToRemove.firstChild) {
                divToRemove.removeChild(divToRemove.firstChild);
            }
            divToRemove.parentNode.removeChild(divToRemove);
        })
    }

    function update() {
        var username=document.getElementById("un").value
        var password= document.getElementById("ps").value
        var email=document.getElementById("email").value

        axios.post("/update",{
            username:username,
            password: password,
            email: email,
        }).then(res=>{
            document.getElementById("msg").innerText=res.data.msg;
        })
    }
    function deletesay(id) {
        axios.delete("/comment/delete/"+id).then(res=> {
            var divToRemove = document.getElementById("comment"+id);
            while (divToRemove.firstChild) {
                divToRemove.removeChild(divToRemove.firstChild);
            }
            divToRemove.parentNode.removeChild(divToRemove);
        })
    }


</script>
<script>
    function sendMessage() {
        var userInput = document.getElementById('user-input').value;
        addMessage("You", userInput);
        axios.post("/AI/"+userInput).then(res=>{
            // text.innerText = '';
            // text.innerText=res.data.data
            addMessage("AI", res.data.data);
        })
        document.getElementById('user-input').value = "";
    }

    function addMessage(sender, message) {
        var chatMessages = document.getElementById('chat-messages');
        var messageContainer = document.createElement('div');
        var messageDiv = document.createElement('div');

        messageContainer.classList.add('message-container');
        messageDiv.textContent = message;
        messageDiv.classList.add('message-text');

        if (sender === "You") {
            messageContainer.classList.add('user-message');
        } else {
            messageContainer.classList.add('ai-message');
        }

        messageContainer.appendChild(messageDiv);
        chatMessages.appendChild(messageContainer);
    }
</script>
<script>
    document.getElementById('user-input').addEventListener('keydown', function(event) {
        if (event.keyCode === 13) {
            sendMessage()
        }
    });
</script>
<script>
    var arr = document.getElementsByClassName("rd-nav-item");
    arr[5].classList.add("active")
</script>
</body>
</html>

