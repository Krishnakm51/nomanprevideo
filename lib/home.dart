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
    Size size = MediaQuery.of(context).size;
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
      body: Container(
        width: size.width,
        height: size.height,
        child: Row(
           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
           // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex:3,
              child: Container(

                height: 100.0,

                color: Colors.orange,
              ),
            ),
            Expanded(
              child: Container(
              //  width: 100.0,
                height: 100.0,
                color: Colors.brown,
              ),
            ),
            Expanded(child: Container(
              color: Colors.green,
              height: 100.0,
            ))
          ],
        ),
      )

      // Container(
      //   height: size.height,
      //   width: size.width,
      //   decoration: BoxDecoration(
      //     color: Colors.green,
      //     borderRadius: BorderRadius.circular(10.0)
      //   ),
      //   child: Center(
      //     child: Text("Container",style: TextStyle(
      //       color: Colors.white,
      //     ),),
      //   ),
      // ),
    );
  }
}
