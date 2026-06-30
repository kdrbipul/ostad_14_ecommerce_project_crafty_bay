# Feature Development Guidelines - Crafty Bay

This document outlines the coding practices and design standards for adding new features to the Crafty Bay project. Following these guidelines ensures consistency, maintainability, and scalability across the codebase.

## 1. Feature Architecture
Each feature should be modular and follow a layered architecture within the `lib/features/{feature_name}` directory.

### Recommended Structure:
- **`data/`**: Data sources (Remote API, Local DB), repository implementations, and data models (JSON serialization).
- **`domain/`**: (Optional for simple features) Business logic, repository interfaces, and entities.
- **`presentation/`**:
  - **`screens/`**: High-level widgets representing a full page.
  - **`widgets/`**: Small, reusable components specific to this feature.
  - **`providers/`**: State management logic (using Provider) for the feature.

## 2. UI & Design Guidelines
- **Theming**: Use the central theme defined in `lib/app/app_theme.dart`. Avoid hardcoding styles.
- **Colors**: Always use colors from `lib/app/app_colors.dart`.
- **Spacing**: Use constants or a unified spacing system for padding and margins.
- **Atomic Design**: Break down complex UI into small, single-responsibility widgets.
- **Assets**: 
  - Centralize asset paths in `lib/app/assets_path.dart`.
  - Use `SvgPicture.asset()` for vector graphics and `Image.asset()` for bitmaps.

## 3. Coding Standards
- **Naming**: 
  - Files: `snake_case.dart`
  - Classes: `PascalCase`
  - Variables/Methods: `camelCase`
- **Immutability**: Use `const` constructors for widgets whenever possible.
- **Logic Separation**: Keep the `build` method focused on UI. Move business logic and state transitions to the `Provider`.
- **Code Quality**: Run `flutter format .` and ensure no linting warnings are present before pushing.

## 4. State Management (Provider)
- Use `ChangeNotifier` for state logic.
- Prefer `context.read<T>()` inside button callbacks to avoid unnecessary rebuilds.
- Use `context.watch<T>()` or `Consumer<T>` in the `build` method for UI that needs to update when state changes.
- Keep providers small and focused on a single feature or sub-feature.

## 5. Localization (l10n)
- **Never hardcode strings.**
- Add all strings to `lib/l10n/app_en.arb` and `lib/l10n/app_bn.arb`.
- Access localized strings using the context extension: `context.l10n.your_key_name`.

## 6. Assets Management
- Place new images in `assets/images/`.
- Register them in `pubspec.yaml` (if not already covered by a folder declaration).
- Add the path to `lib/app/assets_path.dart`.

## 7. Folder Structure Example
```text
lib/features/my_feature/
├── data/
│   ├── models/
│   └── repositories/
├── presentation/
│   ├── providers/
│   ├── screens/
│   └── widgets/
└── domain/ (Optional)
```
