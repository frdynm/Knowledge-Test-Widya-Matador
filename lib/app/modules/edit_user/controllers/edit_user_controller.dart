import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knowledgewidya/app/modules/home/views/home_view.dart';
import 'package:knowledgewidya/app/routes/app_pages.dart';

class EditUserController extends GetxController {
  //TODO: Implement EditUserController

  late TextEditingController namaLengkapC = TextEditingController();
  late TextEditingController namaPanggilanC = TextEditingController();
  late TextEditingController nomerHpC = TextEditingController();
  late TextEditingController emailC = TextEditingController();
  late TextEditingController jeniskelaminC = TextEditingController();
  late TextEditingController alamatC = TextEditingController();
  late TextEditingController pekerjaanC = TextEditingController();

//inialiasai firebae
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<DocumentSnapshot<Object?>> getData(String docID) async {
    DocumentReference docref = firestore.collection("users").doc(docID);

    return docref.get();
  }

  void editUser(
      String namaLengkap,
      String namaPanggilan,
      String nomerHandphone,
      String emailPengguna,
      String jenisKelaminPengguna,
      String alamatPengguna,
      String pekerjaanPengguna,
      String docID) async {
    DocumentReference Updateusers =
        FirebaseFirestore.instance.collection("users").doc(docID);
    try {
      await Updateusers.update({
        'nama_Lengkap': namaLengkap,
        'nama_panggilan': namaPanggilan,
        'nomer_Handphone': nomerHandphone,
        'email': emailPengguna,
        'jenis_kelamin': jenisKelaminPengguna,
        'alamat_pengguna': alamatPengguna,
        'pekerjaan': pekerjaanPengguna,
      });

      Get.defaultDialog(
          title: "pengguna berhasil diedit",
          middleText: "berhasil mengedit pengguna",
          onConfirm: () {
            Get.offAllNamed(Routes.HOME);
          });
    } catch (e) {
      print(e);
      Get.defaultDialog(
          title: "pengguna Gagal  diedit",
          middleText: "Gagal mengedit pengguna",
          onConfirm: () {
            Get.back();
          });
    }
  }
}
