class ThreadExam03 {
	String name;

	ThreadExam03(){}
	ThreadExam03(String name){
		this.name=name;
	}

	public void start() {
		run();
	}

	public void run() {
		for(int num=1;num<=5;num++) {
			for(int k=1;k<100000000;k++);//10만번 수행속도 9000ms
			System.out.println(name+" :"+num);
		}
	}
}

public class ThreadTest03{
	public static void main(String[] args) {
		ThreadExam03 th=new ThreadExam03("첫 번째 스레드");
		ThreadExam03 th2=new ThreadExam03("두 번째 스레드");

		th.start();
		th2.start();
		//스레드가 아니라 흉내냄. thread class를 extend해야함. 교대작업이 이루어지지 않음.
		//같은 사양의 cpu를 해도 동일한 결과가 나오지 않음.
	}
}