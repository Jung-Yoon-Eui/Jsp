import java.util.ArrayList;
import java.util.Collections;

public class Test {
	
	public static void main(String[] args) {

	ArrayList<String> test1 = new ArrayList<String>();
	
	test1.add("aa");
	test1.add("bb");
	test1.add("cc");
	
	int size = test1.size();
	System.out.println(size);
	
	ArrayList<Integer> test2 = new ArrayList<Integer>(Collections.nCopies(size, 1));
	
	test2.set( (Integer)size-1 ,(Integer)test2.get(size-1)+(Integer)test2.get(size-1));
	
	for(int i=0; i<test2.size(); i++) {
			
			System.out.print(test2.get(i)+" ");
			
		}
	}
}
