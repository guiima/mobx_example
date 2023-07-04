import 'package:mobx/mobx.dart';

part 'movies_controller.g.dart';

class MoviesController = MoviesControllerBase with _$MoviesController;

abstract class MoviesControllerBase with Store {
  @observable
  ObservableList<String> movies = ObservableList<String>();

  @observable
  bool loading = false;

  @observable
  bool hasError = false;

  @observable
  bool hasSystemError = false;

  @computed
  bool get hasData => !loading && !hasError && movies.isNotEmpty;

  @action
  Future<void> getMovies() async {
    _setLoading(true);
    _setError(false);

    await Future.delayed(const Duration(seconds: 3));
    // _setSystemError(true);
    // _setError(true);

    movies.addAll([
      "Titanic",
      "O Poderoso Chefão",
      "Star Wars: Uma Nova Esperança",
      "O Senhor dos Anéis: O Retorno do Rei",
      "Jurassic Park",
      "O Rei Leão",
      "Harry Potter e a Pedra Filosofal",
      "Avatar",
      "O Silêncio dos Inocentes",
      "Matrix"
    ]);

    _setLoading(false);
  }

  void _setLoading(bool value) {
    loading = value;
  }

  void _setError(bool value) {
    hasError = value;
  }

  void _setSystemError(bool value) {
    hasSystemError = value;
  }
}
