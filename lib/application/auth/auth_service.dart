import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

/// Classe vai ficar sempre disponivel dentro do GET nunca vai morrer
class AuthService extends GetxService {
  User? user;

  Future<void> init() async {
    FirebaseAuth.instance.authStateChanges().listen(
      (
        User? user,
      ) async {
        this.user = user;
        if (user == null) {
          Get.offAllNamed('/login');
        } else {
          Get.offAllNamed('/home');
        }
      },
    );
  }
}
