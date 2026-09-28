# Movie Watchlist App

A multi-screen Flutter app built for **CW-02 (CSC 4360 — Mobile App Development)**.
It shows a list of movies, and tapping a movie opens a details screen with its
poster, cast and synopsis.

## Features

- **HomeScreen** — scrollable list of movies built with `ListView.builder`,
  showing each movie's poster, title, year, genre and top cast.
- **DetailsScreen** — shows the selected movie's poster, title, year, genre,
  full cast and synopsis.
- **Navigation + data passing** — `Navigator.push` with `MaterialPageRoute`
  passes the whole `Movie` object to the DetailsScreen.
- **Image assets** — poster images stored in `assets/images/` and loaded with
  `Image.asset()`.
- **Hero animation** — the poster animates from the list into the details screen.

## Movies

Spider-Man: Brand New Day · The Odyssey · Resident Evil · Shrek 2 · Big Hero 6

## Project Structure

```
lib/
├── main.dart                  # App entry point and theme
├── models/
│   └── movie.dart             # Movie model class
├── data/
│   └── movies_data.dart       # Static list of movies
└── screens/
    ├── home_screen.dart       # Movie list
    └── details_screen.dart    # Movie details
assets/
└── images/                    # Movie posters
```

## Running the App

```bash
flutter pub get
flutter run
```

## Building the APK

```bash
flutter build apk --release
```

The APK is created at `build/app/outputs/flutter-apk/app-release.apk`.
