import 'package:flutter/material.dart';
import 'package:responsive/foto.dart';
import 'package:responsive/globals/app_colors.dart';
import 'package:responsive/globals/app_text_styles.dart';
import 'package:responsive/text.dart';
import 'package:responsive/ui/about_desktop.dart';
import 'package:responsive/ui/about_mobile.dart';
import 'package:responsive/ui/clients.dart';
import 'package:responsive/ui/contact.dart';
import 'package:responsive/ui/portfolio.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // final ItemScrollController _itemScrollController = _ItemScrollController();
  final onMenuHover = Matrix4.identity()..scale(1.0);
  final menuItems = <String>[
    'Home',
    'About',
    'Portfolio',
    'Clients',
    'Contact',
  ];

  var menuIndex = 0;
  // ignore: prefer_typing_uninitialized_variables

  final screenList = const <Widget>[
    Home(),
    AboutDesk(),
    Portfolio(),
    Clients(),
    Contact(),
  ];

  void scrollTo() {
    // _itemScrollController.jumpTo(index: index);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.themeColor,
      appBar: width >= 700
          ? AppBar(
              backgroundColor: AppColors.bgColor,
              toolbarHeight: 70,
              titleSpacing: 50,
              elevation: 0,
              title: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Portfolio',
                    style: AppTextStyle.headerTextStyle(color: Colors.black),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 30,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            // scrollTo(index: index);
                          },
                          borderRadius: BorderRadius.circular(100),
                          onHover: (value) {
                            setState(() {
                              if (value) {
                                menuIndex = index;
                              } else {
                                menuIndex = 0;
                              }
                            });
                          },
                          child: buildNavBarAnimatedContainer(index, menuIndex == index ? true : false),
                        );
                      },
                      separatorBuilder: (context, child) => const SizedBox(width: 8),
                      itemCount: menuItems.length,
                    ),
                  ),
                ],
              ),
            )
          : AppBar(
              backgroundColor: AppColors.bgColor,
              toolbarHeight: 70,
              titleSpacing: 50,
              elevation: 0,
              title: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Portfolio',
                  style: AppTextStyle.headerTextStyle(color: Colors.black),
                ),
              ),
              actions: [
                  PopupMenuButton(
                    icon: Icon(
                      Icons.menu_sharp,
                      size: 28,
                      color: AppColors.themeColor,
                    ),
                    // color: AppColors.themeColor,
                    position: PopupMenuPosition.under,
                    itemBuilder: (context) => [
                      const PopupMenuItem(value: 0, child: Text('Home')),
                      const PopupMenuItem(value: 1, child: Text('About')),
                      const PopupMenuItem(value: 2, child: Text('Portfolio')),
                      const PopupMenuItem(value: 3, child: Text('Clients')),
                      const PopupMenuItem(value: 4, child: Text('Contact')),
                    ],
                    onSelected: (value) {
                      if (value == 0) {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const Home(),
                        //   ),
                        // );
                      } else {}
                    },
                  ),
                ]),
      body:
          // ListView.builder(
          //   itemCount: screenList.length,
          //   itemBuilder: (context, index) {
          //     return screenList[index];
          //   },
          // )

          SingleChildScrollView(
        padding: EdgeInsets.only(
          top: size.height * 0.2,
        ),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 0.1, horizontal: size.width * 0.1),
                    // width >= 500 ?
                    child: width >= 700
                        ? const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              TextHome(),
                              // SizedBox(width: 20),
                              Foto(),
                            ],
                          )
                        : const Column(
                            children: [
                              TextHome(),
                              SizedBox(
                                height: 30,
                              ),
                              Foto(),
                            ],
                          ))
              ],
            ),
            const SizedBox(height: 155),
            Container(
              padding: EdgeInsets.only(
                top: size.height * 0.1,
                bottom: size.height * 0.1,
                left: size.width * 0.1,
                right: size.width * 0.1,
              ),
              color: AppColors.bgColor,
              alignment: Alignment.center,
              child: width >= 700 ? const AboutDesk() : const AboutMo(),
            ),
            const Portfolio(),
            const Clients(),
            const Contact(),
            // const Contact2(),
            // const Footer(),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildNavBarAnimatedContainer(int index, bool hover) {
    return AnimatedContainer(
      alignment: Alignment.center,
      width: hover ? 80 : 75,
      duration: const Duration(milliseconds: 200),
      transform: hover ? onMenuHover : null,
      child: Text(
        menuItems[index],
        style: AppTextStyle.headerTextStyle(color: hover ? AppColors.themeColor : AppColors.bgColor),
      ),
    );
  }
}
