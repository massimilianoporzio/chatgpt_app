import 'package:chatgpt_app/app/app_const/colors.dart';
import 'package:chatgpt_app/app/global/common/common.dart';
import 'package:flutter/material.dart';

class HomeButtonWidget extends StatelessWidget {
  final String textData;
  final IconData iconData;
  final VoidCallback? onTap;

  const HomeButtonWidget({
    super.key,
    required this.textData,
    required this.iconData,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        decoration: BoxDecoration(
            color: darkColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: glowBoxShadow),
        height: 95,
        width: double.infinity,
        child: Row(
          children: [
            Icon(
              iconData,
              size: 40,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              textData,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
