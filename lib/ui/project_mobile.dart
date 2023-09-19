import 'package:flutter/material.dart';

import '../globals/app_assets.dart';
import '../globals/app_colors.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(16),
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: AppColors.themeColor),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              AppAssets.project,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(16),
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: AppColors.themeColor),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              AppAssets.project,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(16),
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: AppColors.themeColor),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              AppAssets.project,
            ),
          ),
        )
      ],
    );
  }
}
