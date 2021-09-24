import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import './login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  @override
  Future<UserCredential> login() async {
    final googleUser = await GoogleSignIn().signIn();
    final googleAuth = await googleUser?.authentication;

    if (googleAuth != null) {
      final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

      return FirebaseAuth.instance.signInWithCredential(credential);
    }

    throw Exception('Erro ao realizao login com o Google');
  }

  @override
  Future<UserCredential> loginFacebook() async {
    final LoginResult result = await FacebookAuth.instance.login();
    if (result.status == LoginStatus.success) {
      
      final OAuthCredential credential =
          FacebookAuthProvider.credential(result.accessToken!.token);
      
      return await FirebaseAuth.instance.signInWithCredential(credential);
    }
    return throw Exception('Erro ao realiza o login com o Facebook');
  }

  @override
  Future<void> logout() async {
    await GoogleSignIn().signOut();
    await FacebookAuth.instance.logOut();
    FirebaseAuth.instance.signOut();
  }

  
}
