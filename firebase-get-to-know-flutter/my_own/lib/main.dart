import 'package:flutter/material.dart';
import 'package:gtk_flutter/app.dart';
import 'package:gtk_flutter/application_state.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (ctx) => ApplicationState(),
      builder: (ctx, _) => const App(),
    ),
  );
}
