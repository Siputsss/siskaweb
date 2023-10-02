import 'package:flutter/material.dart';
import 'package:responsive/ui_screens/about_kiri.dart';
import 'package:responsive/ui_screens/about_kanan.dart';

class AboutDesk extends StatelessWidget {
  const AboutDesk({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: AboutKiri(),
        ),
        SizedBox(width: 100),
        AboutKanan()
      ],
    );
  }
}
