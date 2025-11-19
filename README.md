# Flutter Structure Maker 🚀

A command-line tool to quickly generate organized folder structures for Flutter projects. Save time and maintain consistency across your Flutter applications with pre-defined architectural patterns.

## Features

✨ **Multiple Architecture Patterns**
- Basic structure for simple projects
- MVC (Model-View-Controller) pattern
- GetX architecture pattern
- BLoC (Business Logic Component) pattern
- Cubit pattern
- Provider pattern

🎯 **Quick Setup**
- Generate folder structure with a single command
- Auto-creates `main.dart` with pattern-specific boilerplate if it doesn't exist
- Supports recursive directory creation

📦 **Lightweight**
- Minimal dependencies (only `args` package)
- Fast execution
- Easy to use

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  args: ^2.0.0
```

Or install globally:

```bash
dart pub global activate flutter_structure_maker
```

## Usage

### Basic Usage

Navigate to your Flutter project root and run:

```bash
dart run flutter_structure_maker
```

This creates a basic folder structure:
```
lib/
├── controllers/
├── views/
├── models/
├── services/
└── utils/
```

### With Patterns

**MVC Pattern:**
```bash
dart run flutter_structure_maker --pattern mvc
# or
dart run flutter_structure_maker -p mvc
```
Creates:
```
lib/
├── controllers/
├── views/
└── models/
```

**GetX Pattern:**
```bash
dart run flutter_structure_maker --pattern getx
```
Creates:
```
lib/
└── app/
    ├── modules/
    ├── routes/
    ├── controllers/
    ├── services/
    └── widgets/
```

**BLoC Pattern:**
```bash
dart run flutter_structure_maker --pattern bloc
```
Creates:
```
lib/
├── blocs/
├── models/
├── repositories/
├── screens/
├── widgets/
├── services/
└── utils/
```

**Cubit Pattern:**
```bash
dart run flutter_structure_maker --pattern cubit
```
Creates:
```
lib/
├── cubits/
├── models/
├── repositories/
├── screens/
├── widgets/
├── services/
└── utils/
```

**Provider Pattern:**
```bash
dart run flutter_structure_maker --pattern provider
```
Creates:
```
lib/
├── providers/
├── models/
├── screens/
├── widgets/
├── services/
└── utils/
```

### Command-Line Options

| Option | Alias | Description | Default |
|--------|-------|-------------|---------|
| `--pattern` | `-p` | Architecture pattern (basic, mvc, getx, bloc, cubit, provider) | basic |
| `--help` | `-h` | Show usage information | - |

### Examples

```bash
# Show help
dart run flutter_structure_maker --help
dart run flutter_structure_maker -h

# Create MVC structure
dart run flutter_structure_maker -p mvc

# Create GetX structure
dart run flutter_structure_maker -p getx

# Create BLoC structure
dart run flutter_structure_maker -p bloc

# Create Cubit structure
dart run flutter_structure_maker -p cubit

# Create Provider structure
dart run flutter_structure_maker -p provider
```

## Supported Patterns

### Basic
General-purpose structure suitable for most Flutter projects:
- `controllers/` - Business logic and state management
- `views/` - UI screens and pages
- `models/` - Data models and entities
- `services/` - API calls, database operations
- `utils/` - Helper functions and constants

### MVC (Model-View-Controller)
Classic architectural pattern for Flutter:
- `controllers/` - Application logic
- `views/` - UI components
- `models/` - Data structures

### GetX
Optimized for GetX state management:
- `app/modules/` - Feature modules
- `app/routes/` - Navigation routing
- `app/controllers/` - GetX controllers
- `app/services/` - API and data services
- `app/widgets/` - Reusable widgets

### BLoC (Business Logic Component)
Using flutter_bloc package:
- `blocs/` - BLoC classes for state management
- `models/` - Data models
- `repositories/` - Data layer
- `screens/` - UI screens
- `widgets/` - Reusable widgets
- `services/` - External services
- `utils/` - Utilities and helpers

### Cubit
Simplified version of BLoC:
- `cubits/` - Cubit classes for state management
- `models/` - Data models
- `repositories/` - Data layer
- `screens/` - UI screens
- `widgets/` - Reusable widgets
- `services/` - External services
- `utils/` - Utilities and helpers

### Provider
Using provider package for state management:
- `providers/` - Provider classes
- `models/` - Data models
- `screens/` - UI screens
- `widgets/` - Reusable widgets
- `services/` - External services
- `utils/` - Utilities and helpers

## What Gets Generated

Each pattern generates:
1. **Folder structure** - Organized directories based on the chosen pattern
2. **main.dart file** - Pattern-specific boilerplate code (only if the file doesn't exist)

The generated `main.dart` includes:
- Proper imports for the selected pattern (GetX, BLoC, Provider, etc.)
- Basic app structure
- Example home screen
- Pattern-specific setup (MaterialApp, GetMaterialApp, MultiProvider, etc.)

## Requirements

```yaml
environment:
  sdk: ">=2.12.0 <4.0.0"

dependencies:
  args: ^2.0.0
```

For pattern-specific dependencies, add to your `pubspec.yaml`:

**GetX:**
```yaml
dependencies:
  get: ^4.6.0
```

**BLoC/Cubit:**
```yaml
dependencies:
  flutter_bloc: ^8.0.0
```

**Provider:**
```yaml
dependencies:
  provider: ^6.0.0
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Author

Created with ❤️ for the Flutter community

## Changelog

See [CHANGELOG.md](CHANGELOG.md) for version history.

## Support

- 🐛 Found a bug? [Open an issue](https://github.com/rishi9953/flutter_structure_maker/issues)
- 💡 Have a feature request? [Start a discussion](https://github.com/rishi9953/flutter_structure_maker/discussions)
- ⭐ Like this package? Give it a star on [GitHub](https://github.com/rishi9953/flutter_structure_maker)

## Tips

- Run this tool at the root of your Flutter project (where `pubspec.yaml` is located)
- The tool will not overwrite an existing `main.dart` file
- All folders are created recursively, so parent directories are created automatically
- Choose the pattern that matches your project's state management approach