import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;

public class sum100 extends HttpServlet{
  public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    int total = 0;
    for(int i = 1;i <= 100;i++)
      total += i;
    PrintWriter out = response.getWriter();
    out.println("<HTML>");
    out.println("<HEAD><TITLE> SUM100 </TITLE><HEAD>");
    out.println("<BODY>");
    out.printf("01 + 2 + ... + 100 = %d", total);
    out.println("<BODY>");
    out.println("</HTML>");
  }
}
