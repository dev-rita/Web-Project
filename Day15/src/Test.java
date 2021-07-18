import java.util.Arrays;

interface random{
	int method();
}

public class Test {
	public static void main(String[] args) {
		
		random f= ()-> (int)(Math.random()*5)+1;
		random f2=new random() {
			public int method(){
				return (int)(Math.random()*5)+1;
			}
		};
		
		System.out.println(f.method());
		System.out.println(f2.method());
		
		//int[] arr=new int[5];
		//Arrays.setAll(arr, (i)->(int)(Math.random()*5)+1);//람다식 표현
		/* 람다식으로 사용하지 않으면 아래와 같은 함수를 사용해야 한다.
		 * int method(i){
		 * 	i=(int)(Math.random()*5)+1;
		 * 	return i;
		 * }
		 * 모든 메소드는 클래스에 포함되어야 하므로 클래스도 새로 만들고 객체도 생성해야 
		 * 해당 메소드를 호출할 수 있다.
		 */

		/*for(int k:arr) {
			System.out.printf(k+" ");
		}*/
		
		//System.out.println();
		
		
		
	}
}
