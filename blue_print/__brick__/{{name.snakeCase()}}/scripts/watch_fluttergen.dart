import 'dart:io';

void main() async {
  // Change the working directory to the desired path.
  Directory.current = Directory('packages/{{name.snakeCase()}}_app_ui/');

  await _runCommand('flutter pub get');
  await _runCommand('flutter packages pub run build_runner watch -d');
}

Future<void> _runCommand(String command) async {
  final splitCommand = command.split(' ');
  final process = await Process.start(
    splitCommand[0],
    splitCommand.sublist(1),
    runInShell: true,
  );

  // Attach process stdout and stderr to the console.
  process.stdout.transform(utf8.decoder).listen((data) => print(data));
  process.stderr.transform(utf8.decoder).listen((data) => print(data));

  // Wait for the process to finish and get the exit code.
  final exitCode = await process.exitCode;
  if (exitCode != 0) {
    print('Command "$command" exited with code $exitCode.');
  }
}
