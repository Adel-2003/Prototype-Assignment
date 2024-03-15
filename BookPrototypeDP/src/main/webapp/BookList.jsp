<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>List Books</title>
</head>
<body>
    <h1>List of Books</h1>
    <ul>
        <%
            List<Book> books = (List<Book>) application.getAttribute("books");
            if (books != null) {
                for (Book book : books) {
                    out.println("<li>" + book.getId() + " - " + book.getTitle() + " by " + book.getAuthor() + "</li>");
                }
            }
        %>
    </ul>
    <h2>Clone a Book</h2>
    <form action="CloneBookServlet" method="post">
        ID to clone: <input type="text" name="id" /><br>
        <input type="submit" value="Clone Book" />
    </form>
</body>
</html>