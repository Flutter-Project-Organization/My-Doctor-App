import 'package:doctor_ui/screens/home_screen.dart';
import 'package:doctor_ui/screens/login_screen.dart';
import 'package:doctor_ui/widgets/navbar_roots.dart';
import 'package:doctor_ui/screens/signin_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          const SizedBox(height: 15),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              child: const Text(
                "Skip",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>NavBarRoots()));
              },
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Image.asset("assets/images/3.png"),
          ),
          const SizedBox(height: 50),
          const Text(
            "My Doctor",
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 1),
          ),
          const SizedBox(height: 10),
          const Text(
            "Santé en poche, soins à portée de main !",
            style: TextStyle(
                color: Colors.black26,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                letterSpacing: 1),
          ),
          const SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                color: const Color.fromARGB(255, 81, 220, 173),
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    child: Text("Login" , style: TextStyle(color: Colors.white , fontSize: 22 , fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              Material(
                color: const Color.fromARGB(255, 81, 220, 173),
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    child: Text("Sign Up" , style: TextStyle(color: Colors.white , fontSize: 22 , fontWeight: FontWeight.bold),),
                  ),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
