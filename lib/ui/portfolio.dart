import 'package:flutter/material.dart';
import 'package:responsive/globals/app_assets.dart';
import 'package:responsive/ui/project_mobile.dart';

import '../globals/app_text_styles.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({
    super.key,
  });

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List images = <String>[
    AppAssets.project,
    AppAssets.project,
    AppAssets.project,
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(
        top: size.height * 0.1,
        bottom: size.height * 0.1,
        left: size.width * 0.1,
        right: size.width * 0.1,
      ),
      child: Column(
        children: [
          Text(
            'My Portfolio',
            style: AppTextStyle.montserratStyle(fontsize: 18, color: Colors.white),
          ),
          const SizedBox(height: 5),
          Text(
            'Project',
            style: AppTextStyle.montserratStyle(fontsize: 25, color: Colors.white),
          ),
          const SizedBox(height: 5),
          Text(
            textAlign: TextAlign.center,
            'Lorem ipsum, or lipsum as it is sometimes known, \nis dummy text used in laying out print, graphic or web designs.\n',
            style: AppTextStyle.normalStyle(),
          ),
          const SizedBox(height: 20),
          width >= 900
              ? GridView.builder(
                  itemCount: images.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisExtent: 200,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 24,
                  ),
                  itemBuilder: (context, index) {
                    var image = images[index];
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        image: AssetImage(image),
                        fit: BoxFit.fill,
                      ),
                    );
                    // return Image(image: AssetImage(image));
                  },
                )
              : const Project(),
        ],
      ),
    );
  }
}
