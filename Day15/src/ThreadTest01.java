class ThreadExam01 extends Thread{
	/*자바에서 멀티스레드란?
	 * 1.멀티스레드는 하나의 현재 실행중인 프로그램 즉 프로세스에서 여러개의 작업이 동시 수행되는 것을 말한다.
	 * 2.간단한 스레드 구현법
	 * 	가. Thread클래스를 상속받아서 run()메소드를 오버라이딩 한다.
	 *  나. start()메소드를 호출해서 스레드를 시작하면 스레드 실행대기 상태에 있다가 자기 차례가 되면
	 *  	알아서 run()메소드를 자동 호출해서 스레드 문장이 구현된다.
	 */
	ThreadExam01(){}
	ThreadExam01(String name){
		super(name);//조상의 오버로딩 된 생성자를 호출해서 스레드 이름을 반환.
	}
	
	@Override
	public void run() {
		for(int num=1; num<=5;num++) {
			for(int k=1;k<100000000;k++);//스레드가 구현될 시간적 여유를 둔다.
			System.out.println(getName()+":"+num);//getName()메소드로 스레드 이름을 반환
		}
	}//멀티쓰레드 문장을 구현
}
public class ThreadTest01 {
	public static void main(String[] args) {
		ThreadExam01 th=new ThreadExam01("첫 번째 스레드");
		ThreadExam01 th2=new ThreadExam01("두 번째 스레드");
		
		th.start();
		th2.start();
		
		//new ThreadExam01("세 번째 스레드").start();
		//new ThreadExam01("네 번째 스레드").start();
		//자바는 운영체제에 독립적이지만 스레드는 cpu, 운영체제에 약간 종속적이다.
		//그래서 첫 번째와 두 번째 스레드 결과가 다르게 나옴. (실행문장이 다르게 나옴)
		//교대작업이 이루어짐.
	}
}
