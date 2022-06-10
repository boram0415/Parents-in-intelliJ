<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<script>
	$(document).ready(function() {

		// 로그인 체크
		$("#loginBtn").click(function() {

			// json 형식으로 데이터 set
			var params = {
				userId : $("#userId").val(),
				userPw : $("#userPw").val(),
				userPnum : $("#userPnum").val()
			}

			// ajax 통신
			$.ajax({
				type : "POST", // HTTP method type(GET, POST) 형식이다.
				url : "/login/ajax", // 컨트롤러에서 대기중인 URL 주소이다.
				data : params, // Json 형식의 데이터이다.
				success : function(res) { // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
					if (res == '1111') {
						alert('가입완료');
					} else {
						alert('가입불가');
					}
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) { // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
					alert("통신 실패.")
				}
			});
		});

		// 편지 쓰기 클릭 시 로그인 모달 팝업
		$('#later_write').click(function() {
			if ($("#login_modal").css("display") == "none") {
				$("#login_modal").show();
			} else {
				$("#login_modal").hide();
			}
		});

		// 뒷배경 및 로그인 뒤로가기 클릭 시 모달창 숨기기
		$('.modal-back , .back_btn').click(function() {
			$('#login_modal').hide();
		})

		// 카카오 로그인 클릭 시
		$('#kakaoLoginBtn').click(function(){
			kakaoLogin();
		})

        $('#kakaoLogOutBtn').click(function(){
            kakaoLogout();
		})

        // 카카오 로그인
        Kakao.init('0c3979c7569108b4e9d2a25996805301'); //발급받은 키 중 javascript키를 사용해준다.
        console.log(Kakao.isInitialized()); // sdk초기화여부판단
        //카카오로그인
        function kakaoLogin() {
            Kakao.Auth.login({
                success: function (response) {
                    Kakao.API.request({
                        url: '/v2/user/me',
                        success: function (response) {
                            alert(response);
                            // console.log(response.response.code);
                            // location.href = "/kakaoLogin";
                            Kakao.API.request({
                                url : '/v2/user/me',
                                success:(res) =>{
                                    console.log('success!')
                                    alert(res.kakao_name);
                                }
                            });
                        },
                        fail: function (error) {
                            console.log(error)
                        },
                    })
                },
                fail: function (error) {
                    console.log(error)
                },
            });
        }
        //카카오로그아웃
        function kakaoLogout() {
            if (Kakao.Auth.getAccessToken()) {
                Kakao.API.request({
                    url: '/v1/user/unlink',
                    success: function (response) {
                        console.log(response)
                    },
                    fail: function (error) {
                        console.log(error)
                    },
                })
                Kakao.Auth.setAccessToken(undefined)
            }
        }

        // 오른쪽 메뉴 클릭 시
        $('.nav-box').on('click',(function () {
            // $('.nav-mainBox').css('display','block');
            $('.nav-mainBox').show().animate({
                right :'-' + 0 + 'px'
            });

        // $('.nav-xBox img').on('click',(function () {
        //     $('.nav-mainBox').hidden().animate({
        //         right :'-' + 0 + 'px'
        //     });
        // });

        $('.nav-xBox img').on('click',function(){
            $('.menu_bg').hide();
            $('.sidebar_menu').animate({
                right:'-' + 50 + '%'
            },function(){$('.modal-back').hide();});
        });


</script>

<script>
    $(document).ready(function(){

        $('.menu_btn>a').on('click', function(){
            $('.menu_bg').show();
            $('.sidebar_menu').show().animate({
                right:0
            });
        });
        $('.close_btn>a').on('click', function(){
            $('.menu_bg').hide();
            $('.sidebar_menu').animate({
                right: '-' + 50 + '%'
            },function(){$('.sidebar_menu').hide(); });
        });

    });
</script>


