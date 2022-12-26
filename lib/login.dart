import 'package:flutter/material.dart';



class MyLogin extends StatelessWidget {

  // Step-1: Create Controller for email & password form field.
  TextEditingController emailCon=TextEditingController();
  TextEditingController passCon=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       centerTitle: true,
       title: Text("User Login"),
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
                 // backgroundImage: AssetImage("assets/images/telenor-logo.jpg"),
                  child: Icon(Icons.lock_open_outlined, size: 70, color: Colors.white,),
                ), ),

              Container(
                padding: EdgeInsets.all(30),
                //width: double.infinity,
                child: Column(
                  children: [

                    // login email field
                    TextField(
                      controller: emailCon,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      cursorHeight: 25,
                      decoration: InputDecoration(
                            border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey, width: 1),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey, width: 1,),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue, width: 1),
                          ),
                          hintText: ("email@gmail.com"),
                          label: Text("Email"),
                          prefixIcon: Icon(Icons.email_outlined, color: Colors.grey, size: 22,)

                      ),
                    ),

                    SizedBox(height: 20,),

                    // password field
                    TextField(
                      controller: passCon,
                      obscureText: true,
                      cursorHeight: 25,
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.remove_red_eye),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey, width: 1),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey, width: 1,),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue, width: 1),
                          ),
                          hintText: ("6 Digits"),
                          label: Text("Password"),
                          prefixIcon: Icon(Icons.password_outlined, color: Colors.grey, size: 22,)

                      ),
                    ),

                    SizedBox(height: 20,),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Column (
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                // print(emailCon.text);
                                // print(passCon.text);

                                //validation by if condition
                                if(emailCon.text.isEmpty){
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter your email",textAlign: TextAlign.center,)));
                                  return;
                                }
                                if(passCon.text.length<6){
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter your password",textAlign: TextAlign.center,)));
                                  return;
                                }
                                if(!emailCon.text.contains("@")){
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter correct email ID",textAlign: TextAlign.center,)));
                                  return;
                                }

                                  print("Login Successfully");



                              },
                              child: Text('Login Now', style: TextStyle(fontSize: 20),),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50), // <-- Radius
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )

                    //ElevatedButton(onPressed: (){}, child: Text("Login Now"))

                  ],
                ),

              )

            ],
          ),


      ),
    );
  }
}
