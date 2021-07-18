import javax.swing.JOptionPane;
class ThreadExam09 extends Thread{
	@Override
	public void run() {
		int i=10;
		
		while(i!=0 && !isInterrupted()) {//i는 0이 아니고 인터럽트가 false일때만  true.
			//true인 상태에서 반복. i=0이거나 isInturrupted()가 true일 때 멈춤.
			//isInterrupted()메소드는 스레드의 인터럽트 된 상태를 반환
			System.out.println(i--);
			for(long x=1; x<2500000000L;x++);
		}
		System.out.println("카운터 종료");
	}
}
public class ThreadTest09 {

	public static void main(String[] args) {
		ThreadExam09 th=new ThreadExam09();
		th.start();//run이 호출되면서 카운트 시작
		
		String inputName=JOptionPane.showInputDialog("값 입력>>");
		System.out.println("입력된 값:"+inputName);
		th.interrupt();//interrupt()를 호출하면 인터럽트 된 상태가 true가 된다.
		System.out.println("isInterrupted :"+th.isInterrupted());
	}
}
