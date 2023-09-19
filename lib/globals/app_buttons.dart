import 'package:flutter/material.dart';

import 'app_text_styles.dart';

class AppButtons {
  static MaterialButton buildMaterialButton({
    required String buttonName,
    required VoidCallback onTap,
  }) {
    return MaterialButton(
      onPressed: onTap,
      color: Colors.black26,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide.none,
      ),
      // elevation: 6,
      focusElevation: 12,
      hoverColor: Colors.blueGrey,
      height: 40,
      minWidth: 130,
      child: Text(
        buttonName,
        style: AppTextStyle.buttonStyle(),
      ),
    );
  }
}
