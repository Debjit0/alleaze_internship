import 'package:alleaze_internship/pages/homepage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../providers/authprovider.dart';
import '../utils/routers.dart';
import 'login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formkey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  String fullname = "";
  bool _isLoading = false;
  AuthProvider authProvider = AuthProvider();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 80),
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Alleaze",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                Text(
                  "This app is just for appling in Internship",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    prefixIcon: Icon(
                      Icons.person_2_rounded,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      fullname = value;
                    });
                  },
                  validator: (value) {
                    (value!.isEmpty) ? null : "Name can't be empty";
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: Icon(
                      Icons.email_rounded,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      email = value;
                    });
                  },
                  validator: (value) {
                    RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value!)
                        ? null
                        : "Please enter a valid email";
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                  validator: (value) {
                    (value!.length < 6) ? "Password cant be less than 6" : null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    child: Text(
                      "Register",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      register();
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text.rich(TextSpan(text: "Don't have an account? ", children: [
                  TextSpan(
                      text: "Login Now",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          nextPageOnly(page: LoginPage(), context: context);
                        }),
                ]))
              ],
            ),
          ),
        ),
      ),
    );
  }

  register() {
    if (formkey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });
      authProvider
          .registerUserWithEmailAndPassword(fullname, email, password)
          .then((value) async {
        if (value == true) {
          nextPageOnly(page: HomePage(), context: context);
        }
      }).catchError((e) {
        print(e);
      });
    }
  }
}
