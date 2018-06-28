import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;

public class sum200 extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int total = 0;
        for (int i = 1; i <= 200; i++) {
            if ((i % 2 != 0) && (i % 3 != 0))
                total += i;
        }
        PrintWriter out = response.getWriter();
        out.println("<HTML>");
        out.println("<HEAD><TITLE>SUM200</TITLE></HEAD>");
        out.println("<BODY>");
        out.printf("1 + 4 + 5 ... 200 = %d", total);
        out.println("</BODY");
        out.println("<HTML>");
    }
}
