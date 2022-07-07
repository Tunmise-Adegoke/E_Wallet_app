import 'package:auth_buttons/auth_buttons.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_wallet_app/main.dart';
import 'package:e_wallet_app/screens/home.dart';
import 'package:e_wallet_app/screens/sign_up.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatefulWidget {
  final VoidCallback showRegisterPage;
  const SignInScreen({Key? key, required this.showRegisterPage})
      : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
@override
void dispose() {
  emailController.dispose();
  passwordController.dispose();
}

class _SignInScreenState extends State<SignInScreen> {
  Future SignIn() async {
    showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: CircularProgressIndicator(),
          );
        });

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
          child: SingleChildScrollView(
            child: Column(children: [
              Text(
                'Welcome Back!',
                style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                    fontSize: w * 0.07,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.01,
              ),
              Text(
                'We missed you',
                style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                    fontSize: w * 0.06,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.04,
              ),
              Container(
                height: h * 0.08,
                padding: EdgeInsets.only(left: 12),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: TextField(
                  controller: emailController,
                  showCursor: true,
                  style: const TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter email',
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.04,
              ),
              Container(
                padding: EdgeInsets.only(left: 12),
                height: h * 0.08,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: TextField(
                  controller: passwordController,
                  showCursor: true,
                  style: const TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter password',
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.04,
              ),
              SizedBox(
                height: h * 0.07,
                width: w * 0.70,
                child: ElevatedButton(
                  onPressed: () {
                    SignIn();
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Text('Enter'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    textStyle: TextStyle(
                      fontSize: w * 0.04,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Nunito',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.03,
              ),
              SizedBox(
                height: h * 0.07,
                width: w * 0.70,
                child: ElevatedButton(
                  onPressed: () {
                    widget.showRegisterPage;
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => SignUpScreen()));
                  },
                  child: Text('Don\'t have an account? Sign up'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    textStyle: TextStyle(
                      fontSize: w * 0.04,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Nunito',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.03,
              ),
              GoogleAuthButton(
                onPressed: () {},
                style: AuthButtonStyle(
                  buttonColor: Colors.black,
                  height: h * 0.07,
                  width: w * 0.70,
                  borderRadius: 30,
                  textStyle: TextStyle(
                    fontSize: w * 0.04,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Nunito',
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
