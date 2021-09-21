import 'package:app_movie/models/genres_model.dart';

abstract class GenresService {
  Future<List<GenreModel>> getGenres();
}
