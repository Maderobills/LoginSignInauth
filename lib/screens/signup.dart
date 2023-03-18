import 'package:auth/screens/Login_Page.dart';
import 'package:flutter/material.dart';

import '../reusable_widgets/w_reusable.dart';
import '../utils/colors_utils.dart';
import 'home.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Sign Up",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              hexStringToColor("CB2B93"),
              hexStringToColor("9546C4"),
              hexStringToColor("5E61F4")
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: SingleChildScrollView(
                child: Padding(
              padding: EdgeInsets.fromLTRB(
                  20,120, 20, 0),
              child: Column(children: <Widget>[
                const SizedBox(
                  height: 5,
                ),
                reusableTextField("Enter username", Icons.person_2_outlined,
                    false, _userNameTextController),
                const SizedBox(
                  height: 30,
                ),
                reusableTextField("Enter Email", Icons.person_3_outlined,
                    false, _emailTextController),
                const SizedBox(
                  height: 30,
                ),
                reusableTextField("Enter password", Icons.lock_outline, true,
                    _passwordTextController),
                const SizedBox(
                  height: 30,
                ),
                loginSignInButton(context, false, () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                }),

              ]),
            ))));
  }
}
