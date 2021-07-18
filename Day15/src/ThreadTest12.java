class Acount{
	private int balance=1000;

	public int getBalance() {
		return balance;
	}

	public void withdraw(int money) {//동기화가 처리 안된 출금
		if(balance>=money) {
			try {
				Thread.sleep(1000);
			}catch(InterruptedException e) {}
			balance -=money;//-값이 나올 수 있다.
		}
	}
}
class ThreadExam12 implements Runnable{
	Acount acc=new Acount();
	@Override
	public void run() {
		while(acc.getBalance()>0) {
			int money=(int)(Math.random()*3+1)*100;
			//l이상 4미만에서 *100해 100이상 400미만.
			acc.withdraw(money);//출금작업
			System.out.println(Thread.currentThread().getName()+"계좌 잔액:"+acc.getBalance());
			System.out.println(Thread.currentThread().getName()+"이"+money+"출금함.");
		}
	}
}
public class ThreadTest12 {

	public static void main(String[] args) {
		ThreadExam12 th=new ThreadExam12();
		new Thread(th,"1").start();
		new Thread(th,"2").start();//스레드 시작
	}
}
