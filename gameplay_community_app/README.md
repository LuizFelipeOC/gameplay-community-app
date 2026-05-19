# Gameplay Community App

Flutter project for the Gameplay community.

## Description

This repository contains the `gameplay_community_app` mobile application built with Flutter. The project stores SVG assets in `assets/svgs` and centralizes asset path references in `lib/app/core/shared/app_assets/app_assets.dart`.

## Key Features

- Modular Flutter structure targeting Android and iOS
- SVG assets organized and referenced in code

## Requirements

- Flutter SDK (latest stable recommended)
- Android Studio / Xcode for emulators and native builds

## Installation

1. Install Flutter following the official docs: https://flutter.dev
2. In the project directory, get dependencies:

```bash
flutter pub get
```

## Running the app

- On Android device or emulator:

```bash
flutter run -d android
```

- On iOS (macOS with Xcode configured):

```bash
flutter run -d ios
```

## Relevant structure

- `lib/` — app source code
- `assets/svgs/` — vector icons and images used by the app
- `lib/app/core/shared/app_assets/app_assets.dart` — constants pointing to SVGs

## Development

- Formatting and analysis:

```bash
flutter format .
flutter analyze
```

## Contributing

- Open an issue to discuss major changes.
- Send pull requests with clear descriptions and tests when applicable.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

---

If you want, I can also add a `LICENSE` file, configure CI workflows, or provide an English/Spanish bilingual README.
