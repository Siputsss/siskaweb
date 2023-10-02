import 'package:flutter/material.dart';

import '../ui_widgets/app_buttons.dart';
import '../ui_widgets/app_text_styles.dart';

class AboutKiri extends StatelessWidget {
  const AboutKiri({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About Me',
          style: AppTextStyle.montserratStyle(fontsize: 18, color: Colors.black),
        ),
        const SizedBox(height: 5),
        Text(
          'Who am I ?',
          style: AppTextStyle.montserratStyle(fontsize: 25, color: Colors.black),
        ),
        const SizedBox(height: 5),
        SizedBox(
          width: size.width * 0.4,
          child: SizedBox(
            width: size.width * 0.5,
            child: Text(
              'Lorem ipsum, or lipsum as it is sometimes known, '
              'is dummy text used in laying out print, graphic or web designs.',
              style: AppTextStyle.normal2Style(),
            ),
          ),
        ),
        const SizedBox(height: 18),
        SizedBox(
          child: AppButtons.buildMaterialButton(
            onTap: () {},
            buttonName: 'Read More',
          ),
        ),
      ],
    );
  }
}
