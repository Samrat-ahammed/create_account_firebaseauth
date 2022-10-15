import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cPasswordController = TextEditingController();

  void createAccount() async {
    final String email = _emailController.text.trim();
    final String password = passwordController.text.trim();
    final String cPassword = cPasswordController.text.trim();

    if (email == "" || password == "" || cPassword == "") {
      log("create a account ");
    } else if (password != cPassword) {
      log("Password dos not match");
    } else {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        log("User Created!");
      } on FirebaseAuthException catch (e) {
        log(e.code.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Login"),
      ),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const SizedBox(
            height: 30,
          ),
          const Center(
            child: Text(
              "Login Here",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: TextFormField(
              controller: cPasswordController,
              decoration: InputDecoration(
                hintText: "Confirm Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 50,
            width: 200,
            child: ElevatedButton(
              onPressed: () async {
                createAccount();
              },
              child: const Text("Login"),
            ),
          ),
        ],
      ),
    );
  }
}
