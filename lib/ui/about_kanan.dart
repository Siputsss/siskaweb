import 'package:flutter/material.dart';

import '../globals/app_buttons.dart';
import '../globals/app_text_styles.dart';

class AboutKanan extends StatelessWidget {
  const AboutKanan({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(
          'Siska Putri',
          style: AppTextStyle.montserratStyle(fontsize: 25, color: Colors.black),
        ),
        const SizedBox(height: 5),
        SizedBox(
          width: size.width * 0.4,
          child: Text(
            'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.',
            style: AppTextStyle.normal2Style(),
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
