<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
</head>
<body>
    <form method="POST" action="/login/signin">
        <div id="app">
            <div>
                <div>회원가입</div>
            </div>
            <div id="loginBox">
                <div id="inputId">
                    <input type="text" placeholder="e-mail을 입력해주세요" id="email" name="email">
                </div>
                <div id="inputName">
                    <input type="text" placeholder="이름을 입력해주세요" id="name" name="name">
                </div>
                <div id="inputPw">
                    <input type="password" placeholder="비밀번호를 입력해주세요" id="password" name="password">
                </div>
                <div id="btns">
                    <input type="submit" id="confirmBtn" value="로그인" onclick="signin();" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>