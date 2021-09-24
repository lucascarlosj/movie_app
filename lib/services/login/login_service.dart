import 'package:firebase_auth/firebase_auth.dart';

abstract class LoginService {
  
  Future<UserCredential> login();

  Future<UserCredential> loginFacebook();

  Future<void> logout();
}