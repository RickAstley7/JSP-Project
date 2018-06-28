import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.util.*;

public class GreetingServlet extends HttpServlet {
    private PrintWriter logFile;

    public void init() throws ServletException {
        String filename = getInitParameter("FILE_NAME");
        try {
            logFile = new PrintWriter(new FileWriter(filename, true));
        } catch (IOException e) {
            throw new ServletException(e);
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();

        init();
        String name = request.getParameter("NAME");
        String greeting = "안녕하세요, " + name + "님.";
        if (logFile != null) {
            GregorianCalendar now = new GregorianCalendar();
            logFile.printf("%TF %TT - %s %n", now, now, name);
        } else {
            out.println(logFile);
        }

        out.println("<HTML>");
        out.println("<HEAD><TITLE>인사하기</TITLE></HEAD>");
        out.println("<BODY>");
        out.println(greeting);
        out.println("</BODY>");
        out.println("</HTML>");
        destroy();
    }

    public void destroy() {
        if (logFile != null)
            logFile.close();
    }
}
