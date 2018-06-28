import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.math.BigInteger;

public class FibonacciServlet extends HttpServlet {
    private BigInteger arr[];

    public void init() {
        arr = new BigInteger[100];
        arr[0] = new BigInteger("1");
        arr[1] = new BigInteger("1");
        for (int cnt = 2; cnt < arr.length; cnt++)
            arr[cnt] = arr[cnt - 2].add(arr[cnt - 1]);
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        String str = request.getParameter("NUM");
        int num = Integer.parseInt(str);
        if (num > 100)
            num = 100;
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<HTML>");
        out.println("<HEAD><TITLE>피보나치 수열</TITLE></HEAD>");
        out.println("<BODY>");
        for (int cnt = 0; cnt < num; cnt++)
            out.println(arr[cnt] + " ");
        out.println("</BODY>");
        out.println("</HTML>");
    }
}
