# Flutter Structure Maker 🚀

A command-line tool to quickly generate organized folder structures for Flutter projects. Save time and maintain consistency across your Flutter applications with pre-defined architectural patterns.

## Features

✨ **Multiple Architecture Patterns**
- Basic structure for simple projects
- MVC (Model-View-Controller) pattern
- GetX architecture pattern

🎯 **Quick Setup**
- Generate folder structure with a single command
- Auto-creates `main.dart` if it doesn't exist
- Supports recursive directory creation

📦 **Lightweight**
- Minimal dependencies
- Fast execution
- Easy to use

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_structure_maker: ^1.0.0
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

### Command-Line Options

| Option | Alias | Description | Default |
|--------|-------|-------------|---------|
| `--pattern` | `-p` | Architecture pattern (basic, mvc, getx) | basic |
| `--help` | `-h` | Show usage information | - |

### Examples

```bash
# Show help
dart run flutter_structure_maker --help

# Create MVC structure
dart run flutter_structure_maker -p mvc

# Create GetX structure
dart run flutter_structure_maker -p getx
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

## Requirements

```yaml
environment:
  sdk: ">=2.12.0 <4.0.0"
  flutter: ">=2.0.0"
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

- 🐛 Found a bug? [Open an issue](https://github.com/yourusername/flutter_structure_maker/issues)
- 💡 Have a feature request? [Start a discussion](https://github.com/yourusername/flutter_structure_maker/discussions)
- ⭐ Like this package? Give it a star on [GitHub](https://github.com/yourusername/flutter_structure_maker)# flutter_structure_make
