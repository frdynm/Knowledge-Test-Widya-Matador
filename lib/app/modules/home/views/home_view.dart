import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:knowledgewidya/app/modules/Login/controllers/login_controller.dart';
import 'package:knowledgewidya/app/modules/add_user/views/add_user_view.dart';
import 'package:knowledgewidya/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final conL = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                conL.Logout();
              },
              icon: Icon(Icons.logout)),
        ],
      ),
      body: FutureBuilder<QuerySnapshot<Object?>>(
          future: controller.getData(),
          builder: (context, snapshot) {
            print(snapshot.data!.docs);
            //mbikin variable dokumen
            var listDokumen = snapshot.data!.docs;
            if (snapshot.connectionState == ConnectionState.done) {
              return ListView.builder(
                //jumlah akan sama kaya panjang dari isi array listdokumen
                itemCount: listDokumen.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () => Get.toNamed(Routes.EDIT_USER,
                        arguments: listDokumen[index].id),
                    leading: Icon(Icons.people),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        controller.deleteUser(listDokumen[index].id);
                      },
                    ),
                    title: Text(
                        "Nama ${(listDokumen[index].data() as Map<String, dynamic>)['nama_Lengkap']}"),
                    subtitle: Text(
                        "Nomer  ${(listDokumen[index].data() as Map<String, dynamic>)['nomer_Handphone']}"),
                  );
                },
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(AddUserView());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
