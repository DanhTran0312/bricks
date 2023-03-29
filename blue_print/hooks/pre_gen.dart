import 'dart:io';
import 'package:recase/recase.dart';

import 'package:mason/mason.dart';

void run(HookContext context) async {
  final projectName = ReCase(context.vars['name']).snakeCase;
  final projectOrg = context.vars['org'];

  await _runProcess(
    context,
    'Creating Flutter Project $projectName...',
    ['flutter', 'create', '--org', projectOrg, projectName],
    null,
  );

  await _runProcess(
    context,
    'Removing conflicting files...',
    [
      'rm',
      '-rf',
      'lib',
      'test',
      'README.md',
      'pubspec.yaml',
      'pubspec.lock',
      'analysis_options.yaml',
      '.gitignore',
      '.vscode',
      '.github',
    ],
    projectName,
  );
}

Future<void> _runProcess(
  HookContext context,
  String progressMessage,
  List<String> command,
  String? workingDirectory,
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
