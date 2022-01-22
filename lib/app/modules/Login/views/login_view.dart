import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:knowledgewidya/app/modules/Login/views/registerview_view.dart';
import 'package:knowledgewidya/app/modules/Login/views/resetpasswordview_view.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final LoginC = Get.put(LoginController());
  final TextEditingController emailC = TextEditingController();
  final TextEditingController passwordC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          Text(
            "Login",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          TextFormField(
            controller: emailC,
            decoration: InputDecoration(
                // focusedborder == ketika di klik nanti mau di apain si outline nya
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 1.0)),
                labelStyle: TextStyle(color: Colors.black),
                hintText: "Admin@gmail.com",
                suffixIcon: Icon(
                  Icons.mail_outline_rounded,
                  color: Colors.black,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
          ),
          SizedBox(height: 10),
          TextFormField(
            controller: passwordC,
            obscureText: true,
            decoration: InputDecoration(
                // focusedborder == ketika di klik nanti mau di apain si outline nya
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 1.0)),
                labelStyle: TextStyle(color: Colors.black),
                hintText: "Password",
                suffixIcon: Icon(
                  Icons.password_rounded,
                  color: Colors.black,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
          ),
          TextButton(
              onPressed: () {
                Get.to(ResetpasswordviewView());
              },
              child: Text(
                "Forgot Password?",
                style: TextStyle(color: Colors.lightBlue),
              )),
          Container(
            height: 60,
            width: Get.width,
            child: ElevatedButton(
              child: Text(
                "Login",
                style: TextStyle(fontSize: 30),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              onPressed: () {
                print("fi klik");
                LoginC.Login(emailC.text, passwordC.text);
              },
            ),
          ),
          SizedBox(height: 10),
          Center(
              child: Text(
            "OR",
            style: TextStyle(color: Colors.grey),
          )),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "belum punya akun ? ",
                style: TextStyle(color: Colors.grey),
              ),
              TextButton(
                  onPressed: () {
                    Get.to(RegisterviewView());
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(color: Colors.lightBlue),
                  ))
            ],
          )
        ],
      ),
    ));
  }
}
