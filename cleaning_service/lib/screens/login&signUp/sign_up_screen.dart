import 'package:cleaning_service/colors/colors.dart';
import 'package:flutter/material.dart';

import '../../widgets/input_field_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
          "Create Your Account",
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2),
        )),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  "Welcome to Cleaning Service",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  "by continung , you agree to Pinterest's \n\t\t\t\t\t\tTerms of service, Privacy Policy",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 20,
                ),
                UserInputField(
                    title: "Name",
                    icon: Icons.person,
                    controller: nameController,
                    inputType: TextInputType.name),
                UserInputField(
                    title: "phone",
                    icon: Icons.phone,
                    controller: phoneController,
                    inputType: TextInputType.phone),
                UserInputField(
                    title: "Email",
                    icon: Icons.email_outlined,
                    controller: emailController,
                    inputType: TextInputType.emailAddress),
                UserInputField(
                    title: "Create a Password",
                    icon: Icons.key_outlined,
                    controller: passController,
                    inputType: TextInputType.visiblePassword),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration:
                          BoxDecoration(border: Border.all(color: blueColor)),
                      child: Checkbox(
                        value: value,
                        onChanged: (bool? value1) {
                          setState(() {
                            this.value = value1!;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Remember me ',
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: blueColor,
                      ),
                      onPressed: () {},
                      child: const Text(
                        "SignUp",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            letterSpacing: 1),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already a member?",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.black),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SignUpScreen()));
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(
                              color: blueColor,
                              fontWeight: FontWeight.w800,
                              decoration: TextDecoration.underline,
                            ),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
