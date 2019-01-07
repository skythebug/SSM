<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: 89161
  Date: 2019/1/6
  Time: 20:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改信息</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
 <div>
    <form:form commandName="book" action="/ssm/book/book_update" method="post">
        <fieldset>
            <legend>修改书籍</legend>
            <%--<form:hidden path="id"/>--%>
            <p>
                <label for="title" id="title">书名： </label>
                <form:input path="title"/>
            </p>
            <p>
                <label for="author" id="author">作者： </label>
                <form:input path="author"/>
            </p>
            <p>
                <input id="reset" type="reset" tabindex="4" value="重置">
                <input id="submit" type="submit" tabindex="5" value="确认修改">
            </p>
        </fieldset>
    </form:form>
 </div>
</body>
</html>
