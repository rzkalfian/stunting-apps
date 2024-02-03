import 'package:flutter/material.dart';
import 'package:staunting_apps/screen/splash/splash.dart';
import 'package:staunting_apps/screen/tes/tes.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  final routes = <String, WidgetBuilder>{
    "/intro": (BuildContext context) => TesScreen(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Denting Apps",
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      // useInheritedMediaQuery: true,
      theme: ThemeData(
        primaryColor: Colors.black,
        fontFamily: "Inter",
      ),
      routes: routes,
      home: SplashScreen(),
      navigatorKey: navigatorKey,
    );
  }
}
