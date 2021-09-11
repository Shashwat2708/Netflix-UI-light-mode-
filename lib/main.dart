import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mepo/homepage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(Netflix());
}

class Netflix extends StatelessWidget {
  const Netflix({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Netflix UI",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.black,
      ),
      home: home_page(),
    );
  }
}
