import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class ResultServlet2 extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        String food = (String) session.getAttribute("FOOD");
        String animal = request.getParameter("ANIMAL");
        int timeout = session.getMaxInactiveInterval();
        session.setMaxInactiveInterval(300);
        int timeout2 = session.getMaxInactiveInterval();
//        session.invalidate();

        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.println("<HEAD><TITLE>성격 테스트</TITLE></HEAD>");
        out.println("<BODY>");
        out.println("<H3>성격 테스트</H3>");
        out.printf("당신은 %s와 %s를 좋아하는 성격입니다.", food, animal);
        out.println("</BODY>");
        out.println("</HTML>");
    }
}
