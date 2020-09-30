import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.Calendar;

public class ServletTest extends HttpServlet{
   public void doGet(HttpServletRequest request, HttpServletResponse response) // 매개변수를 클래스로.
		   throws IOException{	// get 방식은 이 예외가 발생할 수 있다.. 를 알 수 있음.
	   
      response.setContentType("text/html");		// 타입 지정
      response.setCharacterEncoding("euc-kr");	// 인코딩
      
      Calendar c = Calendar.getInstance();	// 객체 생성한거..
      
      int hour=c.get(Calendar.HOUR_OF_DAY);
      int minute=c.get(Calendar.MINUTE);
      int second=c.get(Calendar.SECOND);
      
      
      PrintWriter out = response.getWriter();	// 객체 생성
      
      out.write("<HTML><HEAD><TITLE>ServletTest</TITLE></HEAD>");
      out.write("<BODY><H1>");
      out.write("현재시각은 ");
      out.write(Integer.toString(hour));
      out.write("시 ");
      out.write(Integer.toString(minute));
      out.write("분 ");
      out.write(Integer.toString(second));
      out.write("초입니다.");
      out.write("</H1></BODY></HTML>");
      out.close();
   }
}