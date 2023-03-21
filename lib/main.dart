import 'package:flutter/material.dart';
import 'package:loggy/loggy.dart';

import 'app/my_app.dart';

void main() {
  Loggy.initLoggy(
    logPrinter: const PrettyPrinter(),
  );
  runApp(const MyApp());
}
