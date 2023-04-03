// // importing material.dart

import 'package:e_wallet_app/screens/sign_in.dart';
import 'package:e_wallet_app/screens/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {

  bool isLogin = true;

  void toggle() => setState(() {
        isLogin = !isLogin;
      });

  Widget authPage(BuildContext context) {
    if (isLogin) {
      return SignUpScreen(showLoginPage: toggle);
    } else {
      return SignInScreen(showRegisterPage: toggle);
    }
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              height: h * 0.60,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/image7.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 400,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                height: h * 0.50,
                width: 420,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                    )),
                child: Column(
                  children: [
                    SizedBox(
                      height: h * 0.04,
                    ),
                    Text(
                      'Hey! Welcome',
                      style: GoogleFonts.nunito(
                        textStyle: TextStyle(
                          fontSize: w * 0.08,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    Text(
                      'The easiest way to transfer ',
                      style: GoogleFonts.nunito(
                        textStyle: TextStyle(
                          fontSize: w * 0.05,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    Text(
                      'and save your points ',
                      style: GoogleFonts.nunito(
                        textStyle: TextStyle(
                          fontSize: w * 0.05,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    SizedBox(
                      height: h * 0.07,
                      width: w * 0.70,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpScreen(
                                        showLoginPage: toggle,
                                      )));
                        },
                        child: const Text('Get Started'),
                        style: ElevatedButton.styleFrom(
                         
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          textStyle: TextStyle(
                            fontSize: w * 0.05,
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignInScreen(
                                        showRegisterPage: toggle,
                                      )));
                        },
                        child: const Text('I already have an account'),
                        style: ElevatedButton.styleFrom(
                         
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
