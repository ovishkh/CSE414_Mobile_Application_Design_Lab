import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>{
  int _counter = 0 ;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(child: Text("$_counter")),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            _counter++;
          });
        },
        
        child: const Icon(icon,add),
      ),



    )


  }


}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
          backgroundColor: Color.fromARGB(255, 244, 191, 0),
        ),

        body: Center(child: Text('Hello All')),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          ],
        ),
      ),
    );
  }
}
