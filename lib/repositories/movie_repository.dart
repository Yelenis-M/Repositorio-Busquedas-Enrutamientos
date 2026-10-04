import '../models/movie.dart';

class MovieRepository {
  final _allMovies = [
    Movie(title: 'El Padrino'),
    Movie(title: 'Pulp Fiction'),
    Movie(title: 'El Caballero Oscuro'),
    Movie(title: 'Inception'),
    Movie(title: 'Matrix'),
    Movie(title: 'Forrest Gump'),
    Movie(title: 'Interestelar'),
    Movie(title: 'Gladiador'),
    Movie(title: 'Enredados'),
    Movie(title: 'Frozen'),
    Movie(title: 'Iron Man')
  ];

  Future<List<Movie>> search(String query) async {
    await Future.delayed(const Duration(milliseconds: 500));

    if (query.trim().isEmpty) return [];

    return _allMovies
        .where((movie) =>
            movie.title.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }
}