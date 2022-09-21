import 'package:email_login_app/auth_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var emailController = TextEditingController();
    // var passwordController = TextEditingController();
    TextEditingController _email = TextEditingController();
    TextEditingController _password = TextEditingController();

    List images = ["g.png", "f.png", "t.png"];

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            children: [
              //container for the header image
              Container(
                width: w,
                height: h * 0.3,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/signup.png"),
                      fit: BoxFit.cover),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: h * 0.14,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white70,
                      radius: 60,
                      backgroundImage: AssetImage("assets/profile1.png"),
                    )
                  ],
                ),
              ),
              //first container till now
              //container for text and to design
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                width: w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 70,
                    ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //       color: Colors.white,
                    //       borderRadius: BorderRadius.circular(30),
                    //       boxShadow: [
                    //         BoxShadow(
                    //             blurRadius: 10,
                    //             spreadRadius: 7,
                    //             offset: Offset(1, 1),
                    //             color: Colors.grey.withOpacity(0.2))
                    //       ]),
                    //   child: TextField(
                    //     autofocus: true,
                    //     controller: _email,
                    //     decoration: InputDecoration(
                    //         hintText: "Email",
                    //         prefixIcon: Icon(
                    //           Icons.email,
                    //           color: Colors.deepOrangeAccent,
                    //         ),
                    //         focusedBorder: OutlineInputBorder(
                    //           borderRadius: BorderRadius.circular(30),
                    //           borderSide:
                    //               BorderSide(color: Colors.white, width: 1.0),
                    //         ),
                    //         enabledBorder: OutlineInputBorder(
                    //           borderRadius: BorderRadius.circular(30),
                    //           borderSide:
                    //               BorderSide(color: Colors.white, width: 1.0),
                    //         ),
                    //         border: OutlineInputBorder(
                    //             borderRadius: BorderRadius.circular(30))),
                    //   ),
                    // ),

// sagar
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                        hintText: "Email",
                      ),
                    ),
                    //container for circular first text field/box
                    SizedBox(
                      height: 20,
                    ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //       color: Colors.white,
                    //       borderRadius: BorderRadius.circular(30),
                    //       boxShadow: [
                    //         BoxShadow(
                    //             blurRadius: 10,
                    //             spreadRadius: 7,
                    //             offset: Offset(1, 1),
                    //             color: Colors.grey.withOpacity(0.2))
                    //       ]),
                    //   child: TextField(
                    //     controller: _password,
                    //     obscureText: true,
                    //     decoration: InputDecoration(
                    //         hintText: "Password",
                    //         prefixIcon: Icon(
                    //           Icons.password_outlined,
                    //           color: Colors.deepOrangeAccent,
                    //         ),
                    //         focusedBorder: OutlineInputBorder(
                    //           borderRadius: BorderRadius.circular(30),
                    //           borderSide:
                    //               BorderSide(color: Colors.white, width: 1.0),
                    //         ),
                    //         enabledBorder: OutlineInputBorder(
                    //           borderRadius: BorderRadius.circular(30),
                    //           borderSide:
                    //               BorderSide(color: Colors.white, width: 1.0),
                    //         ),
                    //         border: OutlineInputBorder(
                    //             borderRadius: BorderRadius.circular(30))),
                    //   ),
                    // ),

// sagar
                    TextField(
                      controller: _password,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        border: OutlineInputBorder(),
                        hintText: "Password",
                      ),
                    ),
                    //container for second text field/box
                    SizedBox(
                      height: 20,
                    ),
                    //taking blank container in row to push below text to right side
                    // Row(
                    //   children: [
                    //     Expanded(
                    //       child: Container(),
                    //     ),
                    //     Text(
                    //       "forgot your password?",
                    //       style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                    //     ),
                    //   ],
                    // ),
                    //sizedBox for maintaining gap
                    SizedBox(
                      height: 70,
                    ),
                  ],
                ),
              ),
              //container for sign in button using image
              GestureDetector(
                onTap: () {
                  AuthController.instance
                      .register(_email.text.trim(), _password.text.trim());
                },
                child: Container(
                  width: w * 0.5,
                  height: h * 0.08,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        image: AssetImage("assets/loginbtn.png"),
                        fit: BoxFit.cover),
                  ),
                  child: Center(
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Get.back(),
                    text: "Have an account?",
                    style: TextStyle(fontSize: 20, color: Colors.black)),
              ),
              //sizedBox for maintaining gap
              SizedBox(height: 60),
              RichText(
                text: TextSpan(
                  text: "Sign up using one of the following methods",
                  style: TextStyle(color: Colors.grey[500], fontSize: 16),
                ),
              ),
              Wrap(
                children: List<Widget>.generate(3, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey[500],
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("assets/" + images[index]),
                      ),
                    ),
                  );
                }),
              )
            ],
          ),
        ],
      ),
    );
  }
}
