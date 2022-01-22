import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_user_controller.dart';

class AddUserView extends GetView<AddUserController> {
  final addC = Get.put(AddUserController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('AddUserView'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              TextFormField(
                textInputAction: TextInputAction.next,
                controller: addC.namaLengkapC,
                decoration: InputDecoration(
                    labelText: "Nama Lengkap",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 1.0)),
                    labelStyle: TextStyle(color: Colors.black),
                    hintText: "Type here..",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                textInputAction: TextInputAction.next,
                controller: addC.namaPanggilanC,
                decoration: InputDecoration(
                    labelText: "Nama Panggilan",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 1.0)),
                    labelStyle: TextStyle(color: Colors.black),
                    hintText: "Type here..",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                textInputAction: TextInputAction.next,
                controller: addC.nomerHpC,
                decoration: InputDecoration(
                    labelText: "No. HP :",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 1.0)),
                    labelStyle: TextStyle(color: Colors.black),
                    hintText: "Type here..",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                textInputAction: TextInputAction.next,
                controller: addC.emailC,
                decoration: InputDecoration(
                    labelText: "Email :",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 1.0)),
                    labelStyle: TextStyle(color: Colors.black),
                    hintText: "Type here..",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                textInputAction: TextInputAction.next,
                controller: addC.jeniskelaminC,
                decoration: InputDecoration(
                    labelText: "Jenis Kelamin:",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 1.0)),
                    labelStyle: TextStyle(color: Colors.black),
                    hintText: "Type here..",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
              SizedBox(
                height: 4,
              ),
              TextFormField(
                textInputAction: TextInputAction.next,
                controller: addC.alamatC,
                decoration: InputDecoration(
                    labelText: "Alamat :",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 1.0)),
                    labelStyle: TextStyle(color: Colors.black),
                    hintText: "Type here..",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                textInputAction: TextInputAction.done,
                controller: addC.pekerjaanC,
                decoration: InputDecoration(
                    labelText: "Pekerjaan : ",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 1.0)),
                    labelStyle: TextStyle(color: Colors.black),
                    hintText: "Type here..",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 60,
                width: Get.width,
                child: ElevatedButton(
                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: 30),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () {
                    addC.addUser(
                        addC.namaLengkapC.text,
                        addC.namaPanggilanC.text,
                        addC.nomerHpC.text,
                        addC.emailC.text,
                        addC.jeniskelaminC.text,
                        addC.alamatC.text,
                        addC.pekerjaanC.text);
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
