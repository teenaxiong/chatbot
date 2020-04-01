<%-- 
    Document   : chat
    Created on : Mar 29, 2020, 1:12:29 PM
    Author     : Ryan
--%>

<%@include file="header.jsp"%>
<style>

    body{
        border: 1px dashed #6495ED;
        height: 100%;
        background: linear-gradient(-45deg, #EE7752, #E73C7E, #23A6D5, #23D5AB);
        background-size:400% 400%; /**if not set, animation will not loop */
        -webkit-animation: Gradient 15s ease infinite;
        -moz-animation: Gradient 15s ease infinite;
        animation: Gradient 15s ease infinite;
    }
</style>
</head>
<%@include file="navigation.jsp" %>
<script language="javascript" type="text/javascript">
    function addtext() {
        var newtext = document.getElementById("testID").value;
        var allText = document.getElementById("QuestionBox").value;
        document.getElementById("QuestionBox").value = allText + "Your Question: \n" + newtext + "\n\n";

    }
</script>
<div class="paragraph-body">

    <br><br><br>
    <h1 id = "chatLabel">Chat:</h1>

    <textarea name="chatlog" id="QuestionBox" placeholder="Your Question: " required readonly>${chatHistory}</textarea><br><br>
    <form name="questionForm" method="post" action = "chat">
        <div id = "theQuestion">
            <div id = "QuestionBoxAndLabel">


                <input type = "text" name = "userInput" placeholder="Enter text here" id = "testID">



                <br><br>
            </div>
            <button type="submit" value = "Ask This Question" id="QuestionSubmitButton" onClick="addtext();">Send</button> 
            <!--<input type = "hidden" name = "action">-->
        </div>
    </form>
    <p id="backLink">Or click <a href="index.jsp">here</a> to go back.</p>

</div>
<%@include file="footer.jsp"%> 

