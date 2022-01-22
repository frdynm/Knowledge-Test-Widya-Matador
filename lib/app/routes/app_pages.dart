import 'package:get/get.dart';

import 'package:knowledgewidya/app/modules/Login/bindings/login_binding.dart';
import 'package:knowledgewidya/app/modules/Login/views/login_view.dart';
import 'package:knowledgewidya/app/modules/add_user/bindings/add_user_binding.dart';
import 'package:knowledgewidya/app/modules/add_user/views/add_user_view.dart';
import 'package:knowledgewidya/app/modules/edit_user/bindings/edit_user_binding.dart';
import 'package:knowledgewidya/app/modules/edit_user/views/edit_user_view.dart';
import 'package:knowledgewidya/app/modules/home/bindings/home_binding.dart';
import 'package:knowledgewidya/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ADD_USER,
      page: () => AddUserView(),
      binding: AddUserBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_USER,
      page: () => EditUserView(),
      binding: EditUserBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
  ];
}
