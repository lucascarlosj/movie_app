import 'package:app_movie/models/genres_model.dart';

abstract class GenresRepository {
  Future<List<GenreModel>> getGenres();
}