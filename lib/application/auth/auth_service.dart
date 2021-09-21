import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

/// Classe vai ficar sempre disponivel dentro do GET nunca vai morrer
class AuthService extends GetxService {
  
  User? user;

  void init() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      this.user = user;
      if (user == null) {
        Get.offAllNamed('/login');
      } else {
        Get.offAllNamed('/home');
      }
    });
  }
}
