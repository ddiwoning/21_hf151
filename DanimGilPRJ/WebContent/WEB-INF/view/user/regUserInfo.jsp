<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="h-100" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>회원가입</title>
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
   href="../resource/assets/images/favicon.png">
<!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous"> -->
<link href="../resource/css/style.css" rel="stylesheet">
<style>
.birth {
   margin-top: 10px;
   margin-bottom: 10px;
}

.bir-yy+.bir-mm {
   padding-left: 10px;
}

.bir-mm+.bir-dd {
   padding-left: 10px;
}

.bir-yy, .bir-mm, .bir-dd {
   display: table-cell;
   width: 10%;
   vertical-align: middle;
}

.bir-box {
   display: block;
   position: relative;
   width: 100%;
   height: 50px;
   border: solid 1px #dadada;
   background: #fff;
   box-sizing: border-box;
   vertical-align: top;
   padding: 11px 14px;
}

.gen-box {
   display: block;
   position: relative;
   width: 100%;
   height: 50px;
   border: solid 1px #dadada;
   background: #fff;
   box-sizing: border-box;
   vertical-align: top;
   padding: 11px 14px;
}

.gender {
   margin-bottom: 10px;
}

.int {
   display: block;
   position: relative;
   width: 100%;
   height: 100%;
   padding-right: 25px;
   line-height: 29px;
   border: none;
   background: #fff;
   font-size: 15px;
   box-sizing: border-box;
   z-index: 10;
}

:root .sel {
   background: #fff url(../resource/image/custom-select.png) 100% 50%
      no-repeat;
   background-size: 20px 8px;
}

.sel {
   width: 100%;
   height: 100%;
   font-size: 15px;
   line-height: 18px;
   color: #000;
   border: none;
   border-radius: 0;
   -webkit-appearance: none;
}
</style>



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

                        <a class="text-center">
                           <h4>회원가입</h4>
                        </a>

                        <form name="f" class="mt-5 mb-5 login-input" action="/user/regUserInfoProc.do" onsubmit="">
                           <div class="form-group">
                              <input type="text" class="form-control" placeholder="이름"
                                 required name="name" id="name">
                           </div>
                           <div class="form-group">
                              <input type="email" class="form-control" placeholder="이메일"
                                 required name="id" id="email">
                           </div>
                           
                           <div id='email_check'></div>

                           <div class="form-group">
                              <input type="password" class="form-control" placeholder="비밀번호"
                                 required name="password" id="password">
                           </div>
                           
                           <div class="form-group">
                              <input type="password" class="form-control"
                                 placeholder="비밀번호 확인" required name="passwordCheck" id="passwordCheck">
                           </div>
                           
                           <div id='pwd_check'></div>
                           
                           성별
                           <div class="gender">
                              <span class="gen-box"> <select aria-lable="성별"
                                 class="sel" name="sex" id="gender">
                                    <option value="1">남성</option>
                                    <option value="0">여성</option>
                              </select>
                              </span>
                           </div>
                           생년월일
                           <div class="birth">
                              <div class="bir-yy">
                                 <span class="bir-box"> <input type="text"
                                    placeholder="년(4자리)" aria-label="년(4자리)" maxlength="4"
                                    class="int" name="year" id="year"></span>
                              </div>
                              <div class="bir-mm">
                                 <span class="bir-box"> <select aria-lable="월"
                                    class="sel" name="month" id="month">
                                       <option value="">월</option>
                                       <option value="1">01</option>
                                       <option value="2">02</option>
                                       <option value="3">03</option>
                                       <option value="4">04</option>
                                       <option value="5">05</option>
                                       <option value="6">06</option>
                                       <option value="7">07</option>
                                       <option value="8">08</option>
                                       <option value="9">09</option>
                                       <option value="10">10</option>
                                       <option value="11">11</option>
                                       <option value="12">12</option>
                                 </select>
                                 </span>
                              </div>
                              <div class="bir-dd">
                                 <span class="bir-box"> <input type="text"
                                    placeholder="일" aria-label="일" maxlength="2" class="int" name="day" id="day">
                                 </span>
                              </div>
                           </div>
                           <button class="btn login-form__btn submit w-100">가입하기</button>
                        </form>
                        <p class="mt-5 login-form__footer">
                           이미 가입하셨나요? <a href="/user/userLogin.do" class="text-primary">로그인
                           </a>
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
   <script type="text/javascript">
	//회원가입 정보의 유효성 체크하기
	function doRegUserCheck(f){

		if (f.email.value==""){
			alert("이메일을 입력하세요.");
			f.email.focus();
			return false;
		}
		
		if (f.user_name.value==""){
			alert("이름을 입력하세요.");
			f.user_name.focus();
			return false;
		}
		
		if (f.password.value==""){
			alert("비밀번호를 입력하세요.");
			f.password.focus();
			return false;
		}
		
		if (f.password2.value==""){
			alert("비밀번호확인을 입력하세요.");
			f.password2.focus();
			return false;
		}
		
		if (f.addr1.value==""){
			alert("주소를 입력하세요.");
			f.addr1.focus();
			return false;
		}
		
		if (f.addr2.value==""){
			alert("상세주소를 입력하세요.");
			f.addr2.focus();
			return false;
		}
	}
</script>

<!-- 유저 이메일 중복 확인용 아작스 -->
   <script type="text/javascript">
   $('#email').blur(function () {
		var email = $('#email').val();
		$.ajax({
			url : '/user/regEmailCheck.do?email=' + email,
			type : 'post',
			dataType : 'text',
			success : function (data) {
				if(data == 1){
					$('#email_check').text('이상없습니다.');
					$('#email_check').css('color', 'blue');
				}else{
					$('#email_check').text('이메일이 중복되었습니다');
					$('#email_check').css('color', 'red');
				}
			}
		})
	});
   
  	</script>
  	
<!-- 유저 비밀번호 중복 확인용 아작스 -->
   <script type="text/javascript">
   $('#passwordCheck').blur(function () {
	   	var password = $('#password').val();
	  	var passwordCheck = $('#passwordCheck').val();
	  	
				if(password == passwordCheck){
					$('#pwd_check').text('비밀번호가 일치합니다');
					$('#pwd_check').css('color', 'blue');
				}else{
					$('#pwd_check').text('비밀번호가 일치하지 않습니다');
					$('#pwd_check').css('color', 'red');
				}
			
		});
   
  	</script>
   
</body>
</html>





