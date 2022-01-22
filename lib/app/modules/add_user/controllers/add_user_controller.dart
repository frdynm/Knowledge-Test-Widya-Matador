import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knowledgewidya/app/routes/app_pages.dart';

class AddUserController extends GetxController {
  //TODO: Implement AddUserController

  final TextEditingController namaLengkapC = TextEditingController();
  final TextEditingController namaPanggilanC = TextEditingController();
  final TextEditingController nomerHpC = TextEditingController();
  final TextEditingController emailC = TextEditingController();
  final TextEditingController jeniskelaminC = TextEditingController();
  final TextEditingController alamatC = TextEditingController();
  final TextEditingController pekerjaanC = TextEditingController();

  void addUser(
      String namaLengkap,
      String namaPanggilan,
      String nomerHandphone,
      String emailPengguna,
      String jenisKelaminPengguna,
      String alamatPengguna,
      String pekerjaanPengguna) async {
    CollectionReference users = FirebaseFirestore.instance.collection("users");
    try {
      await users.add({
        'nama_Lengkap': namaLengkap,
        'nama_panggilan': namaPanggilan,
        'nomer_Handphone': nomerHandphone,
        'email': emailPengguna,
        'jenis_kelamin': jenisKelaminPengguna,
        'alamat_pengguna': alamatPengguna,
        'pekerjaan': pekerjaanPengguna,
      }).then((value) => print(value));

      Get.defaultDialog(
          title: "pengguna berhasil ditambahkan",
          middleText: "berhasil menambahkan pengguna",
          onConfirm: () {
            Get.offAllNamed(Routes.HOME);
          });
    } catch (e) {
      print(e);
      Get.defaultDialog(
          title: "pengguna Gagal  ditambahkan",
          middleText: "Gagal menambahkan pengguna",
          onConfirm: () {
            Get.back();
          });
    }
  }
}
