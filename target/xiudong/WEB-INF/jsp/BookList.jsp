<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 89161
  Date: 2019/1/6
  Time: 15:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Book List</title>
</head>
<body>
  <div>
      <h4>书单</h4>
      <a href="<c:url value="/book/book_input"/>">添加书籍</a>
      <table class="table">
          <tr>
              <th>作品</th>
              <th>作者</th>
          </tr>
          <c:forEach items="${books}" var="book">
              <tr>
                  <td>${book.title}</td>
                  <td>${book.author}</td>
                  <td><a href="<c:url value="/book/book_edit/${book.id}"/> ">编辑</a></td>
                  <td><a href="<c:url value="/book/book_choose/${book.id}"/> ">删除</a></td>
              </tr>
          </c:forEach>
      </table>
  </div>
</body>
</html>
