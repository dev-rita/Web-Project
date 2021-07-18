class Atm1{
	private int money;//계좌 잔액

	public Atm1() {}

	public Atm1(int money) {
		this.money=money;//계좌 개설시 입금할 금액
	}

	public void deposit(int amount, String name) {//입금 동기화
		money += amount;
		System.out.println(name+": 입금 금액="+amount);
	}

	public void withdraw(int amount, String name) {
		if((money-amount)>0) {
			money -= amount;
			System.out.println(name+": 출금 금액="+amount);
		}else {
			System.out.println(name+": 출금 못함(잔액부족)");
		}
	}

	public void getMoney() {
		System.out.println("계좌 잔액="+money);
	}
}

class AtmUser1 extends Thread{//ATM사용자
	boolean flag=false; //입금/인출
	Atm1 obj;
	public AtmUser1() {}
	public AtmUser1(Atm1 obj, String name) {
		super(name);//스레드 이름을 반환함.
		this.obj=obj;
	}//생성자 오버로딩

	@Override
	public void run() {
		for(int i=1;i<=5;i++) {
			try {
				sleep(500);
			}catch(InterruptedException e) {}

			/*동기화 즉 임계영역이란?
			 * 스레드에서 동시에 출금과 같은 특정작업이 이루어질 때 한번에 하나의 스레드에 의해서만 Lock 즉 잠금장치를 걸어서
			 * 출금작업이 이루어지게 하는것을 말한다. 그래야만 잔액이 음수값이 나오지 않는다.
			 */

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

			/*if(flag) {//==true가 생략됨
				obj.deposit((int)(Math.random()*10+2)*100,getName());
				//random()은 0.0이상 1.0미만 사이의 실수 숫자 난수 발생 2.0이상 12.0미만에서
				//int변환으로 2이상 12미만에서 200이상 1200미만 정수 숫자 난수 발생
				//getName()은 스레드 이름을 반환한다.
				obj.getMoney();
			}else {//출금
				obj.withdraw((int)(Math.random()*10+2)*100,getName());
				obj.getMoney();
			}*/
			//flag=!flag;
		}
	}//입출금 스레드 구현
}

public class ThreadTest06_1 {

	public static void main(String[] args) {
		Atm1 obj=new Atm1(3000);
		AtmUser1 user1=new AtmUser1(obj,"국민카드");
		AtmUser1 user2=new AtmUser1(obj,"신한카드");
		//금융거래는 동기화가 되어있어야한다.
		user1.start();
		user2.start();
	}

}
