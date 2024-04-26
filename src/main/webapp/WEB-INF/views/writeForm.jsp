<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Write Form</title>
</head>
<body>
  <h1>write Form Page</h1>
  <hr>
  
  <form action="write" method="post">
    제목 : <input type="text" name="title"><br>
    내용 : <input type="text" name="content"><br>
    작성자 : <input type="text" name="writer"><br>
    날짜 : <input type="text" name="regdate"><br>
    <input type="submit" value="작성하기">
  </form>

  <a href="list">목록보기</a><br>
  <a href="writeForm">글 작성하기</a>
</body>
</html>