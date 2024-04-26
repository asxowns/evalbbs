<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html lang="ko">

    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Document</title>
    </head>

    <body>
      <h1>List Page</h1>
      <div>
        <a href="writeForm">글 작성하기</a>
      </div>

      <c:forEach var="dto" items="${list}">
        <div>
          ${dto.bno} / <a href="detail?bno=${dto.bno}">${dto.title}</a> / ${dto.writer} / ${dto.regdate}
        </div>
      </c:forEach>
    </body>

    </html>