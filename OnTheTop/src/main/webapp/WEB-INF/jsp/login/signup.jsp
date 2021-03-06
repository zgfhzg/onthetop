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
    function signup() {
        var email = document.querySelector('#email');
        var name = document.querySelector('#name');
        var password = document.querySelector('#password');
        if (isEmpty(email) == true || isEmpty(password) == true || isEmpty(name) == true) {
            alert("모든 사항을 입력해주세요.");
        } else {
            $.ajax({
                type: "POST",
                url: "/login/signup",
                data: {
                    'email': email,
                    'password': password,
                    'name': name
                },
                success: function () {
                    console.log('good');
                },
                error: function () { console.log('bad'); }
            });
        }
    }
</script>
<meta charset="UTF-8">
<title>Sign Up</title>
</head>
<body>
    <form method="POST" action="/login/signup">
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
                    <input type="submit" id="signupBtn" value="회원가입" onclick="signup();" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>