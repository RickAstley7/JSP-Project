import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;

public class NewAdderServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        try {
            String str1 = request.getParameter("NUM1");
            String str2 = request.getParameter("NUM2");
            int num1 = Integer.parseInt(str1);
            int num2 = Integer.parseInt(str2);
            int result = num1 + num2;
            response.setContentType("text/html;charset=utf-8");
            PrintWriter out = response.getWriter();
            out.println("<HTML>");
            out.println("<HEAD><TITLE>덧셈 프로그램</TITLE></HEAD>");
            out.println("<BODY>");
            out.printf("%d + %d = %d", num1, num2, result);
            out.println("</BODY>");
            out.println("</HTML>");
        } catch (NumberFormatException e) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("data-error");
            dispatcher.forward(request, response);
        }
    }
}
