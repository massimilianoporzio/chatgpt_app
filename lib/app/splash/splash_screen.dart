import 'package:chatgpt_app/app/app_const/assets_const.dart';
import 'package:flutter/material.dart';

//stateful solo per gestire l'init
class SplashScreen extends StatefulWidget {
  final Widget? child;
  const SplashScreen({super.key, this.child});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //resta sullo splash screen per 4 secondi
  //poi naviga sul child che ho eventualmente passato
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 4),
      () {
        //metti  sullo stack e rimuovi tutto
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => widget.child!,
            ),
            (route) =>
                false); //false fa rimuovere tutto: sullo stack resta solo il child
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(children: [
        Positioned(
          top: 0,
          bottom: 0,
          left: 0,
          right: 0,
          child: Image.asset(
            AssetsConst.openAiLogo,
            fit: BoxFit.contain,
          ),
        )
      ]),
    );
  }
}
