import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/edit_user_controller.dart';

class EditUserView extends GetView<EditUserController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EditUserView'),
        centerTitle: true,
      ),
      body: FutureBuilder<DocumentSnapshot<Object?>>(
        future: controller.getData(Get.arguments),
        builder: (context, snapshot) {
          //ambil dulu data nya
          var data = snapshot.data!.data() as Map<String, dynamic>;
          print(data['nama_Lengkap']);
          //timpa isi controlernya ke controller
          controller.namaLengkapC.text = data['nama_Lengkap'];
          controller.namaPanggilanC.text = data['nama_panggilan'];
          controller.nomerHpC.text = data['nomer_Handphone'];
          controller.emailC.text = data['email'];
          controller.jeniskelaminC.text = data['jenis_kelamin'];
          controller.alamatC.text = data['alamat_pengguna'];
          controller.pekerjaanC.text = data['pekerjaan'];

          return Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: controller.namaLengkapC,
                  decoration: InputDecoration(
                      labelText: "Nama Lengkap",
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 1.0)),
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
                  controller: controller.namaPanggilanC,
                  decoration: InputDecoration(
                      labelText: "Nama Panggilan",
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 1.0)),
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
                  controller: controller.nomerHpC,
                  decoration: InputDecoration(
                      labelText: "No. HP :",
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 1.0)),
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
                  controller: controller.emailC,
                  decoration: InputDecoration(
                      labelText: "Email :",
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 1.0)),
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
                  controller: controller.jeniskelaminC,
                  decoration: InputDecoration(
                      labelText: "Jenis Kelamin:",
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 1.0)),
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
                  controller: controller.alamatC,
                  decoration: InputDecoration(
                      labelText: "Alamat :",
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 1.0)),
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
                  controller: controller.pekerjaanC,
                  decoration: InputDecoration(
                      labelText: "Pekerjaan : ",
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 1.0)),
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
                      "Edit",
                      style: TextStyle(fontSize: 30),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.lightBlue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () {
                      controller.editUser(
                          controller.namaLengkapC.text,
                          controller.namaPanggilanC.text,
                          controller.nomerHpC.text,
                          controller.emailC.text,
                          controller.jeniskelaminC.text,
                          controller.alamatC.text,
                          controller.pekerjaanC.text,
                          Get.arguments);
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
