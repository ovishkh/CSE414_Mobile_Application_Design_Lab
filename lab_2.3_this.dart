

class avenger(){

    avenger(){
        print("I am an Avenger");
    }


    first_avenger(){
        print("I am Ironman");
    }

    void welcome(){
        print("I am New in Avenger");
        this.first_avenger();
    }



}

class superhero extends avenger{
    superhero(): super(){
        print("I am a Superhero");
    }

    first_superhero(){
        print("I am Batman");
    }

    void welcome(){
        print("I am New in Superhero");
        this.first_superhero();
    }
}

void main(){
    var Tony = new avenger();
    Tony.first_avenger();
    Tony.welcome();
    print("----------");
    var Bruce = new superhero();
    Bruce.first_superhero();
    Bruce.welcome();
}