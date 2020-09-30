package Calculator;

public class Calc {
	
	public int getResult;

	public Calc(int num1, int num2, String op) {

		if(op.equals("+")) {
			this.getResult = num1+num2;
		}else if(op.equals("-")) {
			this.getResult = num1-num2;
		}else if(op.equals("*")) {
			this.getResult = num1*num2;
		}else if(op.equals("/")) {
			this.getResult = num1/num2;
		}
	}
}
