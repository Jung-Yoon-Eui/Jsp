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
		// Ŭ���̾�Ʈ ����� ���޵� �������� ���� Ÿ�԰� ���ڵ� ����
		response.setContentType("text/html; charset=euc-kr");
		
		// Ŭ���̾�Ʈ ������ ���� ��� ��Ʈ�� Ȯ��
		PrintWriter out = response.getWriter();
		
		// html form�� ���� ���޵� num1, num2 �Ķ���� ���� ������ �Ҵ�
		// �̶� getParameter �޼ҵ�� ���ڿ��� �����ϹǷ� Integer.patseInt�� ����ȯ
		num1 = Integer.parseInt(request.getParameter("num1"));
		num2 = Integer.parseInt(request.getParameter("num2"));
		op = request.getParameter("operator");
		
		// calc �޼ҵ� ȣ��� ��� �޾ƿ�
//		result = calc(num1,num2,op);
		
		Calc calc = new Calc(num1,num2,op);
		result = calc.getResult;
		
		
		// ��� ��Ʈ���� ���� ȭ�� ����
		out.println("<html>");
		out.println("<head><title>����</title></head>");
		out.println("<body><center>");
		out.println("<h2>��� ���</h2><hr/>");
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
