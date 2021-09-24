import 'package:firebase_auth/firebase_auth.dart';

import 'package:app_movie/repositories/login/login_repository.dart';

import './login_service.dart';

class LoginServiceImpl implements LoginService {

  LoginRepository _loginRepository;

  LoginServiceImpl({
    required LoginRepository loginRepository,
  }) : _loginRepository = loginRepository;
  


  @override
  Future<UserCredential> login() => _loginRepository.login();

  @override
  Future<UserCredential> loginFacebook() => _loginRepository.loginFacebook();

  @override
  Future<void> logout() => _loginRepository.logout();

  

}
