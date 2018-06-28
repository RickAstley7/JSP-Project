import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;

public class WinnersServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int arr[] = new int[5];
        for (int cnt = 0; cnt < arr.length; cnt++) {
            arr[cnt] = (int) (Math.random() * 10 + 1);
        }
        request.setAttribute("ARR", arr);
        RequestDispatcher rd = request.getRequestDispatcher("Winners.jsp");
        rd.forward(request, response);
    }
}
