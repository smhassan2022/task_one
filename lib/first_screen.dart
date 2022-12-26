import 'package:flutter/material.dart';
import 'package:task_one/register.dart';
import 'login.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        padding: EdgeInsets.all(30),
        // decoration: BoxDecoration(
        //     image: DecorationImage(
        //         image: NetworkImage(
        //             "https://images.unsplash.com/photo-1579202673506-ca3ce28943ef"
        //         ),
        //         fit: BoxFit.cover
        //     )
        // ),
        child: Column(

          children: [

            SizedBox(
              height: 60,
            ),
            Image(
                image: AssetImage("assets/images/img02.png") ),
            SizedBox(
              height: 100,
            ),
            Container(
              width: double.infinity,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text("Learn Flutter",
                          style: TextStyle(
                              fontSize: 46, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: [
                      Text("With Muneeb", style: TextStyle(fontSize: 32)),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                          "Flutter Row, Column widget Tutorial: Flutter Dart Tutorial for beginners.")
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              child: Column (
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                    onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                         builder: (context) => MyLogin(),
                       ));
                     },
                      child: Text('Login', style: TextStyle(fontSize: 20),),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),  // <-- Radius
                        ),
                      ),
                    ),
                  )
                ],
              ),
              // child: Column(
              //   children: [
              //     MaterialButton(
              //       onPressed: () {
              //         Navigator.of(context).push(MaterialPageRoute(
              //           builder: (context) => MyLogin(),
              //         ));
              //       },
              //       child: Text("Login",
              //           textAlign: TextAlign.center,
              //           style: TextStyle(color: Colors.white, fontSize: 20)),
              //     ),
              //   ],
              // ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              child: Column (
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MyRegister(),
                        ));
                      },
                      child: Text('Register', style: TextStyle(fontSize: 20),),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),  // <-- Radius
                        ),
                      ),
                    ),
                  )
                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
}
