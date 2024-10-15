import 'package:flutter_clean_architecture/core/models/resource.dart';
import 'package:flutter_clean_architecture/data/data_sources/network/client/api_request_representable.dart';
import 'package:flutter_clean_architecture/data/data_sources/network/client/network_service.dart';
import 'package:flutter_clean_architecture/data/mappers/movie_mapper.dart';
import 'package:flutter_clean_architecture/data/models/movie_list_dto.dart';
import 'package:flutter_clean_architecture/domain/movies/entities/movie_entity.dart';

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

final sampleData = {
  "page": 1,
  "results": [
    {
      "adult": false,
      "backdrop_path": "/yDHYTfA3R0jFYba16jBB1ef8oIt.jpg",
      "genre_ids": [28, 35, 878],
      "id": 533535,
      "original_language": "en",
      "original_title": "Deadpool & Wolverine",
      "overview":
          "A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine.",
      "popularity": 3643.038,
      "poster_path": "/8cdWjvZQUExUUTzyp4t6EDMubfO.jpg",
      "release_date": "2024-07-24",
      "title": "Deadpool & Wolverine",
      "video": false,
      "vote_average": 7.727,
      "vote_count": 4247
    },
    {
      "adult": false,
      "backdrop_path": "/xi1VSt3DtkevUmzCx2mNlCoDe74.jpg",
      "genre_ids": [35, 14, 27],
      "id": 917496,
      "original_language": "en",
      "original_title": "Beetlejuice Beetlejuice",
      "overview":
          "After a family tragedy, three generations of the Deetz family return home to Winter River. Still haunted by Betelgeuse, Lydia's life is turned upside down when her teenage daughter, Astrid, accidentally opens the portal to the Afterlife.",
      "popularity": 2384.404,
      "poster_path": "/kKgQzkUCnQmeTPkyIwHly2t6ZFI.jpg",
      "release_date": "2024-09-04",
      "title": "Beetlejuice Beetlejuice",
      "video": false,
      "vote_average": 7.205,
      "vote_count": 1026
    },
    {
      "adult": false,
      "backdrop_path": "/lgkPzcOSnTvjeMnuFzozRO5HHw1.jpg",
      "genre_ids": [16, 10751, 35, 28],
      "id": 519182,
      "original_language": "en",
      "original_title": "Despicable Me 4",
      "overview":
          "Gru and Lucy and their girls—Margo, Edith and Agnes—welcome a new member to the Gru family, Gru Jr., who is intent on tormenting his dad. Gru also faces a new nemesis in Maxime Le Mal and his femme fatale girlfriend Valentina, forcing the family to go on the run.",
      "popularity": 1643.066,
      "poster_path": "/wWba3TaojhK7NdycRhoQpsG0FaH.jpg",
      "release_date": "2024-06-20",
      "title": "Despicable Me 4",
      "video": false,
      "vote_average": 7.132,
      "vote_count": 1935
    },
    {
      "adult": false,
      "backdrop_path": "/7h6TqPB3ESmjuVbxCxAeB1c9OB1.jpg",
      "genre_ids": [27, 18, 878],
      "id": 933260,
      "original_language": "en",
      "original_title": "The Substance",
      "overview":
          "A fading celebrity decides to use a black market drug, a cell-replicating substance that temporarily creates a younger, better version of herself.",
      "popularity": 1640.921,
      "poster_path": "/lqoMzCcZYEFK729d6qzt349fB4o.jpg",
      "release_date": "2024-09-07",
      "title": "The Substance",
      "video": false,
      "vote_average": 7.3,
      "vote_count": 269
    },
    {
      "adult": false,
      "backdrop_path": "/hPIWQT70wQK6akqfLXByEvr62u0.jpg",
      "genre_ids": [28, 53, 27, 878],
      "id": 726139,
      "original_language": "ko",
      "original_title": "탈출: 프로젝트 사일런스",
      "overview":
          "Due to sudden deteriorating weather conditions, visibility on the Airport Bridge is severely impaired, leaving people stranded and at risk of the bridge collapsing due to a series of chain collisions and explosions. Amidst the chaos, the canine subjects \"Echo\" from the military experiment \"Project Silence,\" who were being transported in secret, break free, and all human survivors become targets of relentless attacks.",
      "popularity": 1425.034,
      "poster_path": "/fttoFfKikQMwIoV3UVvlCvBhbUw.jpg",
      "release_date": "2024-07-11",
      "title": "Project Silence",
      "video": false,
      "vote_average": 7.046,
      "vote_count": 142
    },
    {
      "adult": false,
      "backdrop_path": "/tCKWksaQI8XkAQLVou0AlGab5S6.jpg",
      "genre_ids": [28, 878],
      "id": 1144962,
      "original_language": "en",
      "original_title": "Transmorphers: Mech Beasts",
      "overview":
          "20 years after the events of Transmorphers, a newer, more advanced species of alien robot descends on a rebuilt Earth, threatening once again to destroy the planet.",
      "popularity": 1228.9,
      "poster_path": "/oqhaffnQqSzdLrYAQA5W4IdAoCX.jpg",
      "release_date": "2023-06-09",
      "title": "Transmorphers: Mech Beasts",
      "video": false,
      "vote_average": 4.7,
      "vote_count": 18
    },
    {
      "adult": false,
      "backdrop_path": "/4zlOPT9CrtIX05bBIkYxNZsm5zN.jpg",
      "genre_ids": [16, 878, 10751],
      "id": 1184918,
      "original_language": "en",
      "original_title": "The Wild Robot",
      "overview":
          "After a shipwreck, an intelligent robot called Roz is stranded on an uninhabited island. To survive the harsh environment, Roz bonds with the island's animals and cares for an orphaned baby goose.",
      "popularity": 1387.423,
      "poster_path": "/wTnV3PCVW5O92JMrFvvrRcV39RU.jpg",
      "release_date": "2024-09-12",
      "title": "The Wild Robot",
      "video": false,
      "vote_average": 8.0,
      "vote_count": 153
    },
    {
      "adult": false,
      "backdrop_path": "/3m0j3hCS8kMAaP9El6Vy5Lqnyft.jpg",
      "genre_ids": [878, 53, 18, 27],
      "id": 1125510,
      "original_language": "es",
      "original_title": "El hoyo 2",
      "overview":
          "After a mysterious leader imposes his law in a brutal system of vertical cells, a new arrival battles against a dubious food distribution method.",
      "popularity": 1833.007,
      "poster_path": "/izuzUb0sDokqp9o8utVfsrSJuy5.jpg",
      "release_date": "2024-09-27",
      "title": "The Platform 2",
      "video": false,
      "vote_average": 5.666,
      "vote_count": 406
    },
    {
      "adult": false,
      "backdrop_path": "/p5ozvmdgsmbWe0H8Xk7Rc8SCwAB.jpg",
      "genre_ids": [16, 10751, 12, 35, 18],
      "id": 1022789,
      "original_language": "en",
      "original_title": "Inside Out 2",
      "overview":
          "Teenager Riley's mind headquarters is undergoing a sudden demolition to make room for something entirely unexpected: new Emotions! Joy, Sadness, Anger, Fear and Disgust, who’ve long been running a successful operation by all accounts, aren’t sure how to feel when Anxiety shows up. And it looks like she’s not alone.",
      "popularity": 1397.953,
      "poster_path": "/vpnVM9B6NMmQpWeZvzLvDESb2QY.jpg",
      "release_date": "2024-06-11",
      "title": "Inside Out 2",
      "video": false,
      "vote_average": 7.628,
      "vote_count": 4243
    },
    {
      "adult": false,
      "backdrop_path": "/Asg2UUwipAdE87MxtJy7SQo08XI.jpg",
      "genre_ids": [28, 14, 27, 53, 80],
      "id": 957452,
      "original_language": "en",
      "original_title": "The Crow",
      "overview":
          "Soulmates Eric and Shelly are brutally murdered when the demons of her dark past catch up with them. Given the chance to save his true love by sacrificing himself, Eric sets out to seek merciless revenge on their killers, traversing the worlds of the living and the dead to put the wrong things right.",
      "popularity": 1166.606,
      "poster_path": "/58QT4cPJ2u2TqWZkterDq9q4yxQ.jpg",
      "release_date": "2024-08-21",
      "title": "The Crow",
      "video": false,
      "vote_average": 5.676,
      "vote_count": 553
    },
    {
      "adult": false,
      "backdrop_path": "/9R9Za5kybgl5AhuCNoK3gngaBdG.jpg",
      "genre_ids": [27, 53],
      "id": 1114513,
      "original_language": "en",
      "original_title": "Speak No Evil",
      "overview":
          "When an American family is invited to spend the weekend at the idyllic country estate of a charming British family they befriended on vacation, what begins as a dream holiday soon warps into a snarled psychological nightmare.",
      "popularity": 953.391,
      "poster_path": "/fDtkrO2OAF8LKQTdzYmu1Y7lCLB.jpg",
      "release_date": "2024-09-11",
      "title": "Speak No Evil",
      "video": false,
      "vote_average": 7.331,
      "vote_count": 596
    },
    {
      "adult": false,
      "backdrop_path": "/xlkclSE4aq7r3JsFIJRgs21zUew.jpg",
      "genre_ids": [27, 53],
      "id": 1034541,
      "original_language": "en",
      "original_title": "Terrifier 3",
      "overview":
          "Five years after surviving Art the Clown's Halloween massacre, Sienna and Jonathan are still struggling to rebuild their shattered lives. As the holiday season approaches, they try to embrace the Christmas spirit and leave the horrors of the past behind. But just when they think they're safe, Art returns, determined to turn their holiday cheer into a new nightmare. The festive season quickly unravels as Art unleashes his twisted brand of terror, proving that no holiday is safe.",
      "popularity": 1012.497,
      "poster_path": "/7NDHoebflLwL1CcgLJ9wZbbDrmV.jpg",
      "release_date": "2024-10-09",
      "title": "Terrifier 3",
      "video": false,
      "vote_average": 7.5,
      "vote_count": 15
    },
    {
      "adult": false,
      "backdrop_path": "/reNf6GBzOe48l9WEnFOxXgW56Vg.jpg",
      "genre_ids": [18, 80, 53],
      "id": 889737,
      "original_language": "en",
      "original_title": "Joker: Folie à Deux",
      "overview":
          "While struggling with his dual identity, Arthur Fleck not only stumbles upon true love, but also finds the music that's always been inside him.",
      "popularity": 929.42,
      "poster_path": "/if8QiqCI7WAGImKcJCfzp6VTyKA.jpg",
      "release_date": "2024-10-01",
      "title": "Joker: Folie à Deux",
      "video": false,
      "vote_average": 5.798,
      "vote_count": 626
    },
    {
      "adult": false,
      "backdrop_path": "/uXDwP5qPhuRyPpQ7WkLbE6t2z5W.jpg",
      "genre_ids": [35, 53, 28],
      "id": 877817,
      "original_language": "en",
      "original_title": "Wolfs",
      "overview":
          "Hired to cover up a high-profile crime, a fixer soon finds his night spiralling out of control when he's forced to work with an unexpected counterpart.",
      "popularity": 808.929,
      "poster_path": "/vOX1Zng472PC2KnS0B9nRfM8aaZ.jpg",
      "release_date": "2024-09-20",
      "title": "Wolfs",
      "video": false,
      "vote_average": 6.609,
      "vote_count": 423
    },
    {
      "adult": false,
      "backdrop_path": "/igtm12Wy9EUlxFeyb4v8bRyuYSY.jpg",
      "genre_ids": [28, 80, 18, 53],
      "id": 1337309,
      "original_language": "th",
      "original_title": "Bangkok Breaking: ฝ่านรกเมืองเทวดา",
      "overview":
          "When a dedicated rescue worker inadvertently gets caught up in the kidnapping plot of a mogul's tween daughter, he must save her from the clutches of rival gangs hunting them down with unpredictable dangers around every corner.",
      "popularity": 857.874,
      "poster_path": "/6VeDn4oIeUK4XwjWGWMb6qvMImQ.jpg",
      "release_date": "2024-09-26",
      "title": "Bangkok Breaking: Heaven and Hell",
      "video": false,
      "vote_average": 6.4,
      "vote_count": 25
    },
    {
      "adult": false,
      "backdrop_path": "/gHpTqPqSIC0jZ4J4QyXlVJ0yBcW.jpg",
      "genre_ids": [28, 80, 53],
      "id": 1215162,
      "original_language": "en",
      "original_title": "Kill 'em All 2",
      "overview":
          "Phillip and Suzanne are retired from the spy game, living peacefully off the grid. That's until their whereabouts are discovered by Vlad, the vengeful brother of their target from the first film.",
      "popularity": 775.016,
      "poster_path": "/hgA5hN3NjNNSTXYOmAI6KNKOzbp.jpg",
      "release_date": "2024-09-24",
      "title": "Kill 'em All 2",
      "video": false,
      "vote_average": 7.006,
      "vote_count": 85
    },
    {
      "adult": false,
      "backdrop_path": "/tncbMvfV0V07UZozXdBEq4Wu9HH.jpg",
      "genre_ids": [28, 80, 53, 35],
      "id": 573435,
      "original_language": "en",
      "original_title": "Bad Boys: Ride or Die",
      "overview":
          "After their late former Captain is framed, Lowrey and Burnett try to clear his name, only to end up on the run themselves.",
      "popularity": 699.295,
      "poster_path": "/oGythE98MYleE6mZlGs5oBGkux1.jpg",
      "release_date": "2024-06-05",
      "title": "Bad Boys: Ride or Die",
      "video": false,
      "vote_average": 7.5,
      "vote_count": 2143
    },
    {
      "adult": false,
      "backdrop_path": "/9msuazXGWAyl7vhxVFU7e7Bb5Ik.jpg",
      "genre_ids": [18, 10749],
      "id": 179387,
      "original_language": "tl",
      "original_title": "Heavenly Touch",
      "overview":
          "Jonard is having trouble making ends meet. His mother is suffering from depression, and he and his sister are forced to quit school in order to take care of her. One day, Jonard meets up his friend Rodel, and Rodel introduces him to the world of massage parlors. Rodel teaches him massage, and brings him to Heavenly Touch, a syndicate-run massage parlor that mostly caters to homosexuals.",
      "popularity": 438.59,
      "poster_path": "/ory8WuAqznTE7lfopTSymHpop2t.jpg",
      "release_date": "2009-05-12",
      "title": "Heavenly Touch",
      "video": false,
      "vote_average": 6.0,
      "vote_count": 19
    },
    {
      "adult": false,
      "backdrop_path": "/zAqBIeO71BFL7bAtP5TFzVjVamy.jpg",
      "genre_ids": [10749, 18],
      "id": 1079091,
      "original_language": "en",
      "original_title": "It Ends with Us",
      "overview":
          "When a woman's first love suddenly reenters her life, her relationship with a charming, but abusive neurosurgeon is upended, and she realizes she must learn to rely on her own strength to make an impossible choice for her future.",
      "popularity": 656.516,
      "poster_path": "/cSMdFWmajaX4oUMLx7HEDI84GkP.jpg",
      "release_date": "2024-08-07",
      "title": "It Ends with Us",
      "video": false,
      "vote_average": 7.047,
      "vote_count": 729
    },
    {
      "adult": false,
      "backdrop_path": "/jf1V00dZdNkVfEq7VPk8frrlELk.jpg",
      "genre_ids": [27, 9648],
      "id": 748230,
      "original_language": "en",
      "original_title": "Salem's Lot",
      "overview":
          "Author Ben Mears returns to his childhood home of Jerusalem's Lot only to discover his hometown is being preyed upon by a bloodthirsty vampire.",
      "popularity": 616.835,
      "poster_path": "/j7ncdqBVufydVzVtxmXu8Ago4ox.jpg",
      "release_date": "2024-10-03",
      "title": "Salem's Lot",
      "video": false,
      "vote_average": 6.3,
      "vote_count": 196
    }
  ],
  "total_pages": 46463,
  "total_results": 929242
};
