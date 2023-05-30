import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget {
   List imgs = [
    "doctor1.png",
    "doctor2.png",
    "doctor3.png",
    "doctor4.png",
  ];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 81, 220, 173),
      body: SingleChildScrollView(child: Column(
        children: [
          SizedBox(
            height: 50,
          ), 
          Padding(padding: EdgeInsets.symmetric(horizontal:10 ),
          
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){ Navigator.pop(context);},
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  InkWell(
                    onTap: (){ Navigator.pop(context);},
                    child: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage("assets/images/doctor2.png"),
                        ),
                ],
              ),)
            ],
          ),)
        ],
      )),
    );
  }
}