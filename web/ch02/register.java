import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;

public class register extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();

        String name = request.getParameter("NAME");
        String id = request.getParameter("ID");
        String password = request.getParameter("PW");
        String gender = request.getParameter("GENDER");
        if (gender.equals("MALE")) gender = "남";
        else gender = "여";
        String iNotice = request.getParameter("INOTICE");
        String cNotice = request.getParameter("CNOTICE");
        String dNotice = request.getParameter("DNOTICE");
        String job = request.getParameter("JOB");

        out.println("<HTML><BODY>");
        out.println("<h2>개인 정보 입력</h2>");
        out.printf("이름 : %s <br>", name);
        out.printf("아이디 : %s <br>", id);
        out.printf("비밀번호 : %s <br>", password);
        out.printf("성별 : %s <br>", gender);
        out.printf("공지 메일 : %s <br>", noticeToHangul(iNotice));
        out.printf("광고 메일 : %s <br>", noticeToHangul(cNotice));
        out.printf("배송 확인 : %s <br>", noticeToHangul(dNotice));
        out.printf("직업 : %s <br>", job);
        out.println("</BODY></HTML>");
    }

    private String noticeToHangul(String notice) {
        if (notice == null) return "받지 않음";
        else if (notice.equals("on")) return "받음";
        else return notice;
    }
}
