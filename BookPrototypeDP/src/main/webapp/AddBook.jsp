<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Book</title>
</head>
<body>
    <h1>Add Book</h1>
    <form action="AddBookServlet" method="post">
        ID: <input type="text" name="id" /><br>
        Title: <input type="text" name="title" /><br>
        Author: <input type="text" name="author" /><br>
        <input type="submit" value="Add Book" />
    </form>
</body>
</html>