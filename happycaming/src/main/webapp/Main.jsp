<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메인화면</title>
    <link rel="stylesheet" href="style.css">
    

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

<style> 

.mainname {font-size: 35px; font-weight: bold}

h2 {font-weight: bold;
}

a {color:black;
text-decoration: none;}

.header {display:flex;
      justify-content: right;
      background-color: darkgray;
              }
div a.login {
  margin-left:30%;
}

#navbarNav {justify-content:center;
}

.nav-link {color: rgba(34, 112, 228, 0.863); font-size: larger; font-weight: bold;}


.frcheck {
  display: grid;
  grid-template-columns: 1fr 1fr;
  margin: 50px;
  padding: 20px;
}

.footer {display: flex; justify-content:center;}

</style>



</head>
<body>
<jsp:include page ="menu.jsp"/>

<%-- <div class="header">
    
      <a href="Main.jsp" class="mainname"> 해피캠핑장 </a>
  
      <a class="login" href="<c:url value="/member/loginMember.jsp"/>" >로그인 ｜</a>
      <a href="signup.jsp">회원가입 ｜</a>
      <a href="#">고객센터</a>
    
  </div> --%>
  
  
  
  <!-- 본문 영역 -->
<!--   <div class="contents"> -->
  
<!--       <nav class="navbar navbar-expand-lg bg-light"> -->
<!--         <div class="container-fluid"> -->
          
<!--           <div class="collapse navbar-collapse" id="navbarNav"> -->
  
<!--             <ul class="navbar-nav"> -->
<!--               <li class="nav-item"> -->
<!--                 <a class="nav-link" href="#">캠핑장 소개</a> -->
<!--               </li> -->
<!--               <li class="nav-item"> -->
<!--                 <a class="nav-link" href="products.jsp">온라인 예약</a> -->
<!--               </li> -->
<!--               <li class="nav-item"> -->
<!--                 <a class="nav-link" href="addProduct.jsp">캠핑사이트 추가</a> -->
<!--               </li> -->
<!--               <li class="nav-item"> -->
<!--                 <a class="nav-link" href="4gallery.html">갤러리</a> -->
<!--               </li> -->
<!--               <li class="nav-item"> -->
<!--                 <a class="nav-link" href="#">오시는 길</a> -->
<!--               </li> -->
<!--             </ul> -->
<!--           </div> -->
<!--         </div> -->
<!--       </nav> -->
<!--     </div> -->
  
<hr>

    <div class="frcheck">
          <div style="margin-right:50px" ><img src="캠핑장사진.jpg" width="650" height="400"></div>
          <div><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13048.349008167017!2d129.0606459986137!3d35.15444467025207!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3568eb6feb39fa0d%3A0x17502eaffb28a5b4!2z67aA7IKwSVTqtZDsnKHshLzthLA!5e0!3m2!1sko!2skr!4v1668663120411!5m2!1sko!2skr" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" width="500" height="300" ></iframe>       
          </div>
        </div>  
   
    
    <div style="margin-left:70px">
      <div>
        <h5>공지사항</h5>
        <!-- <a href="*">더보기</a> -->
        <ul>
          <li><a href="*">동계에는 난로 및 난방기구 사용을 금합니다.</a></li>
          <li><a href="*">예약 오픈은 매월 4일 진행합니다.</a></li>
          <li><a href="*">매너타임은 밤 10시까지입니다.</a></li>
          <li><a href="*">캠핑카 진입이 불가합니다.</a></li>
        </ul>
      </div>
    </div>
  
  </div>
  
  
 
  <hr>
  
  <!-- 푸터 영역 -->
  <div class="footer">
    <h5>상호명 : (주)해피캠핑장 / 대표 : 김가영 </h5>
  </div>
  
    





</body>
</html>