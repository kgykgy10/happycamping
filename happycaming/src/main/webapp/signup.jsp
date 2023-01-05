<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8" %>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>메인화면</title>

<link rel="stylesheet" href="./Resources/css/style.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

<!-- JavaScript Bundle with Popper -->

<style>

.mainname {font-size: 35px; font-weight: bold}

h2 {font-weight: bold;

}

a {color:black;

text-decoration: none;}

.header {display:flex;
      justify-content:center;
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



<hr>

<div class="membership">

<h3>간편 회원가입</h3>

<form name="newMember" action="./processSignup.jsp" class="form-horizontal" method="post">

<p><label for="mem_id">ID : </label><input type="text" name="mem_id" size="30" value="" style="background-color: gainsboro;"></p>

<p><label for="email">EMAIL : </label><input type="text" name="email" size="30" style="background-color: gainsboro;"></p>

<p><label for="pw">PW : </label><input type="text" name="pw" size="30" style="background-color: gainsboro;"></p>

<p><label for="pwc">PW확인 : </label><input type="text" name="pwc" size="30" style="background-color: gainsboro;"></p>

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