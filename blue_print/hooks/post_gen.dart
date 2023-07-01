import 'dart:io';

import 'package:mason/mason.dart';
import 'package:recase/recase.dart';

void run(HookContext context) async {
  final projectName = ReCase(context.vars['name']).snakeCase;
  final useFvm = context.vars['use_fvm'];
  final flutterVersion = context.vars['flutter_version'];

  if (useFvm) {
    // use flutter version from fvm
    await _runProcess(
      context,
      'fvm use',
      ['fvm', 'use', flutterVersion],
      projectName,
    );

    await _runProcess(context, 'running mason make ui_package',
        ['mason', 'make', 'ui_package', '--name=$projectName'], projectName);

    await _runProcess(
        context, 'flutter clean', ['fvm', 'flutter', 'clean'], projectName);
    await _runProcess(context, 'flutter pub get',
        ['fvm', 'flutter', 'pub', 'get'], projectName);
    await _runProcess(context, 'flutter pub upgrade --major-versions',
        ['fvm', 'flutter', 'pub', 'upgrade' '--major-versions'], projectName);

    await _runProcess(
      context,
      'Installing flutter_gen',
      ['fvm', 'dart', 'pub', 'global', 'activate', 'flutter_gen'],
      projectName,
    );

    final uiPackageDir = Directory('$projectName/packages/${projectName}_ui');
    await _runProcess(
      context,
      'Running flutter pub get in ui package',
      ['fvm', 'flutter', 'pub', 'get'],
      uiPackageDir.path,
    );

    await _runProcess(
      context,
      'Running flutter pub upgrade --major-versions in ui package',
      ['fvm', 'flutter', 'pub', 'upgrade', '--major-versions'],
      uiPackageDir.path,
    );

    await _runProcess(
      context,
      'Running flutter packages pub run build_runner build -d',
      [
        'fvm',
        'flutter',
        'packages',
        'pub',
        'run',
        'build_runner',
        'build',
        '-d'
      ],
      uiPackageDir.path,
    );

    await _runProcess(
      context,
      'Running flutter pub run flutter_gen',
      ['fluttergen', '-c'],
      uiPackageDir.path,
    );

    await _runProcess(context, 'Running dart fix',
        ['fvm', 'dart', 'fix', '--apply'], projectName);
  } else {
    await _runProcess(context, 'running mason make ui_package',
        ['mason', 'make', 'ui_package', '--name=$projectName'], projectName);

    await _runProcess(
        context, 'flutter clean', ['flutter', 'clean'], projectName);
    await _runProcess(
        context, 'flutter pub get', ['flutter', 'pub', 'get'], projectName);
    await _runProcess(context, 'flutter pub upgrade --major-versions',
        ['flutter', 'pub', 'upgrade' '--major-versions'], projectName);

    await _runProcess(
      context,
      'Installing flutter_gen',
      ['dart', 'pub', 'global', 'activate', 'flutter_gen'],
      projectName,
    );

    final uiPackageDir = Directory('$projectName/packages/${projectName}_ui');
    await _runProcess(
      context,
      'Running flutter pub get in ui package',
      ['flutter', 'pub', 'get'],
      uiPackageDir.path,
    );

    await _runProcess(
      context,
      'Running flutter pub upgrade --major-versions in ui package',
      ['flutter', 'pub', 'upgrade', '--major-versions'],
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
