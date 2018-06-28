import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;

public class DataErrorServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.println("<HTML>");
        out.println("<HEAD><TITLE>덧셈 프로그램 - 에러 화면</TITLE></HEAD>");
        out.println("<BODY>");
        out.println("잘못된 데이터가 입력되었습니다.");
        out.println("</BODY>");
        out.println("</HTML>");
        return;
    }
}
