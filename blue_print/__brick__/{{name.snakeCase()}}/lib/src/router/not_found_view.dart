import 'package:{{name.snakeCase()}}/src/l10n/l10n.dart';
import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.notFound),
      ),
      body: Center(
        child: Text(l10n.notFound),
      ),
    );
  }
}
