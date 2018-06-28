import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;

public class ptest extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();

        String name = request.getParameter("NAME");
        String color = request.getParameter("Color");
        String animal = request.getParameter("ANIMAL");
        String[] food = request.getParameterValues("food");

        out.println("<HTML>");
        out.println("<HEAD><TITLE>성격테스트</TITLE></HEAD><br><br>");
        out.println("<BODY>");
        out.printf("%s님의 성격 테스트 결과<br>", name);
        out.printf("%s 색을 좋아하는 당신은 %s ", color, animal);

        if (food != null) {
            out.printf(", 그리고 ");
            for (int cnt = 0; cnt < food.length; cnt++) {
                if (cnt > 0)
                    out.printf("과 %s", food[cnt]);
                else
                    out.printf("%s", food[cnt]);
            }
        }

        out.printf("을 좋아하는 성격입니다.");
        out.println("</BODY></HEAD></HTML>");
    }
}
