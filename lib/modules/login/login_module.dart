import 'package:app_movie/application/modules/module.dart';
import 'package:app_movie/modules/login/login_bindings.dart';
import 'package:app_movie/modules/login/login_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class LoginModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/login',
      page: () => LoginPage(),
      binding: LoginBindings(),
    ),
  ];
}
