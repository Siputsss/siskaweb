import 'package:flutter/material.dart';

import 'globals/app_assets.dart';

class Foto extends StatelessWidget {
  const Foto({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppAssets.profile,
      width: 520,
      height: 290,
    );
  }
}
