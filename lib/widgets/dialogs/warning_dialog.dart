import 'package:flutter/material.dart';

import '../../utils/dt_colors.dart';
import '../../utils/style/dt_style_fonts.dart';

class WarningDialog extends StatelessWidget {
  const WarningDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.warning_amber_rounded,
              color: DTColors.bgError,
              size: 60,
            ),
            Text(
              'Crea el primer producto para poder continuar',
              style: DTTextStyle.title1,
            ),
          ],
        ),
      ),
    );
  }
}
