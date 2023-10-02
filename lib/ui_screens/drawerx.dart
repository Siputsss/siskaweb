import 'package:flutter/material.dart';

class DrawerX extends StatelessWidget {
  const DrawerX({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.red,
      child: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: const Text('Home'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('About'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Portfolio'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Clients'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Contact'),
          ),
        ],
      ),
    );
  }
}
