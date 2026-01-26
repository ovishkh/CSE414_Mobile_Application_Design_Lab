
class avenger(){

    avenger(){
        print("I am an Avenger");
    }

    first_avenger(){
        print("I am Ironman");
    }


}

class superhero extends avenger{
    superhero(): super(){
        print("I am a Superhero");
    }

    first_superhero(){
        print("I am Batman");
    }
}

void main(){
    var Tony = new avenger();
    Tony.first_avenger();
    print("----------");
    var Bruce = new superhero();
    Bruce.first_superhero();    
}