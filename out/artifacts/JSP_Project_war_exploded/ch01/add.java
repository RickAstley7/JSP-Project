import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;

public class add extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String str1 = request.getParameter("num1");
        String str2 = request.getParameter("num2");
        int num1 = Integer.parseInt(str1);
        int num2 = Integer.parseInt(str2);
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.println("<HTML>");
        out.println("<HEAD><TITLE>덧셈 프로그램 - 결과 화면</TITLE></HEAD>");
        out.println("<BODY>");
        out.printf("%d + %d = %d", num1, num2, num1 + num2);
        out.println("</BODY>");
        out.println("</HTML>");
    }
}
