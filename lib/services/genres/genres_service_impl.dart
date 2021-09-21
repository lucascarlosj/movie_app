import 'package:app_movie/models/genres_model.dart';
import 'package:app_movie/repositories/genres/genres_repository.dart';

import './genres_service.dart';

class GenresServiceImpl implements GenresService {
  final GenresRepository _genreRepository;

  GenresServiceImpl({
    required GenresRepository genreRepository,
  }) : _genreRepository = genreRepository;

  @override
  Future<List<GenreModel>> getGenres() => _genreRepository.getGenres();
}
