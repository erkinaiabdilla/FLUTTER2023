import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sabak12_piano_app_2/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}
