import 'package:flutter/material.dart';

void main() {
  runApp(const MovieWatchlistApp());
}

class MovieWatchlistApp extends StatelessWidget {
  const MovieWatchlistApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Watchlist',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      // Temporary placeholder until HomeScreen is built in a later step.
      home: Scaffold(
        appBar: AppBar(title: const Text('Movie Watchlist')),
        body: const Center(child: Text('Movies coming soon...')),
      ),
    );
  }
}
