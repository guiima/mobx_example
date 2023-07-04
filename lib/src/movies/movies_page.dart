import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_example/src/movies/movies_controller.dart';
import 'package:mobx_example/src/movies/system_error_page.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({super.key});

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  final _controller = MoviesController();

  @override
  void initState() {
    super.initState();

    _controllerObserve();
  }

  void _controllerObserve() {
    reaction((_) => _controller.loading, (_) {
      if (_controller.hasSystemError) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const SystemErrorPage(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            child: const Text('Get a list of movies'),
            onPressed: () {
              _controller.getMovies();
            },
          ),
          Observer(
            builder: (_) {
              if (_controller.loading) {
                return const Center(child: CircularProgressIndicator());
              } else if (_controller.hasError) {
                return const Center(child: Text('Error'));
              }

              return Expanded(
                child: ListView.builder(
                  itemCount: _controller.movies.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(_controller.movies[index]),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
      floatingActionButton: Observer(
        builder: (_) {
          if (_controller.hasData) {
            return FloatingActionButton(
              onPressed: () {},
              tooltip: 'Save',
              child: const Icon(Icons.save),
            );
          }

          return Container();
        },
      ),
    );
  }
}
