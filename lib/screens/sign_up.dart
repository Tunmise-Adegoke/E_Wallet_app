import 'package:auth_buttons/auth_buttons.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_wallet_app/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  final VoidCallback showLoginPage;
  const SignUpScreen({
    required this.showLoginPage,
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

TextEditingController nameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController confirmPasswordController = TextEditingController();
final formKey = GlobalKey<FormState>();
@override
void dispose() {
  nameController.dispose();
  emailController.dispose();
  passwordController.dispose();
  confirmPasswordController.dispose();
}

class _SignUpScreenState extends State<SignUpScreen> {
  Future signUp() async {
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
    try {
      if (passwordConfimed()) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );

        //add user details
        addUsersDetails(
          nameController.text.trim(),
          emailController.text.trim(),
        );
      }
    } on FirebaseAuthException catch (e) {
      (e);
    }
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }

  Future addUsersDetails(String name, String email) async {
    await FirebaseFirestore.instance.collection('user').add({
      'name': name,
      'email': email,
    });
  }

  bool passwordConfimed() {
    if (passwordController.text.trim() ==
        confirmPasswordController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  bool _passwordVisibilityA = false;
  bool _passwordVisibilityB = false;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(children: [
                Text(
                  'Create an account',
                  style: GoogleFonts.nunito(
                    textStyle: TextStyle(
                      fontSize: w * 0.08,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.04,
                ),
                Container(
                  height: h * 0.08,
                  padding: const EdgeInsets.only(left: 12),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: TextField(
                    controller: nameController,
                    showCursor: true,
                    style: const TextStyle(fontSize: 20),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Name',
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.04,
                ),
                Container(
                  height: h * 0.08,
                  padding: const EdgeInsets.only(left: 12),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: TextFormField(
                    controller: emailController,
                    showCursor: true,
                    style: const TextStyle(fontSize: 20),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter email',
                    ),
                    // autovalidateMode: AutovalidateMode.onUserInteraction,
                    // validator: (email) =>
                    // email != null && EmailValidator.validate(email)
                    //   ? 'Enter a valid email'
                    //   : null,
                  ),
                ),
                SizedBox(
                  height: h * 0.04,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 12),
                  height: h * 0.08,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: !_passwordVisibilityA,
                    showCursor: true,
                    style: const TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText:
                          _passwordVisibilityA ? 'Enter password' : '*******',
                      suffixIcon: IconButton(
                        icon: Icon(_passwordVisibilityA
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _passwordVisibilityA = !_passwordVisibilityA;
                          });
                        },
                      ),
                    ),

                    //   autovalidateMode: AutovalidateMode.onUserInteraction,
                    // validator: (value) =>
                    // value != null && value.length < 6
                    //   ? 'Enter a min of 6 characters'
                    //   : null,
                  ),
                ),
                SizedBox(
                  height: h * 0.04,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 12),
                  height: h * 0.08,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: TextFormField(
                    obscureText: !_passwordVisibilityB,
                    controller: confirmPasswordController,
                    showCursor: true,
                    style: const TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText:
                          _passwordVisibilityB ? 'Enter password' : '*******',
                      suffixIcon: IconButton(
                        icon: Icon(_passwordVisibilityB
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _passwordVisibilityB = !_passwordVisibilityB;
                          });
                        },
                      ),
                    ),
                    // autovalidateMode: AutovalidateMode.onUserInteraction,
                    // validator: (comfirmPassword) =>
                    // comfirmPassword != null && comfirmPassword.length < 6
                    // ?  'Password do not match'
                    // : null,
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
                      signUp();
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: const Text('Create Account'),
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
                SizedBox(
                  height: h * 0.03,
                ),
                SizedBox(
                  height: h * 0.07,
                  width: w * 0.70,
                  child: ElevatedButton(
                    onPressed: () {
                      widget.showLoginPage;
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => SignInScreen(
                      //           widget.showLoginPage, showRegisterPage: () {  },
                      //         )));
                    },
                    child: const Text('Already have an account'),
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
      ),
    );
  }
}
