import 'package:flutter/material.dart';

import '../ui_widgets/app_buttons.dart';
import '../ui_widgets/app_text_styles.dart';

// import 'globals/app_text_styles.dart';

class TextHome extends StatelessWidget {
  const TextHome({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hello, It\'s Me',
          style: AppTextStyle.montserratStyle(color: Colors.white),
        ),
        const SizedBox(height: 5),
        Text(
          'Siska Putri',
          style: AppTextStyle.headingTextStyle(),
        ),
        const SizedBox(height: 5),
        Text(
          'And I\'m a Flutter Developer',
          style: AppTextStyle.montserratStyle(color: Colors.white),
        ),
        const SizedBox(height: 5),
        SizedBox(
          width: size.width * 0.3,
          child: SizedBox(
            width: size.width * 0.5,
            child: Text(
              'Lorem ipsum, or lipsum as it is sometimes known, '
              'is dummy text used in laying out print, graphic or web designs.',
              style: AppTextStyle.normalStyle(),
            ),
          ),
        ),
        const SizedBox(height: 25),
        AppButtons.buildMaterialButton(onTap: () {}, buttonName: 'Contact Me'),
      ],
    );
  }
}
