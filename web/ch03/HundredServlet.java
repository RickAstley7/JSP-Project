import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;

public class HundredServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        int total = 0;
        for (int i = 0; i <= 200; i++) {
            total += i;
        }
        request.setAttribute("result", total);
        RequestDispatcher rd = request.getRequestDispatcher("Hundred2.jsp");
        rd.forward(request, response);
    }
}