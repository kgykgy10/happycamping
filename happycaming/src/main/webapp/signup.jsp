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

<div class="header">
    
      <a href="Main.jsp" class="mainname"> 해피캠핑장 </a>
  
      <a href="2login.html" class="login">로그인 ｜</a>
      <a href="signup.jsp">회원가입 ｜</a>
      <a href="#">고객센터</a>
    
  </div>
  
  <!-- 본문 영역 -->
  <div class="contents">
  
      <nav class="navbar navbar-expand-lg bg-light">
        <div class="container-fluid">
          
          <div class="collapse navbar-collapse" id="navbarNav">
  
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="#">캠핑장 소개</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="products.jsp">온라인 예약</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="addProduct.jsp">캠핑사이트 추가</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="4gallery.html">갤러리</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">오시는 길</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </div>
  
<hr>

    <div class="membership">
          <h3>간편 회원가입</h3>
          <form name="newMember" action="./processSignup.jsp" class="form-horizontal" method="post">
          <p><input type="text" name="email" size="30" value="이메일주소" style="background-color: gainsboro;"></p>
            <p><input type="text" name="id" size="30" value="아이디" style="background-color: gainsboro;"></p>
            <p><input type="text" name="pw" size="30" value="비밀번호" style="background-color: gainsboro;"></p>
            <p><input type="text" name="pwc" size="30" value="비밀번호 확인" style="background-color: gainsboro;"></p>
          <p></p>
          <input type="submit" value="회원가입에 동의합니다." style="background-color:cornflowerblue; color:white;">
          </form>
    </div>
  
  
 
  <hr>
  
  <!-- 푸터 영역 -->
  <div class="footer">
    <h5>상호명 : (주)해피캠핑장 / 대표 : 김가영 </h5>
  </div>
  
    





</body>
</html>