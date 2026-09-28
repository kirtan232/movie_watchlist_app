import 'package:flutter/material.dart';

import '../data/movies_data.dart';
import '../models/movie.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Movie Watchlist')),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: sampleMovies.length,
        itemBuilder: (context, index) {
          return MovieCard(movie: sampleMovies[index]);
        },
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        // Navigation to DetailsScreen is added in a later step.
        onTap: () {},
        child: Row(
          children: [
            Image.asset(
              movie.posterPath,
              width: 90,
              height: 135,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movie.title,
                      style: textTheme.titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    Text('${movie.year}  •  ${movie.genre}',
                        style: textTheme.bodySmall),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 8),
              child: Icon(Icons.chevron_right),
            ),
          ],
        ),
      ),
    );
  }
}
