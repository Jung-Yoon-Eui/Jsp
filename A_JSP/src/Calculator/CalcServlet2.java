package Calculator;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalcServlet2
 */
@WebServlet("/CalcServlet2")
public class CalcServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalcServlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num1, num2;
		int result;
		String op;
		// 클라이언트 응답시 전달될 컨텐츠에 대한 타입과 인코딩 지정
		response.setContentType("text/html; charset=euc-kr");
		
		// 클라이언트 응답을 위한 출력 스트림 확보
		PrintWriter out = response.getWriter();
		
		// html form을 통해 전달된 num1, num2 파라미터 값을 변수에 할당
		// 이때 getParameter 메소드는 문자열을 리턴하므로 Integer.patseInt로 형변환
		num1 = Integer.parseInt(request.getParameter("num1"));
		num2 = Integer.parseInt(request.getParameter("num2"));
		op = request.getParameter("operator");
		
		// calc 메소드 호출로 결과 받아옴
//		result = calc(num1,num2,op);
		
		Calc calc = new Calc(num1,num2,op);
		result = calc.getResult;
		
		
		// 출력 스트림을 통해 화면 구성
		out.println("<html>");
		out.println("<head><title>계산기</title></head>");
		out.println("<body><center>");
		out.println("<h2>계산 결과</h2><hr/>");
		out.println(num1 +" "+op+" "+ num2 +" = "+result);
		out.println("</body></html>");
		
//		doGet(request, response);
	}

//	public int calc(int num1, int num2, String op) {
//		
//		int re=0;
//		
//		if(op.equals("+")) {
//			re = num1+num2;
//		}else if(op.equals("-")) {
//			re = num1-num2;
//		}else if(op.equals("*")) {
//			re = num1*num2;
//		}else if(op.equals("/")) {
//			re = num1/num2;
//		}
//		
//		return re;
//	}
}
