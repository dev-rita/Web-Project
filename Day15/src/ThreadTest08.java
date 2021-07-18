import javax.swing.JOptionPane;

class ThreadExam08 extends Thread{

	@Override
	public void run() {
		for(int k=10;k>=1;k--) {
			System.out.println(k);
			try {
				sleep(1000);
			}catch(Exception e) {}
		}
	}//스레드 문장 구현
}
public class ThreadTest08 {
	public static void main(String[] args) throws Exception {
		ThreadExam08 th=new ThreadExam08();
		th.start();//스레드 시작
		
		String inputName=JOptionPane.showInputDialog("값 입력>>");
		System.out.println("입력한 값:"+inputName);
	}
}
