class ThreadExam04 implements Runnable{
/* 또 다른 스레드 만드는 형식)
 * 1. Runnable 함수형 인터페이스를 구현 상속 하는 법. 다중 상속을 할 수 있다는 장점이 있다.
 * 2. 하지만 스레드를 시작하는 start메소드를 바로 호출할 수 없기 때문에 이 인터페이스를 구현상속한
 *    자손 객체를 Thread생성자 인자값으로 전달해서 생성된 객체로 start()메소드를 호출해야 한다.
 *    이유는 start()가 Thread클래스 소속 메소드이기 때문에.
 */
	@Override
	public void run() {
		for(int num=1;num<=5;num++) {
			for(int a=1;a<100000000;a++);
			System.out.println(Thread.currentThread().getName()+":"+num);
			//현재 실행중인 스레드 (currentThread()) 이름을 반환 (getName())
		}
	}//멀티스레드 문장 구현.
}
public class ThreadTest04 {

	public static void main(String[] args) {
		//Thread클래스를 상속받으면 다른 클래스를 상속받을 수 없기 때문에
		//Runnable인터페이스를 구현하는 방법이 일반적이다.
		ThreadExam04 th=new ThreadExam04();//runnable을 구현한 클래스의 인스턴스 생성.
		ThreadExam04 th2=new ThreadExam04();
		Thread t=new Thread(th, "첫 번째 스레드");//생성자 Thread(Runnable target)
		Thread t2=new Thread(th2, "두 번째 스레드");
		//Runnable인터페이스를 구현한 경우, Runnable인터페이스를 구현한 클래스의 인스턴스를 생성한
		//다음, 이 인스턴스를 Thread클래스의 생성자의 매개변수로 제공해야한다.
		//왜냐하면 Thread클래스 소속 메소드인 start()를 호출해야 되기 때문이다.
		t.start();
		t2.start();		
	}
}
