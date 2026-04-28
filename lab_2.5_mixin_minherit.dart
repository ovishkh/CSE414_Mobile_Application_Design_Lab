mixin B {


  void b() {
    print("From mixin B");
  }
}

mixin D {


  void d() {
    print("From mixin D");
  }
}

class C with D, B {


  C() {
    print("Class C");
  }

}



class A extends D {


  A() : super() {
    print("Class A");
  }

  void a() {
    print("From class A");
  }
}



mixin D on class A{



}

mixin D extends class A{



}

class C extends A with D,B {



}




void main() {
  var Obj_A = A();
    Obj_A.a();

}
