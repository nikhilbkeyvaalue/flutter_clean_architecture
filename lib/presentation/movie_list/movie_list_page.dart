import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/core/view/base_view.dart';
import 'package:flutter_clean_architecture/data/data_sources/network/client/dio/dio_network_service.dart';
import 'package:flutter_clean_architecture/data/data_sources/network/remote_sources/movie_remote_data_source.dart';
import 'package:flutter_clean_architecture/data/repositories/movie_repo_impl.dart';
import 'package:flutter_clean_architecture/domain/movies/entities/movie_entity.dart';
import 'package:flutter_clean_architecture/domain/movies/use_cases/get_movies_use_case.dart';
import 'package:flutter_clean_architecture/presentation/movie_list/movie_list_cubit.dart';
import 'package:flutter_clean_architecture/presentation/movie_list/movie_list_state.dart';

class MovieListPage extends StatelessWidget {
  const MovieListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Movie List'),
        ),
        body: BlocProvider(
          create: (context) => MovieListCubit(GetMoviesUseCase(
            MovieRepoImpl(
              MovieRemoteDataSourceImpl(
                networkService: DioNetWorkService(client: Dio()),
              ),
            ),
          )),
          child: _buildBody(context),
        ));
  }

  _buildBody(BuildContext context) {
    return BlocConsumer<MovieListCubit, MovieListState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        final cubit = BlocProvider.of<MovieListCubit>(context);
        return BaseView(
            resource: state.movies,
            onSuccess: (List<MovieEntity> movies) {
              return ListView.builder(
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  final movie = movies[index];
                  return ListTile(
                    title: Text(movie.title),
                    subtitle: Text(movie.body),
                  );
                },
              );
            },
            resourceCall: cubit.getMovies);
      },
    );
  }
}
