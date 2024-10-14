import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_clean_architecture/domain/entities/movie_entity.dart';

Card MovieListCard(MovieEntity movieEntity, BuildContext context) {
  return Card(
      child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: CachedNetworkImage(
              imageUrl: movieEntity.posterPath ?? "",
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  movieEntity.title,
                  maxLines: 2,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Flexible(
                child: Text(
                  movieEntity.body,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: 11,
                      color: Theme.of(context)
                          .colorScheme
                          .onSurfaceVariant
                          .withOpacity(0.9)),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Flexible(
                child: Row(
                  children: [
                    Text(
                      movieEntity.rating.toString(),
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.amber,
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ),
  ));
}
