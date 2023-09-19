import 'package:flutter/material.dart';
import 'package:responsive/ui/about_kiri.dart';
import 'package:responsive/ui/about_kanan.dart';

class AboutMo extends StatelessWidget {
  const AboutMo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AboutKiri(),
        SizedBox(
          height: 30,
        ),
        AboutKanan()
      ],
    );
  }
}
