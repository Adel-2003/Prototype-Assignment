import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;

public class AddBookServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String title = request.getParameter("title");
        String author = request.getParameter("author");

        Book book = new Book(id, title, author);

        List<Book> books = (List<Book>) getServletContext().getAttribute("books");
        if (books == null) {
            books = new ArrayList<>();
        }
        books.add(book);
        getServletContext().setAttribute("books", books);

        response.sendRedirect("listBooks.jsp");
    }
}
