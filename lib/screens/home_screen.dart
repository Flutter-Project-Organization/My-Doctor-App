import 'package:doctor_ui/screens/appointement_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List symptoms = [
    "Temperature",
    "Snuffle",
    "Fever",
    "Cough",
    "Cold",
  ];
  List imgs = [
    "doctor1.png",
    "doctor2.png",
    "doctor3.png",
    "doctor4.png",
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hello Lauriat",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w400),
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/images/doctor1.png"),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 81, 220, 173),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 6,
                            spreadRadius: 4)
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.add,
                          color: const Color.fromARGB(255, 81, 220, 173),
                          size: 35,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        "Clinic visited",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Call the doctor home",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 6,
                            spreadRadius: 4)
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 197, 234, 218),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.home,
                          color: const Color.fromARGB(255, 81, 220, 173),
                          size: 35,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        "Home visited",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Call the doctor home",
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 25),
          TextHomePage(
            text: ' What are your symptoms?',
          ),
          SizedBox(
            height: 70,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: symptoms.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      color: Color(0xFFF4F6FA),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          spreadRadius: 2,
                        ),
                      ]),
                  child: Center(
                      child: Text(
                    symptoms[index],
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )),
                );
              },
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextHomePage(text: 'Popular Doctors'),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: 4,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AppointmentScreen()));
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2)
                      ]),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage("assets/images/${imgs[index]}"),
                        ),
                        Text(
                          "Dr. Doctor Name",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        ),
                        Text(
                          'Therapist',
                          style: TextStyle(color: Colors.black54),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Text("4.9",
                            style: TextStyle(
                              color: Colors.black54
                            ),)
                          ],
                        )
                      ]),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class TextHomePage extends StatelessWidget {
  final String text;
  const TextHomePage({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 23, fontWeight: FontWeight.w500, color: Colors.black54),
      ),
    );
  }
}
