import 'package:flutter/material.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade200,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              width: 300,
              height: 50,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurple,
                      blurRadius: 4.0,
                      spreadRadius: 0.0,
                      offset: Offset(2.0, 2.0), // shadow direction: bottom right
                    )
                  ],
                ),
              child: const Align(
                alignment: Alignment.center,
                child: Text("Admin page",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w500),),
              )
            ),
            Container(
              width: 50,
              height: 100,
              padding: const EdgeInsets.only(top: 20,bottom: 20,left: 30,right: 30),
              margin: const EdgeInsets.only(top: 20,bottom: 10,left: 100,right: 100),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  primary: Colors.redAccent[200],
                  side: const BorderSide(color: Colors.black45, width: 1),
                  minimumSize: const Size(10,20),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),),
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const[
                    Align(
                      alignment: Alignment.topCenter,
                      child: Icon(Icons.add_circle_outline_rounded,size: 30),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text("Add new product",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                    )
                  ],
                )
              ),
            )
          ],
        )
    );
  }
}
