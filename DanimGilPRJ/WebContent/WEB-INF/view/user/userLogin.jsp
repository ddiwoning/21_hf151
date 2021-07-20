<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html class="h-100" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>로그인</title>
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
   href="../resource//image/favicon.png">
<!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous"> -->
<link href="../resource/css/style.css" rel="stylesheet">

</head>

<body class="h-100">

   <!--*******************
        Preloader start
    ********************-->
   <div id="preloader">
      <div class="loader">
         <svg class="circular" viewBox="25 25 50 50">
                <circle class="path" cx="50" cy="50" r="20" fill="none"
               stroke-width="3" stroke-miterlimit="10" />
            </svg>
      </div>
   </div>
   <!--*******************
        Preloader end
    ********************-->

   <div class="login-form-bg h-100">
      <div class="container h-100">
         <div class="row justify-content-center h-100">
            <div class="col-xl-6">
               <div class="form-input-content">
                  <div class="card login-form mb-0">
                     <div class="card-body pt-5">
                        <a class="text-center" href="index.html">
                           <h4>로그인</h4>
                        </a>

                        <form class="mt-5 mb-5 login-input" action="/user/userLoginProc.do">
                           <div class="form-group">
                              <input type="text" class="form-control" placeholder="이메일" name='id' id="userEmail">
                           </div>
                           
                           <div id='email_check'></div>
                           
                           <div class="form-group">
                              <input type="password" class="form-control" placeholder="비밀번호" name='pwd'>
                           </div>
                           <button class="btn login-form__btn submit w-100">로그인
                              하기</button>
                        </form>
                        <p class="mt-5 login-form__footer" style="text-align: center">
                           <a href="/user/sodoi.do" class="text-primary">아이디/비밀번호찾기</a>
                           <a href="regUserInfo.do" class="text-primary">회원가입</a>
                        </p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!--**********************************
        Scripts
    ***********************************-->
   <script src="../resource/plugins/common/common.min.js"></script>
   <script src="../resource/js/custom.min.js"></script>
   <script src="../resource/js/settings.js"></script>
   <script src="../resource/js/gleek.js"></script>
   <script src="../resource/js/styleSwitcher.js"></script>
   
   <!-- 유저 아이디 확인용 아작스 -->
   <script type="text/javascript">
   $('#userEmail').blur(function () {
		var email = $('#userEmail').val();
		$.ajax({
			url : '/user/loginEmailCheck.do?email=' + email,
			type : 'get',
			dataType : 'text',
			success : function (data) {
				if(data == 0){
					$('#email_check').text('이메일을 확인해주세요');
					$('#email_check').css('color', 'red');
					$('#loginSubmit').attr('disabled', true);
				}else{
					$('#email_check').text('이상없습니다.');
					$('#email_check').css('color', 'blue');
					$('#loginSubmit').attr('disabled', false);
				}
			}
		})
	});
   
  	</script>
</body>
</html>





