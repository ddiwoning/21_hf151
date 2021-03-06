<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="h-100" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>user edit</title>
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
                           <h4>??????????????????</h4>
                        </a>

                        <form name="f" class="mt-5 mb-5 login-input" action="/user/regUserInfoProc.do" onsubmit="">
                           <div class="form-group">
                              <input type="text" class="form-control" placeholder="??????"
                                 required name="name" id="name">
                           </div>
                           <div class="form-group">
                              <input type="email" class="form-control" placeholder="?????????"
                                 required name="id" id="email">
                           </div>

                           <div id='email_check'></div>

                           <div class="form-group">
                              <input type="password" class="form-control" placeholder="????????????"
                                 required name="password" id="password">
                           </div>

                           <div class="form-group">
                              <input type="password" class="form-control"
                                 placeholder="???????????? ??????" required name="passwordCheck" id="passwordCheck">
                           </div>

                           <div id='pwd_check'></div>

                           ??????
                           <div class="gender">
                              <span class="gen-box"> <select aria-lable="??????"
                                 class="sel" name="sex" id="gender">
                                    <option value="1">??????</option>
                                    <option value="0">??????</option>
                              </select>
                              </span>
                           </div>
                           ????????????
                           <div class="birth">
                              <div class="bir-yy">
                                 <span class="bir-box"> <input type="text"
                                    placeholder="???(4??????)" aria-label="???(4??????)" maxlength="4"
                                    class="int" name="year" id="year"></span>
                              </div>
                              <div class="bir-mm">
                                 <span class="bir-box"> <select aria-lable="???"
                                    class="sel" name="month" id="month">
                                       <option value="">???</option>
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
                                    placeholder="???" aria-label="???" maxlength="2" class="int" name="day" id="day">
                                 </span>
                              </div>
                           </div>
                           <button id="button-event" class="btn login-form__btn submit w-100">????????????</button>
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
   //???????????? ????????? ????????? ????????????
   function doRegUserCheck(f){

      if (f.email.value==""){
         alert("???????????? ???????????????.");
         f.email.focus();
         return false;
      }

      if (f.user_name.value==""){
         alert("????????? ???????????????.");
         f.user_name.focus();
         return false;
      }

      if (f.password.value==""){
         alert("??????????????? ???????????????.");
         f.password.focus();
         return false;
      }

      if (f.password2.value==""){
         alert("????????????????????? ???????????????.");
         f.password2.focus();
         return false;
      }

      if (f.addr1.value==""){
         alert("????????? ???????????????.");
         f.addr1.focus();
         return false;
      }

      if (f.addr2.value==""){
         alert("??????????????? ???????????????.");
         f.addr2.focus();
         return false;
      }
   }
</script>

<!-- ?????? ????????? ?????? ????????? ????????? -->
   <script type="text/javascript">
   $('#email').blur(function () {
      var email = $('#email').val();
      $.ajax({
         url : '/user/regEmailCheck.do?email=' + email,
         type : 'post',
         dataType : 'text',
         success : function (data) {
            if(data == 1){
               $('#email_check').text('??????????????????.');
               $('#email_check').css('color', 'blue');
            }else{
               $('#email_check').text('???????????? ?????????????????????');
               $('#email_check').css('color', 'red');
            }
         }
      })
   });

     </script>

<!-- ?????? ???????????? ?????? ????????? ????????? -->
   <script type="text/javascript">
   $('#passwordCheck').blur(function () {
         var password = $('#password').val();
        var passwordCheck = $('#passwordCheck').val();

            if(password == passwordCheck){
               $('#pwd_check').text('??????????????? ???????????????');
               $('#pwd_check').css('color', 'blue');
            }else{
               $('#pwd_check').text('??????????????? ???????????? ????????????');
               $('#pwd_check').css('color', 'red');
            }

      });

     </script>
<!-- ???????????? ?????? ?????? ??? ???????????? ??? ????????? -->
<script>
  button.onclick = function(event) {
    if (event.altKey && event.shiftKey) {
      alert('???????????????????????????!');
    }
  };
</script>

</body>
</html>
