import 'package:chatgpt_app/app/routes/on_genereate_route.dart';
import 'package:chatgpt_app/app/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:loggy/loggy.dart';

import 'home/home_page.dart';

class MyApp extends StatelessWidget with UiLoggy {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    loggy.debug("Material App creation");
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      onGenerateRoute: OnGenerateRoute.route,
      initialRoute: '/',
      routes: {
        "/": (context) => const SplashScreen(
              child: HomePage(),
            )
      },
    );
  }
}
