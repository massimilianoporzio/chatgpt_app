import 'package:chatgpt_app/app/app_const/assets_const.dart';
import 'package:chatgpt_app/app/app_const/page_const.dart';
import 'package:chatgpt_app/app/app_const/string_const.dart';
import 'package:chatgpt_app/app/home/widgets/home_button_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //colonna con logo
            Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                Image.asset(AssetsConst.appLogo)
              ],
            ),
            //colonna con i bottoni
            Column(
              children: [
                //Image Generation
                HomeButtonWidget(
                  textData: "Image Generation - OpenAI",
                  iconData: Icons.image_outlined,
                  onTap: () {
                    Navigator.pushNamed(
                        context, PageConst.imageGenerationRoute);
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                HomeButtonWidget(
                  textData: "Text Completion - OpenAI",
                  iconData: Icons.text_fields_outlined,
                  onTap: () {
                    Navigator.pushNamed(context, PageConst.textCompletionRoute);
                  },
                ),
              ],
            ),
            const Text(
              StringConst.chatGptFooter,
              style: TextStyle(),
            )
          ],
        ),
      ),
    );
  }
}
