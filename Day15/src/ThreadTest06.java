/*여러개의 은행카드(스레드)는 하나의 계좌(공용된 변수)에 입출금 할 수 있습니다.
  이런 경우 동시에 공유된 값에 접근 할 수 있는 스레드는 하나로 제한해야할 필요가 있습니다.

    이런 작업을 처리하기 위해서 자바에서는 동기화 처리기법이 존재합니다.
    즉 동기화(Synchronization)는 한 시점에 하나의 스레드만 공유된 값을 변경 시킬 수 있도록 하는 기능입니다.

    이때 스레드에 의해 공유된 값을 임계 영역(Critical Section)이라 하고,
    임계 영역 지정은 synchronized 키워드를 이용해 처리 합니다.

    하나의 스레드가 임계영역으로 지정된 영역으로 지정된 변수나 메소드를 호출할 때
    다른 스레드가 그 값에 접근 할 수 없도록 Lock(락)을 걸고
    사용이 끝나면 락을 해제합니다.*/

class Atm{
	private int money;//계좌 잔액

	public Atm() {}

	public Atm(int money) {
		this.money=money;//계좌 개설시 입금할 금액
	}
	/*동기화 즉 임계영역이란?
	 * 스레드에서 동시에 출금과 같은 특정작업이 이루어질 때 한번에 하나의 스레드에 의해서만 Lock 즉 잠금장치를 걸어서
	 * 출금작업이 이루어지게 하는것을 말한다. 그래야만 잔액이 음수값이 나오지 않는다.
	 */
	public synchronized  void  deposit(int amount, String name) {//입금 동기화
		money += amount;
		System.out.println(name+": 입금 금액="+amount);
	}

	public void withdraw(int amount, String name) {
		synchronized (this) {
			if((money-amount)>0) {
				money -= amount;
				System.out.println(name+": 출금 금액="+amount);
			}else {
				System.out.println(name+": 출금 못함(잔액부족)");
			}}
	}

	public void getMoney() {
		System.out.println("계좌 잔액="+money);
	}
}

class AtmUser extends Thread{//ATM사용자
	boolean flag=false; //입금/인출
	Atm obj;
	public AtmUser() {}
	public AtmUser(Atm obj, String name) {
		super(name);//스레드 이름을 반환함.
		this.obj=obj;
	}//생성자 오버로딩

	@Override
	public void run() {
		for(int i=1;i<=50;i++) {
			try {
				sleep(100);
			}catch(InterruptedException e) {}

			synchronized(obj) {
			if(flag) {//==true가 생략됨
				obj.deposit((int)(Math.random()*10+2)*100,getName());
				//random()은 0.0이상 1.0미만 사이의 실수 숫자 난수 발생 2.0이상 12.0미만에서
				//int변환으로 2이상 12미만에서 200이상 1200미만 정수 숫자 난수 발생
				//getName()은 스레드 이름을 반환한다.
				obj.getMoney();
			}else {//출금
				obj.withdraw((int)(Math.random()*10+2)*100,getName());
				obj.getMoney();
			}
			flag=!flag;}
		}
	}//입출금 스레드 구현
}
public class ThreadTest06 {

	public static void main(String[] args) {
		Atm obj=new Atm(10000);
		AtmUser user1=new AtmUser(obj,"국민카드");
		AtmUser user2=new AtmUser(obj,"신한카드");
		AtmUser user3=new AtmUser(obj,"하나카드");

		user1.start();
		user2.start();
		user3.start();
	}

}
