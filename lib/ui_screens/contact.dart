import 'package:flutter/material.dart';
import 'package:responsive/ui_widgets/app_assets.dart';
import 'package:responsive/ui_widgets/app_colors.dart';
import 'package:responsive/ui_widgets/app_contact.dart';
import 'dart:html' as html;

import '../ui_widgets/app_text_styles.dart';

class Contact extends StatefulWidget {
  const Contact({
    super.key,
  });

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final onMenuHover = Matrix4.identity()..scale(1.0);

  final socialButtons = <String>[
    AppAssets.facebook,
    AppAssets.github,
    AppAssets.gmail,
    AppAssets.insta,
  ];
  final socialLinks = <String>[
    AppContact.facebook,
    AppContact.github,
    AppContact.gmail,
    AppContact.instagram,
  ];
  var menuIndex = 0;
  // ignore: prefer_typing_uninitialized_variables
  var socialBI;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(
        top: size.height * 0.05,
        left: size.width * 0.1,
        right: size.width * 0.1,
      ),
      child: Column(
        children: [
          Text(
            'Contact Me',
            style: AppTextStyle.montserratStyle(fontsize: 18, color: Colors.white),
          ),
          const SizedBox(height: 10),
          Center(
            child: SizedBox(
              height: 48,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      // html.window.open('https://www.instagram.com', 'name');
                      html.window.open(socialLinks[index], 'name');
                    },
                    onHover: (value) {
                      setState(() {
                        if (value) {
                          socialBI = index;
                        } else {
                          socialBI = null;
                        }
                      });
                    },
                    borderRadius: BorderRadius.circular(550.0),
                    hoverColor: AppColors.bluegrey,
                    splashColor: AppColors.bluegrey,
                    child: buildSocialButton(
                      asset: socialButtons[index],
                      hover: socialBI == index ? true : false,
                      url: socialLinks[index],
                    ),
                  );
                },
                separatorBuilder: (context, child) => const SizedBox(width: 8),
                itemCount: socialButtons.length,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            'Copyright © siska-put 2023',
            style: AppTextStyle.normalStyle(),
          ),
          const SizedBox(height: 45),
        ],
      ),
    );
  }

  Ink buildSocialButton({required String asset, required bool hover, required String url}) {
    return Ink(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.themeColor, width: 2.0),
        color: AppColors.bgColor,
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(6),
      child: InkWell(
        onTap: () {
          html.window.open(url, 'name'); // Membuka tautan saat tombol ditekan
        },
        child: Image.asset(
          asset,
          width: 10,
          height: 12,
          color: hover ? AppColors.bgColor : AppColors.themeColor,
        ),
      ),
    );
  }
}
