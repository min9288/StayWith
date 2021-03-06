<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
    <link rel = "stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/default.css">
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/header&footer.css">
    <script type="text/javascript" src="/js/bootstrap.bundle.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <script>
        $(function(){
        	var name = $("#memberKname");
        	var email = $("#email");
            $("#m_idBtn").click(function(){
                $(".m_modal-wrapId").css("display","flex");
            });
            $("button[name=modalClose]").click(function(){
                $(".m_modal-wrapId").css("display","none");
                $("#m_idModal-content").css("display","block");
                $(".m_modal-result").css("display","none");
                name.val("");
                email.val("");
            });
            
        });
        $(function(){
        	var id = $("input[name=sMemberId]");
        	var name = $("input[name=sMemberKname]");
        	var email = $("#auEmail");
        	var auth = $("#authCode");
            $("#m_pwBtn").click(function(){
                $(".m_modal-wrapPw").css("display","flex");
            });
            $("button[name=modalClose]").click(function(){
                $(".m_modal-wrapPw").css("display","none");
                $("#m_pwModal-content").css("display","block");
                $(".m_modal-pwResult").css("display","none");
                id.val("");
                name.val("");
                email.val("");
                auth.val("");
            });
        });
    </script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"/>
		<div class="main">
		    <div class="m_loginBox" id="m_loginContent">
		        <div class="m_headT">
		            <h1 class="m_t">Login</h1>
		        </div>
		        <div class="m_greeting">
		            <h2 class="m_gt1">StayWith??? ?????? ?????? ???????????????.</h2>
		            <p id="m_gt2">???????????? ??????????????? ????????? ????????? ????????????.</p>
		        </div>
		        <ul class="m_loginForm">
		            <div class="m_loginHead">?????????</div>
		            <div class="m_loginContent">
		                <div class="m_formBox">
		                    <fieldset class="m_loginSet">
		                        <form action="/login" method="post" name="loginFrm">
		                            <div class="form-group" id="m_loginInput">
		                                <label class="form-label mt-4"></label>
		                                <div class="form-floating mb-3">
		                                    <input type="text" class="form-control" name="memberId">
		                                    <label for="floatingInput">Id</label>
		                                </div>
		                                <div class="form-floating" >
		                                    <input type="password" class="form-control" name="memberPw">
		                                    <label for="floatingPassword">Password</label>
		                                </div>
		                            </div>
		                            <div class="d-grid gap-2" id="m_loginBtn">
		                                <button class="btn btn-lg btn-primary" type="submit">?????????</button>
		                            </div>
		                        </form>
		                    </fieldset>
		                    <div class="m_btn">
		                        <a href="/joinFrm" id="m_leftBtn"><button type="button" class="btn btn-dark">????????????</button></a>
		                        <a class="m_rightBtn"><button type="button" class="btn btn-secondary" id="m_pwBtn">???????????? ??????</button></a>
		                        <a class="m_rightBtn"><button type="button" class="btn btn-secondary" id="m_idBtn">????????? ??????</button></a>
		                    </div>
		                </div>
		            </div>
		            <div class="m_modal-wrapId">
		                <div class="m_modal">
		                    <div class="m_modal-top">
		                        <a>????????? ??????</a>
		                    </div>
		                    <div class="m_modal-content" id="m_idModal-content">
		                            <div class="modalSubBox">
		                                <div class="adjustBox">
		                                    <div class="d-flex">
		                                        <a>??????(????????????)</a>
		                                    </div>
		                                    <input class="form-control form-control-sm" id="memberKname" name="memberKname" type="text" placeholder="????????? ??????????????????">
		                                    <div class="d-flex">
		                                        <a>?????????</a>
		                                    </div>
		                                    <input class="form-control form-control-sm" id="email" name="email" type="text" placeholder="????????? ??????????????????">
		                                </div>
		                            </div>
		                            <div class="adjustBtn">
		                            	<button type="button" class="btn btn-dark" name="modalClose">??????</button>
		                                <button type="button" class="btn btn-dark" id="modalIdBtn">??????</button>
		                            </div> 
		                    </div>
		                    <div class = "m_modal-result">
		                    	<div class="modalSubBox">
		                                <div class="adjustBox">
		                                    <div class="d-flex">
		                                        <a class="firstT"></a>
		                                        <a class="result"></a>
		                                    </div>
		                                </div>
		                         </div>
		                          <div class="adjustBtn">
		                              <button type="button" class="btn btn-dark" name="modalClose">??????</button>
		                          </div> 
		                    </div>
		                </div>
		            </div>
		            <div class="m_modal-wrapPw">
		                <div class="m_modal">
		                    <div class="m_modal-top">
		                        <a>???????????? ??????</a>
		                    </div>
			                    <div class="m_modal-content" id="m_pwModal-content">
			                            <div class="modalSubBox">
			                                <div class="adjustBox">
			                                    <div class="d-flex">
			                                        <a>?????????</a>
			                                        <input class="form-control form-control-sm" name="sMemberId" id="flexInputBox" type="text" placeholder="????????? ??????????????????">
			                                    </div>
			                                    <div class="d-flex">
			                                        <a>??????(????????????)</a>
			                                        <input class="form-control form-control-sm" name="sMemberKname" id="flexInputBox" type="text" placeholder="????????? ??????????????????">
			                                    </div>
			                                    <a>?????????</a>
			                                    <div class="d-flex">
			                                        <input class="form-control form-control-sm" id="auEmail" type="text" placeholder="????????? ??????????????????">
			                                        <button class="btn btn-secondary my-3 my-sm-0" name="sendMail" id="flexInputBox" type="button">???????????? ??????</button>
			                                    </div>
			                                    <div class="d-flex">
			                                        <input class="form-control form-control-sm" id="authCode" type="text" placeholder="??????????????? ??????????????????">
			                                        <button class="btn btn-secondary my-3 my-sm-0" name="authBtn" id="flexInputBox" type="button">???????????? ??????</button>
			                                    </div>
			                                    <div id="auth">
						                        	<span id="timeZone"></span>
													<span id="authMsg"></span>
						                        </div>
			                                </div>
			                            </div>
			                            <div class="adjustBtn">
			                                <button type="button" class="btn btn-dark" name="modalClose">??????</button>
			                                <button type="button" class="btn btn-dark" onclick="checkValue();" id="modalPwBtn">??????</button>
			                            </div>
			                	</div>
		                	<div class = "m_modal-pwResult">
				                    	<div class="modalSubBox">
				                               <div class="adjustBoxPw">
				                                    <div class="d-flex">
				                                       <!--  <a class="firstT"></a> -->
				                                        <a class="result"></a>
				                                    </div>
				                               </div>
				                        </div>
				                     <div class="adjustBtn">
				                            <button type="button" class="btn btn-dark" name="modalClose">??????</button>
				                     </div> 
		                   	</div> 
		             </div>
		        </div>
		    </div>
		</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
	<script>
		var resultArr = [false];
		$("#modalIdBtn").click(function(){
			var contentDiv = $("#m_idModal-content");
			var firstT = $(".firstT");
			var resultDiv = $(".m_modal-result");
			var result = $(".result");
			$.ajax({
				url : "/searchId",
				type:"post",
				data : {memberKname : $("#memberKname").val(), email : $("#email").val()},
				success : function(data){
					if(data != null){
						result.empty();
						firstT.empty();
						firstT.append("???????????? ???????????? ???????????? ")
						result.append(data.memberId+" ?????????.");
						contentDiv.hide();
						resultDiv.show();
					} else {
						contentDiv.hide();
						resultDiv.show();
						firstT.append("??????????????? ???????????? ????????????.");
					}
				}
			});
		});
		
		var mailCode;
		$("button[name=sendMail]").click(function(){
			var email = $("#auEmail").val();
			$.ajax({
				type : 'post',
				url : '/sendMail',
				data : {email:email},
				success : function(data){
					mailCode = data;
					$("#auth").slideDown();
					authTime();
				}
			});
		});
		var intervalId;
		function authTime(){
			$("#timeZone").html("<span id='min'>3</span> : <span id='sec'>00</span>");
			intervalId = window.setInterval(function(){
				timeCount();
			},1000);
		}
		function timeCount(){
			var min = Number($("#min").html());
			var sec = $("#sec").html();
			if(sec == "00"){
				if(min == 0){
					mailCode = null;
					clearInterval(intervalId);
				} else {
					$("#min").html(--min);
					$("#sec").html(59);
				}
			} else {
				var newSec = Number(sec);
				newSec--;
				if(newSec < 10){
					$("#sec").html("0"+newSec);
				}else {
					$("#sec").html(newSec);
				}
			}
		}
		$("button[name=authBtn]").click(function(){
			if (mailCode == null){
				$("#authMsg").html("???????????? ??????");
				$("#authMsg").css("color", "red");
				resultArr[0] = false;
			} else {
				if($("#authCode").val() == mailCode){
					$("#authMsg").html("????????????");
					$("#authMsg").css("color", "blue");
					clearInterval(intervalId);
					$("#timeZone").empty();
					resultArr[0] = true;
				} else {
					$("#authMsg").html("??????????????? ???????????????");
					$("#authMsg").css("color", "red");
					resultArr[0] = false;
				}
			}
		});
		
		function checkValue(){
			 if(resultArr[0] != true){
		         alert("????????? ??????????????????.");
		     }
        }
			$("#modalPwBtn").click(function(){
				if(resultArr[0] == true){
					var contentDiv = $("#m_pwModal-content");
					var resultDiv = $(".m_modal-pwResult");
					/* var firstT = $(".firstT"); */
					var result = $(".result");
					$.ajax({
						url : "/searchPw",
						type:"post",
						data : {memberId : $("input[name=sMemberId]").val(), memberKname : $("input[name=sMemberKname]").val(), email : $("#auEmail").val()},
						success : function(data){
							if(data != null){
								result.empty();
								/* firstT.empty(); */
								/* firstT.append("???????????? ???????????? ??????????????? ")
								result.append(data.memberPw); */
								result.attr("href", "/loginPartUpdatePwFrm?memberId="+data.memberId);
								result.append("<button type='button' class='btn btn-dark'>???????????? ??????</button>");
								contentDiv.hide();
								resultDiv.show();
							} else {
								contentDiv.hide();
								resultDiv.show();
								result.append("??????????????? ???????????? ????????????.");
							}
						}
					});
				}
			});
		
	</script>
</body>
</html>