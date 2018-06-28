import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;

public class fibo extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {

        PrintWriter out = response.getWriter();
        int i = 1, j = 1, tmp;
        out.println("<HTML>");
        out.println("<HEAD><TITLE>피보나치 수열</TITLE></HEAD>");
        out.println("<BODY>");
        out.println(i);
        while (j <= 100) {
            out.printf(" %d", j);
            tmp = j;
            j = i + j;
            i = tmp;
        }
        out.println("</BODY>");
        out.println("</HEAD></HTML>");
    }
}
