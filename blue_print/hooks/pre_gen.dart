import 'dart:io';
import 'package:recase/recase.dart';

import 'package:mason/mason.dart';

void run(HookContext context) async {
  ReCase rcName = ReCase(context.vars['name']);
  String projectName = rcName.snakeCase;
  final projectOrg = context.vars['org'];
  final projectDescription = context.vars['description'];
  // Use the `Logger` instance.
  final flutterCreateLogger =
      context.logger.progress('Creating Flutter Project $projectName...');
  await Process.run('flutter', ['create', '--org', projectOrg, projectName]);
  flutterCreateLogger.complete();

  final removingConflictingFilesLogger =
      context.logger.progress('Removing conflicting files...');
  await Process.run(
      'rm',
      [
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
      workingDirectory: projectName,
      runInShell: true);
  removingConflictingFilesLogger.complete();
}
