// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:responsive/globals/app_colors.dart';
// import 'package:responsive/globals/app_text_styles.dart';
// import 'dart:html' as html;

// class Contact2 extends StatelessWidget {
//   const Contact2({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final Size size = MediaQuery.of(context).size;
//     return Container(
//         padding: EdgeInsets.only(
//           top: size.height * 0.1,
//           bottom: size.height * 0.1,
//           left: size.width * 0.1,
//           right: size.width * 0.1,
//         ),
//         color: AppColors.themeColor,
//         alignment: Alignment.center,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             IconButton(
//               onPressed: () {
//                 html.window.open('https://www.instagram.com', 'name');
//               },
//               icon: Icon(FontAwesomeIcons.instagram, color: AppColors.bluegrey),
//             ),
//             IconButton(
//               onPressed: () {
//                 html.window.open('https://www.instagram.com', 'name');
//               },
//               icon: Icon(FontAwesomeIcons.facebook, color: AppColors.bluegrey),
//             ),
//             IconButton(
//               onPressed: () {
//                 html.window.open('https://www.instagram.com', 'name');
//               },
//               icon: Icon(FontAwesomeIcons.github, color: AppColors.bluegrey),
//             ),
//             IconButton(
//               onPressed: () {
//                 html.window.open('https://www.instagram.com', 'name');
//               },
//               icon: Icon(FontAwesomeIcons.twitter, color: AppColors.bluegrey),
//             ),
//           ],
//         ));
//   }
// }
