import 'package:flutter/material.dart';

void main() {
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "my app",
      home: Scaffold(
        backgroundColor: const Color(0xffff5722),
        appBar: AppBar(
          title: const Text("Business Card"),
          backgroundColor: Colors.black,
        ),
        body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage("images/profile.png"),
              radius: 100,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40),
              child: Text("Ibraheem Khazbak",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40
                ),),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text("Software Engineer",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28
                ),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 10),
              child: Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child:const Row(
                  children: [
                    Icon(Icons.phone),
                    SizedBox(
                      width: 20,
                    ),
                    Text("+20 1234567891",
                    style: TextStyle(fontSize: 20),)
                  ],
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child:const Row(
                    children: [
                      Icon(Icons.mail),
                      SizedBox(
                        width: 20,
                      ),
                      Text("ibraheemmkhazbak@gmail.com",
                        style: TextStyle(fontSize: 20),)
                    ],
                  )
              ),
            )

          ],
        )),
      ),

    );
  }
}
