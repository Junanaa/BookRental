<%--
  Created by IntelliJ IDEA.
  User: jun
  Date: 5/17/24
  Time: 2:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

    <jsp:include page="../../include/title.jsp" />

    <link href="<c:url value='/resources/css/admin/login_form.css' />" rel="stylesheet" type="text/css">

    <jsp:include page="../include/login_js.jsp" />

</head>
<body>

<jsp:include page="../../include/header.jsp" />

<jsp:include page="../include/nav.jsp" />

<section>

    <div id="section_wrap">

        <div class="word">

            <h3>LOGIN FORM</h3>

        </div>

        <div class="login_form">

            <form action="<c:url value='/admin/member/loginConfirm' />" name="login_form" method="post">

                <input type="text"		  name="id" 		        placeholder="INPUT ADMIN ID."> <br>
                <input type="password"	name="password" 		placeholder="INPUT ADMIN PW."> <br>
                <input type="button"	value="login" onclick="loginForm();">
                <input type="reset"		value="reset">

            </form>

        </div>

        <div class="find_password_create_account">

            <a href="<c:url value='/admin/member/findPasswordForm' />">find password</a>
            <a href="<c:url value='/admin/member/createAccountForm' />">create account</a>

        </div>

    </div>

</section>

<jsp:include page="../../include/footer.jsp" />

    <script type="text/javascript">
        function loginForm(){
            console.log("loginForm()Called!!");
            let form = document.login_form;

            if(form.id.value == ''){
                alert('input admin id');
                form.id.focus();

            }
            else if(form.password.value ==''){
                alert('input admin password');
                form.password.focus();
            }
            else {
                form.submit();
            }
        }
    </script>

</body>
</html>