import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Center(child: Text("Home Page",style: TextStyle(color: Colors.white,fontSize: 30.0),)),
        actions: [
          Icon(Icons.search,color: Colors.white),
          Icon(Icons.notifications,color: Colors.white),
          SizedBox(width: 10),
        ]
      ),
      body: Center(child: Text(number.toString(),style: TextStyle(color: Colors.brown,fontSize: 50.0),)),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.brown,
        child: Icon(Icons.add,color: Colors.white),
          onPressed: (){
          setState(() {
            number++;
          });

      }),
    );
  }
}
