import 'package:app_movie/application/ui/movie_app_ui_config.dart';
import 'package:app_movie/modules/home/home_module.dart';
import 'package:app_movie/modules/login/login_module.dart';
import 'package:app_movie/modules/movie_detail/movie_module.dart';
import 'package:app_movie/modules/splash/splash_module.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'application/bindings/apllication_bindings.dart';

Future<void> main() async {
  // Iniciar o Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // Pegar instancia do remoteConfig
  RemoteConfig.instance.fetchAndActivate();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: MovieAppUiConfig.title,
      initialBinding: ApllicationBindings(),
      theme: MovieAppUiConfig.theme,
      getPages: [
        // ... conceito de destruction destroi esses dados do array que ele vem e adiciona dentro deste
        ...SplashModule().routers,
        ...LoginModule().routers,
        ...HomeModule().routers,
        ...MovieDetailModule().routers,
      ],
    );
  }
}
