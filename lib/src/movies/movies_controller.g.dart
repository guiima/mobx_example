// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MoviesController on MoviesControllerBase, Store {
  Computed<bool>? _$hasDataComputed;

  @override
  bool get hasData => (_$hasDataComputed ??= Computed<bool>(() => super.hasData,
          name: 'MoviesControllerBase.hasData'))
      .value;

  late final _$moviesAtom =
      Atom(name: 'MoviesControllerBase.movies', context: context);

  @override
  ObservableList<String> get movies {
    _$moviesAtom.reportRead();
    return super.movies;
  }

  @override
  set movies(ObservableList<String> value) {
    _$moviesAtom.reportWrite(value, super.movies, () {
      super.movies = value;
    });
  }

  late final _$loadingAtom =
      Atom(name: 'MoviesControllerBase.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$hasErrorAtom =
      Atom(name: 'MoviesControllerBase.hasError', context: context);

  @override
  bool get hasError {
    _$hasErrorAtom.reportRead();
    return super.hasError;
  }

  @override
  set hasError(bool value) {
    _$hasErrorAtom.reportWrite(value, super.hasError, () {
      super.hasError = value;
    });
  }

  late final _$hasSystemErrorAtom =
      Atom(name: 'MoviesControllerBase.hasSystemError', context: context);

  @override
  bool get hasSystemError {
    _$hasSystemErrorAtom.reportRead();
    return super.hasSystemError;
  }

  @override
  set hasSystemError(bool value) {
    _$hasSystemErrorAtom.reportWrite(value, super.hasSystemError, () {
      super.hasSystemError = value;
    });
  }

  late final _$getMoviesAsyncAction =
      AsyncAction('MoviesControllerBase.getMovies', context: context);

  @override
  Future<void> getMovies() {
    return _$getMoviesAsyncAction.run(() => super.getMovies());
  }

  @override
  String toString() {
    return '''
movies: ${movies},
loading: ${loading},
hasError: ${hasError},
hasSystemError: ${hasSystemError},
hasData: ${hasData}
    ''';
  }
}
