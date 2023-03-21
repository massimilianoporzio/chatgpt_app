import 'package:chatgpt_app/app/app_const/page_const.dart';
import 'package:chatgpt_app/app/splash/splash_screen.dart';
import 'package:chatgpt_app/features/image_generation/presentation/pages/image_generation_page.dart';
import 'package:chatgpt_app/features/text_completion/presentation/pages/text_completion_page.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("error"),
      ),
      body: const Center(
        child: Text("error"),
      ),
    );
  }
}

MaterialPageRoute materialRouteBuilder({required Widget widget}) {
  return MaterialPageRoute(
    builder: (context) => widget,
  );
}

class OnGenerateRoute {
  static Route<dynamic> route(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return materialRouteBuilder(widget: const SplashScreen());
      case PageConst.imageGenerationRoute:
        return materialRouteBuilder(widget: const ImageGenerationPage());
      case PageConst.textCompletionRoute:
        return materialRouteBuilder(widget: const TextCompletionPage());
      default:
        return materialRouteBuilder(widget: const ErrorPage());
    }
  }
}
