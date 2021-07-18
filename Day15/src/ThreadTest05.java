import java.awt.Color;
import java.awt.Dimension;
import java.awt.Frame;
import java.awt.Graphics;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

class ThreadExam05 extends Frame implements Runnable{
	int x=1;

	public ThreadExam05 () {
		setBackground(new Color(0,0,0));//프레임 배경색을 검정으로
		setSize(300,150);
		setVisible(true);

		addWindowListener(new WindowAdapter() {//현재 프라임 닫기할 때 실행됨.
			@Override
			public void windowClosing(WindowEvent e) {
				dispose();
				System.exit(0);
			}
		});//익명객체로 윈도우 이벤트를 처리
	}//생성자
	
	@Override
	public void run() {
		while(true) {
			try {
				Thread.sleep(100);//스레드를 일시정지
			}catch(InterruptedException e) {}//예외처리
			repaint();//다시 그리고자 그리는 메소드 호출 paint()메소드 호출.
			x+=5;//x좌표는 5씩 증가
		}
	}//스레드 문장 구현

	@Override
	public void paint(Graphics g) {
		Dimension d;//폭과 높이를 가지는 클래스
		d=getSize();
		g.setColor(Color.yellow);
		g.drawString("java", x, d.height/2);//java를 x, y위치에 그린다.
		//java문자가 프레임 폭을 벗어나면 다시 처음부터 반복되게 만들어보자.
		if(x>d.width) {//프레임 폭을 벗어나면
			x=0;//다시 처음부터 반복
		}
	}//그리고자 하는 메소드 글씨or그림
}
public class ThreadTest05 {

	public static void main(String[] args) {
		ThreadExam05 th=new ThreadExam05();//프레임 윈도우창 생성
		Thread t1=new Thread(th);
		t1.start();//run메소드 호출.
	}
}
