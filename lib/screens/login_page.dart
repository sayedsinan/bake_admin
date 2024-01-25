import 'package:bake_n_cake_admin_side/color/colors.dart';
import 'package:bake_n_cake_admin_side/screens/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // final LoginController controller = Get.put(LoginController());
  SignIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text, password: passwordController.text);
  }

  final _formfield = GlobalKey<FormState>();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maincolor,
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 150,
              ),
              Text(
                "Welcome Admin",
                style: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 30),
              ),
              const SizedBox(
                height: 50,
              ),
              Form(
                key: _formfield,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter your email';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        controller: passwordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(
                                0xFF26C1B5)), // Set your desired color here
                      ),
                    onPressed: () async {
  await SignIn();
  
  if (FirebaseAuth.instance.currentUser != null) {
  
    Get.to(() => HomePage());
  } else {

  }
},
                      child: const Text("Log In"),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
