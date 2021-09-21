import 'package:app_movie/application/auth/auth_service.dart';
import 'package:app_movie/application/rest_client/rest_client.dart';
import 'package:app_movie/repositories/login/login_repository.dart';
import 'package:app_movie/repositories/login/login_repository_impl.dart';
import 'package:app_movie/repositories/movies/movies_repository.dart';
import 'package:app_movie/repositories/movies/movies_repository_impl.dart';
import 'package:app_movie/services/login/login_service.dart';
import 'package:app_movie/services/login/login_service_impl.dart';
import 'package:app_movie/services/movies/movies_service.dart';
import 'package:app_movie/services/movies/movies_service_impl.dart';
import 'package:get/get.dart';

class ApllicationBindings implements Bindings {
  @override
  void dependencies() {
    // Utilizando o fenix = true ele nao mata a instancia qnd eu sair da tela
    Get.lazyPut<LoginRepository>(() => LoginRepositoryImpl(), fenix: true);
    Get.lazyPut(() => RestClient(), fenix: true);
    Get.lazyPut<LoginService>(
        () => LoginServiceImpl(loginRepository: Get.find()),
        fenix: true);
    Get.put(AuthService()).init();

    Get.lazyPut<MoviesRepository>(() => MoviesRepositoryImpl(restClient: Get.find()), fenix: true);

    Get.lazyPut<MoviesService>(() => MoviesServiceImpl(moviesRepository: Get.find()), fenix: true);
  }
}
