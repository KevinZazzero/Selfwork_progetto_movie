import 'package:flutter/material.dart';
import 'package:selfwork_sqlite/viewmodels/movie_view_model.dart';
import 'package:provider/provider.dart';
import 'package:selfwork_sqlite/views/components/movie_card.dart';


class MovieListWidget extends StatefulWidget {
  const MovieListWidget({super.key});

  @override
  State<MovieListWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MovieListWidget> {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MovieViewModel>();
    final movies = viewModel.movies;

    return Column(
      children: [
        Expanded(child: ListView.builder(
          itemCount: movies.length,
          itemBuilder: (context, index){
            final movie = movies[index];
            return MovieCard(movie: movie);
          } ))
      ],
    );
  }
}

