import 'package:doctor_ui/screens/signin_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            const SizedBox(height: 10),
            Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset(
                  "assets/images/2.png",
                  width: 300,
                  height: 300,
                )),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.all(12),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Username"),
                    prefixIcon: Icon(Icons.person)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextField(
                obscureText: passToggle ? true : false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Password"),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: InkWell(
                      onTap: () {
                        if (passToggle == true) {
                          passToggle = false;
                        } else {
                          passToggle = true;
                        }
                        setState(() {});
                      },
                      child: passToggle
                          ? Icon(CupertinoIcons.eye_slash_fill)
                          : Icon(CupertinoIcons.eye_fill),
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: double.infinity,
                child: Material(
                  color: const Color.fromARGB(255, 81, 220, 173),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                    },
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Center(
                          child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have acount ?",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black26,
                      fontWeight: FontWeight.w500),
                ),
                TextButton(
                    onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()));
                    },
                    child: Text(
                      "Sign In ",
                      style: TextStyle(
                          color: Color.fromARGB(255, 81, 220, 173),
                          fontWeight: FontWeight.bold),
                    ))
              ],
            )
          ],
        )),
      ),
    );
  }
}
