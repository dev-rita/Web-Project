import javax.swing.JOptionPane;
class ThreadExam10 extends Thread{
	@Override
	public void run() {
		int i=10;
		
		while(i!=0&&!isInterrupted()) {
			System.out.println(i--);
			
			try {
				Thread.sleep(1000);//1초동안 잠시 스레드 일시정지
			}catch(InterruptedException ie) {
				//sleep()에서 잠시 일시 정지된 쓰레드에 인터럽트가 발생하면 InterruptedException예외가 발생하면서 
				//인터럽트 상태가 false로 자동 초기화된다. 쓰레드의 스케줄링 메소드를 사용하여 카운터를 중단시켜보자.
				System.out.println("catch isInterrupted 된 상태:"+isInterrupted());
				interrupt();//인터럽트 상태가 false에서 true로 변경
			}
		}
		System.out.println("카운터 종료");
	}
}
public class ThreadTest10 {

	public static void main(String[] args) {
		ThreadExam10 th=new ThreadExam10();
		th.start();//쓰레드 시작
		
		String inputName=JOptionPane.showInputDialog("값 입력>>");
		System.out.println("입력한값:"+inputName);
		th.interrupt();
		System.out.println("isInterrupted 된 상태:"+th.isInterrupted());
	}
}
