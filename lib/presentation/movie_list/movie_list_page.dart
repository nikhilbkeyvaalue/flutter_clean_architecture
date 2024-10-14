import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/core/di/injectable.dart';
import 'package:flutter_clean_architecture/core/extensions/build_context_extension.dart';
import 'package:flutter_clean_architecture/core/view/base_view.dart';
import 'package:flutter_clean_architecture/domain/entities/movie_entity.dart';
import 'package:flutter_clean_architecture/domain/use_cases/get_movies_use_case.dart';
import 'package:flutter_clean_architecture/presentation/movie_list/movie_list_cubit.dart';
import 'package:flutter_clean_architecture/presentation/movie_list/movie_list_state.dart';
import 'package:flutter_clean_architecture/presentation/widgets/movie_list_card.dart';

class MovieListPage extends StatelessWidget {
  const MovieListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Movie List'),
        ),
        body: BlocProvider(
          create: (context) => MovieListCubit(getIt<GetMoviesUseCase>()),
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
              return GridView.count(
                childAspectRatio: 2,
                crossAxisCount: context.rsp.isMobile
                    ? 1
                    : context.rsp.isDesktop
                        ? 4
                        : 2,
                children: movies.map((e) => MovieListCard(e, context)).toList(),
              );
            },
            resourceCall: cubit.getMovies);
      },
    );
  }
}
