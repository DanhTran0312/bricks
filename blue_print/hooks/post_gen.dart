import 'dart:io';

import 'package:mason/mason.dart';
import 'package:recase/recase.dart';

void run(HookContext context) async {
  // TODO: add post-generation logic
  ReCase rcName = ReCase(context.vars['name']);
  String projectName = rcName.snakeCase;

  final runningPubClean =
      context.logger.progress('Running flutter pub clean...');
  await Process.run(
    'flutter',
    ['pub', 'clean'],
    workingDirectory: projectName,
    runInShell: true,
  );
  runningPubClean.complete();

  final runningPubGet = context.logger.progress('Running flutter pub get...');

  await Process.run(
    'flutter',
    ['pub', 'get'],
    workingDirectory: projectName,
    runInShell: true,
  );

  runningPubGet.complete();

  final installFlutterGen =
      context.logger.progress('Installing flutter_gen...');

  await Process.run(
    'dart',
    ['pub', 'global', 'activate', 'flutter_gen'],
    workingDirectory: projectName,
    runInShell: true,
  );

  installFlutterGen.complete();

  final uiPackageDir = Directory('$projectName/packages/${projectName}_app_ui');

  final runningFlutterPubGet =
      context.logger.progress('Running flutter pub get in ui package...');

  await Process.run(
    'flutter',
    ['pub', 'get'],
    workingDirectory: uiPackageDir.path,
    runInShell: true,
  );

  runningFlutterPubGet.complete();

  final runningBuildRunner = context.logger
      .progress('Running flutter packages pub run build_runner build -d...');

  await Process.run(
    'flutter',
    ['packages', 'pub', 'run', 'build_runner', 'build', '-d'],
    workingDirectory: uiPackageDir.path,
    runInShell: true,
  );

  runningBuildRunner.complete();

  final runningFlutterGen =
      context.logger.progress('Running flutter pub run flutter_gen...');

  await Process.run(
    'fluttergen',
    ['-c'],
    workingDirectory: uiPackageDir.path,
    runInShell: true,
  );

  runningFlutterGen.complete();

  final runningDartFix = context.logger.progress('Running dart fix...');
  await Process.run(
    'dart',
    ['fix', '--apply'],
    workingDirectory: projectName,
    runInShell: true,
  );

  runningDartFix.complete();
}
