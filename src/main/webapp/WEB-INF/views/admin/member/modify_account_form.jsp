<%@ page import="daelim.book.rental.admin.member.AdminMemberVo" %><%--
  Created by IntelliJ IDEA.
  User: jun
  Date: 5/17/24
  Time: 2:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

    <jsp:include page="../../include/title.jsp"/>

    <link href="<c:url value='/resources/css/admin/create_account_form.css' />" rel="stylesheet" type="text/css">

</head>
<body>

<jsp:include page="../../include/header.jsp"/>

<jsp:include page="../include/nav.jsp"/>

<section>

    <div id="section_wrap">

        <div class="word">

            <h3>MODIFY ACCOUNT FORM</h3>

        </div>
        <%
            AdminMemberVo loginedAdminMemberVo = (AdminMemberVo) session.getAttribute("loginedAdminMemberVo");
        %>

        <div class="create_account_form">

            <form action="<c:url value='/admin/member/modifyAccountConfirm' />" name="modify_account_form"
                  method="post">
                <input type="text" value="<%=loginedAdminMemberVo.getNo()%>" name="no" readonly> <br>
                <input type="text" value="<%=loginedAdminMemberVo.getId() %>" name="id" placeholder="INPUT ADMIN ID."
                       readonly disabled> <br>
                <input type="text" value="<%=loginedAdminMemberVo.getName()%>" name="name"
                       placeholder="INPUT ADMIN NAME."> <br>
                <select name="gender">
                    <option value="">SELECET ADMIN GENDER.</option>
                    <option value="M" <% if (loginedAdminMemberVo.getGender().equals("M")) {%> selected <%}%>>Man
                    </option>
                    <option value="W" <% if (loginedAdminMemberVo.getGender().equals("W")) {%> selected <%}%>>Woman
                    </option>
                </select>
                <br>
                <input type="text" value="<%=loginedAdminMemberVo.getPart()%>" name="part"
                       placeholder="INPUT ADMIN PART."> <br>
                <input type="text" value="<%=loginedAdminMemberVo.getPosition()%>" name="position"
                       placeholder="INPUT ADMIN POSITION."> <br>
                <input type="email" value="<%=loginedAdminMemberVo.getEmail()%>" name="email"
                       placeholder="INPUT ADMIN MAIL."><br>
                <input type="text" value="<%=loginedAdminMemberVo.getPhone()%>" name="phone"
                       placeholder="INPUT ADMIN PHONE."> <br>
                <input type="button" value="modify account" onclick="modifyAccountForm();">
                <input type="reset" value="reset">

            </form>

        </div>
    </div>

</section>

<jsp:include page="../../include/footer.jsp"/>

<script type="text/javascript">

    function modifyAccountForm() {
        console.log('modifyAccountForm() CALLED!!');

        let form = document.modify_account_form;

        if (form.name.value == '') {
            alert('INPUT ADMIN NAME.');
            form.name.focus();
        } else if (form.email.value == '') {
            alert('INPUT ADMIN MAIL.');
            form.email.focus();
        }// 2. form submit
        else {
            form.submit();

        }

    }

</script>

</body>
</html>
