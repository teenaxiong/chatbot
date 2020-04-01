<%-- 
    Document   : chat
    Created on : Mar 29, 2020, 1:12:29 PM
    Author     : Ryan
--%>

<%@include file="header.jsp"%>
<style>
   
header {

}
h3{
    float: left;
    font-weight: bold;
    font-size: 19px
}
html {
    height: 100%;
    text-align: center;
}
body {
    border: 1px dashed #6495ED;
    height: 100%;
  background: linear-gradient(-45deg, #EE7752, #E73C7E, #23A6D5, #23D5AB);
background-size:400% 400%; /**if not set, animation will not loop */
-webkit-animation: Gradient 15s ease infinite;
-moz-animation: Gradient 15s ease infinite;
animation: Gradient 15s ease infinite;
}
@-webkit-keyframes Gradient {
	0% {
		background-position: 0% 50%
	}
	50% {
		background-position: 100% 50%
	}
	100% {
		background-position: 0% 50%
	}
}

@-moz-keyframes Gradient {
	0% {
		background-position: 0% 50%
	}
	50% {
		background-position: 100% 50%
	}
	100% {
		background-position: 0% 50%
	}
}

@keyframes Gradient {
	0% {
		background-position: 0% 50%
	}
	50% {
		background-position: 100% 50%
	}
	100% {
		background-position: 0% 50%
	}
  
}
p {

    font-size: 19px;
    font-weight: bold;
}
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;

}
#chatLabel {
   margin-right: 20px;
   font-size: 60px;
}
#QuestionBoxAndLabel {
   margin-right: 60px;
   font-size: 30px;
}
#QuestionBox {
    height: 500px;
    width: 1000px;
    font-size: 20px;
}
#QuestionSubmitButton {
    font-size: 20px;
}
#picture1 {
height: 600px;
width: 600px;
margin-right: 50px;
margin-top: 75px;
}
#picture2 {
height: 600px;
width: 600px;
margin-left: 50px;
margin-top: 75px;
}
#dropdown {
    float: left;
    width: 50px;
    height: 100%;
}
#dropDownMenu {
    width: 220px;
    height: 50px;
    margin-left: 20px;
}
.optionText {
    font-size: 25px;
}
/*select option:checked {*/
    /*font-size: 40px;*/
/*}*/
select {
  /*-webkit-appearance: none;*/
  font-size: 25px;
}
#testID {
    width: 1000px;
    height: 40px;
    font-size: 20px;
  /*  margin-left: 58px;*/
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

