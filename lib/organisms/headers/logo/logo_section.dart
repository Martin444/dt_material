// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:dt_material/dt_material.dart';

class LogoSection extends StatelessWidget {
  final bool? withOmit;
  final bool? isBlack;
  final String? titleBar;
  final String? routeBack;
  final VoidCallback? onTapBack;

  const LogoSection({
    super.key,
    this.withOmit,
    this.isBlack,
    this.titleBar,
    this.routeBack,
    this.onTapBack,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        titleBar != null
            ? Row(
                children: [
                  GestureDetector(
                    onTap: onTapBack,
                    child: SizedBox(
                      child: Image.asset(
                        isBlack ?? false ? DTImages.dashLogoBlack : DTImages.dashLogo,
                        height: 10,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(titleBar!, style: DTTextStyle.title4),
                ],
              )
            : Row(
                children: [
                  Hero(
                    tag: 'dashLogo',
                    child: SizedBox(
                      child: Image.asset(
                        isBlack ?? false ? DTImages.dashLogoBlack : DTImages.dashLogo,
                        height: 50,
                        width: 100,
                      ),
                    ),
                  ),
                ],
              ),
        // Visibility(
        //   visible: withOmit ?? false,
        //   child: ButtonSecundary(
        //     title: "Omitir",
        //     load: false,
        //     onPressed: () {
        //       Get.toNamed(DTRoutes.HOME);
        //     },
        //   ),
        // )
      ],
    );
  }
}
