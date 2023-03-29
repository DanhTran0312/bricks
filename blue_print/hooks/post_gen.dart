import 'dart:io';

import 'package:mason/mason.dart';
import 'package:recase/recase.dart';

void run(HookContext context) async {
  final projectName = ReCase(context.vars['name']).snakeCase;

  await _runProcess(
      context, 'flutter pub clean', ['flutter', 'pub', 'clean'], projectName);
  await _runProcess(
      context, 'flutter pub get', ['flutter', 'pub', 'get'], projectName);

  await _runProcess(
    context,
    'Installing flutter_gen',
    ['dart', 'pub', 'global', 'activate', 'flutter_gen'],
    projectName,
  );

  final uiPackageDir = Directory('$projectName/packages/${projectName}_app_ui');
  await _runProcess(
    context,
    'Running flutter pub get in ui package',
    ['flutter', 'pub', 'get'],
    uiPackageDir.path,
  );

  await _runProcess(
    context,
    'Running flutter packages pub run build_runner build -d',
    ['flutter', 'packages', 'pub', 'run', 'build_runner', 'build', '-d'],
    uiPackageDir.path,
  );

  await _runProcess(
    context,
    'Running flutter pub run flutter_gen',
    ['fluttergen', '-c'],
    uiPackageDir.path,
  );

  await _runProcess(
      context, 'Running dart fix', ['dart', 'fix', '--apply'], projectName);
}

Future<void> _runProcess(
  HookContext context,
  String progressMessage,
  List<String> command,
  String workingDirectory,
) async {
  final runningProcess = context.logger.progress(progressMessage);
  await Process.run(
    command[0],
    command.sublist(1),
    workingDirectory: workingDirectory,
    runInShell: true,
  );
  runningProcess.complete();
}
