import 'package:app_movie/application/modules/module.dart';
import 'package:app_movie/modules/movie_detail/movie_detail_bindings.dart';
import 'package:app_movie/modules/movie_detail/movie_detail_page.dart';
import 'package:get/get.dart';

class MovieDetailModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/movie/detail',
      page: () => MovieDetailPage(),
      binding: MovieDetailBindings(),
    ),
  ];
}