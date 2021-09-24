import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';

/// Classe vai ficar sempre disponivel dentro do GET nunca vai morrer
class AuthService extends GetxService {
  
  User? user;

  void init() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) async {
      this.user = user;
      final AccessToken? accessToken = await FacebookAuth.instance.accessToken;
      if (user == null || accessToken == null) {
        Get.offAllNamed('/login');
      } else {
        Get.offAllNamed('/home');
      }
    });
  }
}
