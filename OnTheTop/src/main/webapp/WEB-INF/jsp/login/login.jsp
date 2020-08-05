<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
    function isEmpty(str) {
        if (typeof str == "undefined" || str == null || str == "")
            return true;
        else
            return false;
    }
    function loginCheck() {
        var id = document.querySelector('#id').value;
        var password = document.querySelector('#password').value;

        if (isEmpty(id) == true || isEmpty(password) == true) {
            alert("아이디 또는 비밀번호를 입력해주세요.");
            break;
        } else {
            $.ajax({
                type: "POST",
                url: "/login/check",
                data: {
                    id: id,
                    password: password
                },
                contentType: "charset=utf-8",
                success: function () {
                    console.log('good');
                },
                error: function () { console.log('bad'); }
            });
        }
    }
</script>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
    <form method="POST" action="/login/callback">
        <div id="app">
            <div>
                <div>로그인</div>
            </div>
            <div id="loginBox">
                <div id="inputId">
                    <input type="text" placeholder="아이디(사번)을 입력해주세요" id="id" name="id">
                </div>
                <div id="inputPw">
                    <input type="password" placeholder="비밀번호를 입력해주세요" id="password" name="password">
                </div>
                <div id="btns">
                    <input type="submit" id="loginBtn" value="로그인" onclick="loginCheck();" />
                    <input type="button" id="signupBtn" value="회원가입" onclick="location.href = '/login/signup'"/>
                </div>
            </div>
        </div>
    </form>
</body>
</html>