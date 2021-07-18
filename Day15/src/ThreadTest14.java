import java.util.ArrayList;
class Table{
	String[] dishNames= {"donut","donut","burger"};
	final int MAX_FOOD=6;//상수 테이블에 최대 6개 음식
	private ArrayList<String> dishes=new ArrayList<>();//문자열만 저장 가능한 컬렉션 제네릭 dishes생성

	public synchronized void add(String dish){//테이블에 음식 추가하는 것을 동기화 처리
		//한번에 하나의 스레드에 의해서만 음식 추가가 작동하도록 lock. 
		while(dishes.size()>=MAX_FOOD) {//음식이 6개를 초과하면
			String name=Thread.currentThread().getName();//현재 실행중인 스레드 이름을 반환.
			System.out.println(name+" is wating");
			try {
				wait();//요리사 스레드를 기다리게한다.락을 반납시키고 대기실로 보낸다.
				Thread.sleep(500);
			}catch(InterruptedException e) {}
		}//while end
		dishes.add(dish);//음식추가 table.add(table.dishNames[idx]);
		notify();//대기실에서 기다리는 소비자를 호출한다.
		System.out.println("Dishes:"+dishes.toString());
	}//add()

	public void remove(String dishName) {//테이블 음식 제거도 동기화 처리
		synchronized(this) {
			String name=Thread.currentThread().getName();

			while(dishes.size()==0) {//테이블에 음식이 없다면
				System.out.println(name+" is wating");
				try {
					wait();//소비자락을 반납시키고 대기실에서 기다리게 한다.
					Thread.sleep(500);
				}catch(InterruptedException e) {}
			}//while

			while(true) {
				for(int i=0;i<dishes.size();i++) {
					if(dishName.contentEquals(dishes.get(i))){
						//음식이 일치하면 문자열만 비교. 인스턴스가 달라도 ok
						dishes.remove(i);//음식 제거
						notify();//요리사 호출
						return;//종료효과
					}//if
				}//for

				try {
					System.out.println(name+" is wating");
					wait();//원하는 음식이 없는 경우 소비자를 대기실에서 기다리게 한다.
					Thread.sleep(500);
				}catch(InterruptedException e) {}
			}//while
		}//동기화
	}//remove
	
	public int dishNum() {
		return dishNames.length;
	}//3이 반환.
}//table class

//손님 즉 소비자 스레드 만들기
class Customer implements Runnable{
	private Table table;
	private String food;
	
	Customer(){}
	
	Customer(Table table, String food){
		this.table=table;
		this.food=food;
	}//생성자 오버로딩> 생성자의 주된 기능인 멤버변수 중 인스턴스 변수 초기화
	
	@Override
	public void run() {
		while(true) {
			try {
				Thread.sleep(10);
			}catch(InterruptedException e) {}
			String name=Thread.currentThread().getName();
			table.remove(food);//테이블 음식을 먹는다.
			System.out.println(name+" ate a "+food);
		}//무한루프 while
	}//run()
	
}//Customer 쓰레드

//요리사 쓰레드 만들기
class Cook implements Runnable{
	private Table table;
	
	Cook(){}
	Cook(Table table){
		this.table=table;
	}
	
	@Override
	public void run() {
		while(true) {
			int idx=(int)(Math.random()*table.dishNum());
			//random()은 0.0이상 1.0미만 사이의 실수 숫자 난수를 발생.>*3이면 0.0이상 3.0미만> int로 캐스팅 
			//0이상 3미만으로 0부터 2사이의 임의의 정수 숫자 발생.>배열주소 인덱스 번호
			table.add(table.dishNames[idx]);//테이블에 음식 추가
			try {
				Thread.sleep(10);
			}catch(InterruptedException e) {}
		}
	}//run()
	
}//cook 쓰레드

public class ThreadTest14 {

	public static void main(String[] args) throws InterruptedException {
		Table table=new Table();//여러 쓰레드가 공유하는 객체
		
		new Thread(new Cook(table),"Cook").start();//요리사 스레드 시작
		//runnable를 구현상속한 자손클래스를 Thread인자값에 넣어야 start메소드를 호출할 수 있다.
		new Thread(new Customer(table,"donut"),"CUST1").start();//첫 번째 소비자 스레드 시작
		new Thread(new Customer(table,"burger"),"CUST2").start();//두 번째 소비자 스레드 시작
		Thread.sleep(2000);//예외처리가 되어있어 메인메소드 옆에 throws InterruptedException을 추가해야함.
		//메인쓰레드가 2초동안 잠자는 상태.
		System.exit(0);//2초가 지나면 시스템 종료
	}
}


