import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;

public class write extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        String name = request.getParameter("name");
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.println("<HTML>");
        out.println("<HEAD>");
        out.println("<TITLE>게시판 글쓰기 - 결과 화면</TITLE>");
        out.println("</HEAD>");
        out.println("<BODY>");
        out.printf("이름 : %s<br>", name);
        out.printf("제목 : %s<br>", title);
        out.println("------------<br>");
        out.printf("<PRE>%s</PRE>", content);
        out.println("------------<br>");
        out.println("저장되었습니다.");
    }
}
