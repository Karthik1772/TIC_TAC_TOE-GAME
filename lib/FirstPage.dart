import 'package:flutter/material.dart';
import 'Homepage.dart';


class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: double.infinity,
              height:100,
              margin: EdgeInsets.only(top:20),
              child: Center(child: Text("TIC TAC TOE",style: TextStyle(color: Colors.white,fontSize: 40),)),
            ),
            Container(
              width: 400,
              height:400,
              child: Image(image: AssetImage('images/Board.png')),
            ),Container(
              width: double.infinity,
              height:100,
              child: Center(child: Text("@CREATED_BY_KASHYAP",style: TextStyle(color: Colors.white,fontSize: 30),)),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (context)=>homepage()),
                  );
              },
              child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Container(
                width: double.infinity,
                height:100,
                child: Center(child: Text("PLAY GAME",style: TextStyle(color: Colors.black,fontSize: 40),)),
              ),
            ),
            )
          ],
        ),
      )
    );
  }
}