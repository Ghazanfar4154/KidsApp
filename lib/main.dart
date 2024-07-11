import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'HomePage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(home: Home_Page()));
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
}
