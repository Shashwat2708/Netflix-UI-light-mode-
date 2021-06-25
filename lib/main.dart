import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mepo/homepage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(Mepo());
}

class Mepo extends StatelessWidget {
  const Mepo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MEPO",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.black,
      ),
      home: home_page(),
    );
  }
}
