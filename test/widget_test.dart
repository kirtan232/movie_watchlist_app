import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:movie_watchlist_app/main.dart';

void main() {
  testWidgets('App starts and shows the app bar title', (tester) async {
    await tester.pumpWidget(const MovieWatchlistApp());

    expect(find.text('Movie Watchlist'), findsOneWidget);
  });

  testWidgets('Tapping a movie opens its DetailsScreen', (tester) async {
    await tester.pumpWidget(const MovieWatchlistApp());

    await tester.tap(find.text('Shrek 2'));
    await tester.pumpAndSettle();

    expect(find.text('Synopsis'), findsOneWidget);
    expect(find.text('Mike Myers'), findsOneWidget);

    await tester.tap(find.byType(BackButton));
    await tester.pumpAndSettle();

    expect(find.text('Movie Watchlist'), findsOneWidget);
  });
}
