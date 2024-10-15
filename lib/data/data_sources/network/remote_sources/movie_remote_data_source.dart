import 'package:flutter_clean_architecture/core/models/resource.dart';
import 'package:flutter_clean_architecture/data/data_sources/network/client/api_request_representable.dart';
import 'package:flutter_clean_architecture/data/data_sources/network/client/network_service.dart';
import 'package:flutter_clean_architecture/data/mappers/movie_mapper.dart';
import 'package:flutter_clean_architecture/data/models/movie_list_dto.dart';
import 'package:flutter_clean_architecture/domain/entities/movie_entity.dart';

abstract class MovieRemoteDataSource {
  Future<Resource<List<MovieEntity>>> getMovies();
}

class MovieRemoteDataSourceImpl extends MovieRemoteDataSource {
  NetworkService networkService;

  MovieRemoteDataSourceImpl({required this.networkService});

  var header = {"Authorization": "Bearer "};

  @override
  Future<Resource<List<MovieEntity>>> getMovies() async {
    var response = await networkService.get(APIRequestRepresentable(
        headers: header,
        url:
            "/discover/movie?include_adult=false&include_video=false&language=en-US&page=1&sort_by=popularity.desc"));
    if (response.statusCode == 200) {
      var dto = MovieListDto.fromJson(response.data);
      return Resource.success(MovieMappers.movieListEntityFromDTO(dto));
    }
    return Resource.error("Error");
  }
}
