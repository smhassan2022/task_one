import 'package:flutter/material.dart';

void main() {
  runApp(dashboard_screen());
}

class dashboard_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: dashboard(),
    );
  }
}

class dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(Icons.menu),
        backgroundColor: Color(0xff1b1093),
        actions: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80"))),
          )
        ],
      ),
      body: Center(
        child: Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
                0.1,
                0.4,
              ],
              colors: [
                Color(0xff1b1093),
                Color(0xff421fad),
              ],
            )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi Muneeb!',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 150,
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(top: 20.0),
                  decoration: BoxDecoration(
                    color: Color(0xff3120bc),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mobile App Design',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            'You have completed  ',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '64% ',
                            style: TextStyle(
                              fontSize: 22.0,
                              color: Colors.yellow,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Course',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            margin: EdgeInsets.only(top: 10.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80"))),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            margin: EdgeInsets.only(top: 10.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://newprofilepic2.photo-cdn.net//assets/images/article/profile.jpg"))),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 155,
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 150,
                                padding: EdgeInsets.all(20),
                                margin: EdgeInsets.only(top: 20.0),
                                decoration: BoxDecoration(
                                  color: Color(0xff3120bc),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '22',
                                      style: TextStyle(
                                          fontSize: 30.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Done',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 100,
                                padding: EdgeInsets.all(20),
                                margin: EdgeInsets.only(top: 20.0),
                                decoration: BoxDecoration(
                                  color: Color(0xff3120bc),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '10',
                                      style: TextStyle(
                                          fontSize: 30.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Pending',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20.0),
                      // color: Colors.yellow,
                      width: 155,
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 100,
                                padding: EdgeInsets.all(20),
                                margin: EdgeInsets.only(top: 20.0),
                                decoration: BoxDecoration(
                                  color: Color(0xff3120bc),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '7',
                                      style: TextStyle(
                                          fontSize: 30.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'In Progress',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 150,
                                padding: EdgeInsets.all(20),
                                margin: EdgeInsets.only(top: 20.0),
                                decoration: BoxDecoration(
                                  color: Color(0xff3120bc),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '12',
                                      style: TextStyle(
                                          fontSize: 30.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Review',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
