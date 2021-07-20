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

.rank-box {
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

.rank {
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
                           <h4>새 직원 등록</h4>
                        </a>

                        <form name="f" class="mt-5 mb-5 login-input" action="/detail/addEmpProc.do" onsubmit="return doRegEmpCheck(this);">
                           <div class="form-group">
                              <input type="text" class="form-control" placeholder="직원번호"
                                 name="empno" id="empnoAjax" value=""/>
                                 
                           <div id="empnoCheck"></div>
                           
                           </div>
                           <div class="form-group">
                              <input type="email" class="form-control" placeholder="직원이름"
                                 name="ename">
                           </div>
                           
                           직급
                           <div class="rank">
                              <span class="rank-box"> <select aria-lable="성별"
                                 class="sel" name="rank" id="rank">
                                 	<option selected>직급 선택</option>
                                    <option value="0">매니저</option>
                                    <option value="1">알바생</option>
                              </select>
                              </span>
                           </div>
                           
                           <div class="form-group">
                              <input type="tel" class="form-control" placeholder="전화번호"
                                 name="phone">
                           </div>
                           
                           <div class="form-group">
                              <input type="email" class="form-control" placeholder="이메일"
                                 name="email">
                           </div>
                           
                           <div class="form-group">
                              <input type="url" class="form-control" placeholder="주소"
                                 name="adress">
                           </div>
                           
                           출근 시간 입력
                           <div class="form-group">
                              <input type="time" class="form-control" placeholder="출근시간"
                                 name="att_time" id="att_time">
                           </div>
                           
                           퇴근 시간 입력
                           <div class="form-group">
                              <input type="time" class="form-control" placeholder="퇴근시간"
                                 name="off_time" id="off_time">
                           </div>

                         <div>직원 얼굴 학습 <input type="button" value="얼굴학습하기"  onclick="faceHakSep();"> </div>
							
                         </div>
                           <button class="btn login-form__btn submit w-100" id="addEmpSubmit">등록하기</button>
                        </form>

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




