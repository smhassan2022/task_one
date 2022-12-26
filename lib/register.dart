import 'package:flutter/material.dart';

class MyRegister extends StatelessWidget {

  // Step-1: Create Controller for form fields.
  TextEditingController firstNameCon=TextEditingController();
  TextEditingController lastNameCon=TextEditingController();
  TextEditingController emailCon=TextEditingController();
  TextEditingController choosePassCon=TextEditingController();
  TextEditingController confirmPassNameCon=TextEditingController();

  final mykey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("User Register"),
      ),
      body: SingleChildScrollView(

        // width: double.infinity,
        // height: double.infinity,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50, bottom: 30),
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.app_registration_outlined,
                  size: 80,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(30),
              //width: double.infinity,
              child: Form(
                key: mykey,
                child: Column(
                  children: [
                    // first name field
                    TextFormField(
                      controller: firstNameCon,
                      cursorHeight: 25,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey, width: 1),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue, width: 1),
                          ),
                          hintText: ("First Name"),
                          label: Text("First Name"),
                          prefixIcon: Icon(
                            Icons.android_outlined,
                            color: Colors.grey,
                            size: 22,
                          )),
                      validator: (v){
                        if(v!.isEmpty){
                          return "Enter your first name";
                        }
                        if(v.contains("@")){
                          return "Enter correct email";
                        }
                      }, // validator
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    // last name field
                    TextFormField(
                      controller: lastNameCon,
                      cursorHeight: 25,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey, width: 1),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue, width: 1),
                          ),
                          hintText: ("Last Name"),
                          label: Text("Last Name"),
                          prefixIcon: Icon(
                            Icons.android_outlined,
                            color: Colors.grey,
                            size: 22,
                          )),
                      validator: (v){
                        if(v!.isEmpty){
                          return "Enter your last name";
                        }
                      }, // validator
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    // email ID field
                    TextFormField(
                      controller: choosePassCon,
                      cursorHeight: 25,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey, width: 1),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue, width: 1),
                          ),
                          hintText: ("Email"),
                          label: Text("Enter Your Email"),
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Colors.grey,
                            size: 22,
                          )),
                      validator: (v){
                        if(v!.isEmpty){
                          return "Enter your email";
                        }
                      }, // validator
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    // password field
                    TextFormField(
                      controller: confirmPassNameCon,
                      cursorHeight: 25,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey, width: 1),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue, width: 1),
                          ),
                          hintText: ("Choose Password"),
                          label: Text("Choose Password"),
                          prefixIcon: Icon(
                            Icons.password_outlined,
                            color: Colors.grey,
                            size: 22,
                          )),
                      validator: (v){
                        if(v!.isEmpty){
                          return "Enter your password";
                        }
                      }, // validator
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    // conform password field
                    TextFormField(
                      cursorHeight: 25,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey, width: 1),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue, width: 1),
                          ),
                          hintText: ("Confirm Password"),
                          label: Text("Confirm Password"),
                          prefixIcon: Icon(
                            Icons.password_outlined,
                            color: Colors.grey,
                            size: 22,
                          )),
                      validator: (v){
                        if(v!.isEmpty){
                          return "Enter your confirm password";
                        }
                      }, // validator
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                if(mykey.currentState!.validate())
                                {

                                }
                              },
                              child: Text(
                                'Register Now',
                                style: TextStyle(fontSize: 20),
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(50), // <-- Radius
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
