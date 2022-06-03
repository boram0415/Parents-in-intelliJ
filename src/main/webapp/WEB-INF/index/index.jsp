<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header/header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Parents'Day Later</title>

    <link rel="stylesheet" href="/css/index.css">
    <link rel="stylesheet" href="/css/modal.css">
   	<!-- <link rel="stylesheet" href="../static/css/index.css">
   	<link rel="stylesheet" href="../static/css/modal.css"> -->
 
</head>
<body>
    <div class="main-container">
        <div class="main-sub">
            <header class="header-con">
                <div class="header-box">
                    <div class="logo-con">
                        <div class="">Carnation letters</div>
                        <!-- <div class="logo-img">
                            <img src="../static/img/KakaoTalk_20220501_231035909.png" alt="">
                        </div> -->
                    </div>
                    <div class="nav-box">
                        <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTgiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxOCAxNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEgMUgxNyIgc3Ryb2tlPSIjMjMyMzIzIiBzdHJva2Utd2lkdGg9IjIiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMSA4SDE3IiBzdHJva2U9IiMyMzIzMjMiIHN0cm9rZS13aWR0aD0iMiIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xIDE1SDE3IiBzdHJva2U9IiMyMzIzMjMiIHN0cm9rZS13aWR0aD0iMiIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo="
                            alt="">
                    </div>
                </div>
            </header>

            <div class="section-fir padding-box">
                <div class="image-box">
                    <!--<img src="../static/img/flowers.png" alt="" class="flower">-->
                     <img src="/img/flowers.png" alt="" class="flower"> 
                </div>
            </div>

            <div class="section-scd padding-box">
                <div class="text-box">
                    어버이날 기억에 남는 편지를 전하고 싶으신가요?<br>
                    카네이션 편지로 부모님께 마음을 전하세요.!
                </div>
            </div>

            <div class="section-but-box padding-box">
                <div class="button-box"></div>
                <div class="default-button" id="later_write">부모님께 마음 전하기</div>
            </div>
        </div>

        <!-- 옆 메뉴 클릭 시  -->
        <nav>
            <div class="nav-con"></div>
        </nav>

    </div>
	<!--하단 -->
    <div class="footer-con">
        <div class="footer-box">
            <div class="">
                <div class="ipm" style="font-size: 1.5rem;">
                    CONTACT
                </div>
                <div class="" style="font-family: 'Noto Sans KR', sans-serif;">
                    <div class="" style="font-size: 1rem;"><strong style="font-size: 16px;">Phone</strong> 010-1234-5678
                    </div>
                    <div class="" style="font-size: 1rem;"><strong style="font-size: 16px;">Email</strong>
                        test@naver.com</div>
                    <!-- <div class="ipm"style="font-size: 12px;"><strong style="font-size: 16px;"><a href="https://github.com/boram0415/ParentsDay"></a>GitHub</strong></div> -->
                </div>
            </div>
        </div>
    </div>

    <!-- 회원가입 모달 -->
    <div class="modal-con" id="login_modal">
        <div class="modal-back"></div>
        <div class="modal-box">
            <div class="modal-sub">
                <div class="modal-back-btn "> <img src="img/pngwing.com.png" alt=""class="back_btn"> </div>
                <div class="modal-main-box dis-center">
                    <div class="" style="width: 93.5%;">
                        <div class="modal-blank-top">
                            이메일
                        </div>
                        <div class="modal-input-brd dis-center">
                            <input type="text" id="userId" class="modal-input">
                        </div>
                        <div class="modal-blank-buttom" style="margin-top: 20px;">
                            비밀번호
                        </div>
                        <div class="modal-input-brd dis-center">
                            <input type="text" id="userPw" class="modal-input">
                        </div>
                    </div>
                </div>
    
                <div class="modal-login-box" >
                    <div type="submit" id="loginBtn" class="modal-default-button">로그인</div>
                    <div type="submit" id="kakaoLoginBtn" class="modal-default-button kakao-login" onclick="javascript:kakaoLogin();">카카오톡 로그인</div>
                    <div class="modal-join">
                        <div class="modal-join-box">회원가입</div>
                        <div class="black"></div>
                        <div class="modal-join-box">아아디 찾기</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>