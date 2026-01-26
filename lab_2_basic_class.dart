class student{
    int? id;
    String? name;
    void ID(){
        print("ID: $id");
    }

    student(){
        print("This is a constructor");
    }


}


void main(){
    var Ovi = new student();
    Ovi.id = 1;
    Ovi.name = "Ovi Shekh";



    print("Student ID: ${Ovi.id}");

    Ovi.ID();

}    