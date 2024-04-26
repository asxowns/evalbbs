<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>detail</title>
</head>
<body>
  <h1>Detail Page</h1>
  <hr>
  <a href="list">목록보기</a><br>

  번호 : ${dto.bno}<br>
  제목 : ${dto.title}<br>
  작성자 : ${dto.writer}<br>
  내용 : ${dto.content}<br>
  날짜 : ${dto.regdate}<br>

  <a href="delete?bno=${dto.bno}">삭제하기</a>
</body>
</html>