class ThreadExam11 implements Runnable{
	@Override
	public void run() {
		while(true) {
			System.out.println(Thread.currentThread().getName());//현재 실행중인 쓰레드 이름을 반환

			try {
				Thread.sleep(1000);
			}catch(InterruptedException e) {}
		}
	}
}
public class ThreadTest11 {

	public static void main(String[] args) {
		ThreadExam11 th=new ThreadExam11();
		Thread th1=new Thread(th,"#");
		Thread th2=new Thread(th,"##");
		Thread th3=new Thread(th,"###");

		th1.start();
		th2.start();
		th3.start();//쓰레드 시작.
		
		try {
			Thread.sleep(2000);//2초간 잠시 쉰다.
			th1.suspend();//th1스레드를 일시 정지.
			
			Thread.sleep(2000);
			th2.suspend();//th2스레드를 일시정지.
			
			Thread.sleep(3000);
			th1.resume();//th1스레드를 다시 동작하게 된다.
			
			Thread.sleep(3000);
			th1.stop(); th2.stop();//th1 th2스레드 종료.
			
			Thread.sleep(3000);
			th3.stop();//th3 스레드 종료.
		}catch(InterruptedException e) {}
	}
}
