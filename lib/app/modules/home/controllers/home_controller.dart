import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:knowledgewidya/app/routes/app_pages.dart';

class HomeController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  //mau nampilin data

  Future<QuerySnapshot<Object?>> getData() async {
    //deklarasi collection mana yang mau diambil
    CollectionReference user = firestore.collection("users");
    return user.get();
  }

  //untuk delete user
  void deleteUser(String docID) {
    DocumentReference docref = firestore.collection("users").doc(docID);

    try {
      docref.delete();
      Get.defaultDialog(
          title: "BErhasil menghapus user",
          middleText: "data sudah dihapus",
          onConfirm: () {
            Get.back();
            Get.offAllNamed(Routes.HOME);
          });
    } catch (e) {}
  }
}
