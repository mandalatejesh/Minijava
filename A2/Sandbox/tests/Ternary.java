class Ternary {
	public static void main(String[] a) {
		System.out.println(new Test().func());
	}
}


class B extends A{
	public int not(){
		return 0;
	}
}
class Test {
	public int func() {
		int a;
		int d;
		boolean b;
		boolean c;
		B e1;
		C e2;
		A e;
		b = true;
		c = false;
        d = 5;
		a = (b && c) ? d : (d-1);
		e = (0 != 1) ? e1 : e2;
		return a;
	}
}

class C extends A{
	public int no(){
		return 0;
	}
}

class A{
	public int nothing(){
		return 0;
	}

	private int not(){
		return 1;
	}
}

