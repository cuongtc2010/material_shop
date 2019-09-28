import 'package:flutter/material.dart';
import 'ui/main_page/main_page.dart';

ThemeData appTheme = ThemeData(
    fontFamily: "FiraSans",
    textTheme: TextTheme(
      body1: TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w400
      )
    ),
    primaryColor: Color.fromRGBO(94, 127, 253, 1.0),
    accentColor: Color.fromRGBO(94, 127, 253, 1.0),
    appBarTheme: AppBarTheme(
      color: Colors.white,
      textTheme: TextTheme(
        title: TextStyle(
          color: Colors.black,
          fontSize: 20.0
        )
      ),
      iconTheme: IconThemeData(
          color: Colors.black,
      ),
      brightness: Brightness.light,
      elevation: 0
    ),
    scaffoldBackgroundColor: Colors.white);

bool isAuthenticated = true;

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyApp>{
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      title: "Flutter Shop",
      routes: {
        '/home-page': (BuildContext context) => MainPageScreen()
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) => MainPageScreen());
      },
    );
  }
}
