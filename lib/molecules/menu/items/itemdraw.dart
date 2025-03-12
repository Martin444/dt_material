import 'package:dt_material/utils/dt_colors.dart';
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
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          onRoute();
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          decoration: BoxDecoration(
            color: isSelected ?? false ? DTColors.bgItemMenuSelected : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                icon,
                colorFilter: ColorFilter.mode(
                  isSelected ?? false ? DTColors.primaryColor : DTColors.iconColor,
                  BlendMode.src,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                label,
                style: DTTextStyle.title3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
