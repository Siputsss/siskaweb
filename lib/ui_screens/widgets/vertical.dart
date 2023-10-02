import 'package:flutter/material.dart';

class Vertical extends StatelessWidget {
  const Vertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // KotakKiri(),
          // KotakKanan(),
        ],
      ),
    );
  }
}
