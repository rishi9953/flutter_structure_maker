import 'dart:io';
import 'package:args/args.dart';

void main(List<String> arguments) {
  final parser = ArgParser()
    ..addFlag('help', abbr: 'h', negatable: false, help: 'Show usage information')
    ..addOption('pattern',
        abbr: 'p',
        help: 'Choose folder structure pattern (e.g., mvc, clean, getx)',
        defaultsTo: 'basic');

  final argResults = parser.parse(arguments);

  if (argResults['help'] == true) {
    print('''
flutter_structure_maker 🚀
Generate folder structure for Flutter projects

Usage:
  flutter_structure_maker [options]

Options:
  -p, --pattern <type>   Choose pattern (basic, mvc, getx)
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

  List<String> selectedFolders;

  switch (pattern) {
    case 'mvc':
      selectedFolders = mvcFolders;
      break;
    case 'getx':
      selectedFolders = getxFolders;
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
    mainFile.writeAsStringSync('''
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
''');
    print('📝 Created lib/main.dart');
  }

  print('\n🎉 Folder structure generated successfully!');
}
