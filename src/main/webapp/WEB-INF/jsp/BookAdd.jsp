<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: 89161
  Date: 2019/1/6
  Time: 19:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加书籍</title>
</head>
<body>
    <div>
        <form:form commandName="book" action="book_save" method="post">
            <fieldset>
              <legend>添加书籍</legend>
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
                  <input id="submit" type="submit" tabindex="5" value="添加书籍">
              </p>
            </fieldset>
        </form:form>
    </div>
</body>
</html>
