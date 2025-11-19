import 'dart:io';
import 'package:args/args.dart';

void main(List<String> arguments) {
  final parser = ArgParser()
    ..addFlag('help', abbr: 'h', negatable: false, help: 'Show usage information')
    ..addOption('pattern',
        abbr: 'p',
        help: 'Choose folder structure pattern (e.g., mvc, clean, getx, bloc, cubit, provider)',
        defaultsTo: 'basic');

  final argResults = parser.parse(arguments);

  if (argResults['help'] == true) {
    print('''
flutter_structure_maker 🚀
Generate folder structure for Flutter projects

Usage:
  flutter_structure_maker [options]

Options:
  -p, --pattern <type>   Choose pattern (basic, mvc, getx, bloc, cubit, provider)
  -h, --help             Show this help message
''');
    return;
  }

  final pattern = argResults['pattern'];
  createStructure(pattern);
}

void createStructure(String pattern) {
  print('🚀 Creating Flutter folder structure using pattern: $pattern\n');

  final baseFolders = <String>[
    'lib/controllers',
    'lib/views',
    'lib/models',
    'lib/services',
    'lib/utils',
  ];

  final mvcFolders = <String>[
    'lib/controllers',
    'lib/views',
    'lib/models',
  ];

  final getxFolders = <String>[
    'lib/app/modules',
    'lib/app/routes',
    'lib/app/controllers',
    'lib/app/services',
    'lib/app/widgets',
  ];

  final blocFolders = <String>[
    'lib/blocs',
    'lib/models',
    'lib/repositories',
    'lib/screens',
    'lib/widgets',
    'lib/services',
    'lib/utils',
  ];

  final cubitFolders = <String>[
    'lib/cubits',
    'lib/models',
    'lib/repositories',
    'lib/screens',
    'lib/widgets',
    'lib/services',
    'lib/utils',
  ];

  final providerFolders = <String>[
    'lib/providers',
    'lib/models',
    'lib/screens',
    'lib/widgets',
    'lib/services',
    'lib/utils',
  ];

  List<String> selectedFolders;

  switch (pattern) {
    case 'mvc':
      selectedFolders = mvcFolders;
      break;
    case 'getx':
      selectedFolders = getxFolders;
      break;
    case 'bloc':
      selectedFolders = blocFolders;
      break;
    case 'cubit':
      selectedFolders = cubitFolders;
      break;
    case 'provider':
      selectedFolders = providerFolders;
      break;
    default:
      selectedFolders = baseFolders;
  }

  for (var folder in selectedFolders) {
    Directory(folder).createSync(recursive: true);
    print('✅ Created $folder');
  }

  final mainFile = File('lib/main.dart');
  if (!mainFile.existsSync()) {
    mainFile.writeAsStringSync(_getMainFileContent(pattern));
    print('📝 Created lib/main.dart');
  }

  print('\n🎉 Folder structure generated successfully!');
}

String _getMainFileContent(String pattern) {
  switch (pattern) {
    case 'getx':
      return '''
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter GetX App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GetX App')),
      body: const Center(child: Text('Hello Flutter with GetX 👋')),
    );
  }
}
''';

    case 'bloc':
      return '''
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter BLoC App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BLoC App')),
      body: const Center(child: Text('Hello Flutter with BLoC 👋')),
    );
  }
}
''';

    case 'cubit':
      return '''
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Cubit App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cubit App')),
      body: const Center(child: Text('Hello Flutter with Cubit 👋')),
    );
  }
}
''';

    case 'provider':
      return '''
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Add your providers here
        // ChangeNotifierProvider(create: (_) => YourProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Provider App',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Provider App')),
      body: const Center(child: Text('Hello Flutter with Provider 👋')),
    );
  }
}
''';

    case 'mvc':
      return '''
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter MVC App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MVC App')),
      body: const Center(child: Text('Hello Flutter with MVC 👋')),
    );
  }
}
''';

    default:
      return '''
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: Text('Hello Flutter 👋')),
      ),
    );
  }
}
''';
  }
}