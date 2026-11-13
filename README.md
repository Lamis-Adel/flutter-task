# Flutter Task

A Flutter assignment with three pages: **Home**, **About**, and **Contact**.

## Features

- Home to About and About to Contact navigation buttons.
- Page-name text, Scaffold, and AppBar on each page.
- A bundled offline image on Home.
- Material icons and a custom teal theme (bonus).
- AppBar back arrows and a Back to Home button on Contact.
- Scrollable layouts for smaller windows.

## Run in Chrome

Install the Flutter SDK, then run:

```bash
git clone https://github.com/Lamis-Adel/flutter-task.git
cd flutter-task
flutter pub get
flutter run -d chrome
```

This repository includes the web platform. To add Android support locally:

```bash
flutter create --platforms=android .
```

## Project structure

- `lib/main.dart`: entry point and custom theme.
- `lib/pages/home_page.dart`: Home, image, and About button.
- `lib/pages/about_page.dart`: About and Contact button.
- `lib/pages/contact_page.dart`: Contact and Back to Home button.
- `assets/images/flutter_logo.png`: bundled image.
- `test/navigation_test.dart`: navigation widget test.

## Validation

The student ran the app in Chrome and manually tried it. Automated tests
have not been run as part of this upload. Run locally:

```bash
flutter analyze
flutter test
```

## Attribution

Flutter logo: official flutter/flutter repository,
examples/flutter_view/assets/flutter-mark-square-64.png.
See THIRD_PARTY_NOTICES.txt for the accompanying license.
The email on Contact is demonstration text.
