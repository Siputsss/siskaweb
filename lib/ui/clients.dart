import 'package:flutter/material.dart';
import 'package:responsive/globals/app_text_styles.dart';

class Clients extends StatelessWidget {
  const Clients({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(
        top: size.height * 0.1,
        bottom: size.height * 0.1,
        left: size.width * 0.1,
        right: size.width * 0.1,
      ),
      color: Colors.white,
      alignment: Alignment.center,
      child: Column(
        children: [
          Text(
            'Clients',
            style: AppTextStyle.montserratStyle(fontsize: 18, color: Colors.black),
          ),
          const SizedBox(height: 5),
          Text(
            'Lorem Ipsum',
            style: AppTextStyle.montserratStyle(fontsize: 25, color: Colors.black),
          ),
          const SizedBox(height: 5),
          Text(
            textAlign: TextAlign.center,
            'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.',
            style: AppTextStyle.normal2Style(),
          ),
          const SizedBox(height: 15),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.tiktok, color: Colors.black),
              SizedBox(width: 15),
              Icon(Icons.telegram, color: Colors.black),
              SizedBox(width: 15),
              Icon(Icons.share, color: Colors.black),
            ],
          )
        ],
      ),
    );
  }
}
