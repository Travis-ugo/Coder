import 'package:flutter/material.dart';
import 'desktop/porject_display.dart';
import 'mobile/project_display.dart';
import 'utils/loading.dart';
import 'utils/responsive.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of my application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.black,
      title: 'Travis ugo',
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => Loading(),
        '/home': (BuildContext context) => Response(),
        '/service': (BuildContext context) => Service(),
        '/projects': (BuildContext context) => Projects(),
        '/mobileInfo': (BuildContext context) => MobileProjectDisplay(),
        '/DesktopInfo': (BuildContext context) => ProjectDisplay(),
      },
      //home: Mobile(),
    );
  }
}
