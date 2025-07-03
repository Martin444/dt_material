import 'package:dt_material/utils/dt_colors.dart';
import 'package:dt_material/utils/overflow_text.dart';
import 'package:dt_material/utils/style/dt_style_fonts.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class ItemDrawMenu extends StatelessWidget {
  final String icon;
  final String label;
  final bool? isSelected;
  final Function onRoute;
  const ItemDrawMenu({
    super.key,
    required this.icon,
    this.isSelected,
    required this.label,
    required this.onRoute,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      // Define a minimum width to show both icon and text
      const double minWidthForText = 120;
      final bool showText = constraints.maxWidth >= minWidthForText;
      final double iconSize = constraints.maxWidth < 120 ? 25 : 35;

      return MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () {
            onRoute();
          },
          child: Container(
            padding: showText
                ? const EdgeInsets.symmetric(horizontal: 10, vertical: 20)
                : const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
            decoration: BoxDecoration(
              color: isSelected ?? false ? DTColors.bgItemMenuSelected : Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: showText
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        icon,
                        width: iconSize,
                        height: iconSize,
                        colorFilter: ColorFilter.mode(
                          isSelected ?? false ? DTColors.primaryColor : DTColors.iconColor,
                          BlendMode.src,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Flexible(
                        child: DTOverflowTextDetector(
                          message: label,
                          textAlign: TextAlign.start,
                          textDirection: TextDirection.ltr,
                          children: [
                            Text(
                              label,
                              style: DTTextStyle.title3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              softWrap: false,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                : Center(
                    child: SvgPicture.asset(
                      icon,
                      width: iconSize,
                      height: iconSize,
                      colorFilter: ColorFilter.mode(
                        isSelected ?? false ? DTColors.primaryColor : DTColors.iconColor,
                        BlendMode.src,
                      ),
                    ),
                  ),
          ),
        ),
      );
    });
  }
}
