class Account2{
	private int money=1000;
	
	public int getMoney() {
		return money;
	}
	
	public synchronized void withdraw(int money2) {
		if(money>=money2) {
			try {Thread.sleep(1000);}
			catch(InterruptedException e){}
			money-=money2;
		}
	}//동기화가 처리된 출금
}

class RunExam13 implements Runnable{
	Account2 acc2=new Account2();
	
	@Override
	public void run() {
		while(acc2.getMoney()>0) {
			int money=(int)(Math.random()*3+1)*100;
			acc2.withdraw(money);
			System.out.println(Thread.currentThread().getName()+"계좌 잔액:"+acc2.getMoney());
			System.out.println(Thread.currentThread().getName()+"이"+money+"출금함.");
		}
	}
}
public class ThreadTest13 {
	public static void main(String[] args) {
		RunExam13 re=new RunExam13();
		new Thread(re,"1").start();
		new Thread(re,"2").start();
	}
}
