import javax.swing.JOptionPane;

public class ThreadTest07 {

	public static void main(String[] args) {
		String input=JOptionPane.showInputDialog("갑 입력>>");//스윙 입력박스 띄움
		System.out.println("입력된 값:"+input);
		
		for(int i=10;i>=1;i--) {
			System.out.println(i);
			try {
				Thread.sleep(1000);//1초 간격으로 작동
			}catch(Exception e) {}
		}
	}//멀티스레드가 아님.
}
