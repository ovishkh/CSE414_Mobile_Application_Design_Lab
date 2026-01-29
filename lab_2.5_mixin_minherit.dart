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

  void a_method() {
    print("From class A");
  }
}





void main() {
  var Obj_A = A();

}
