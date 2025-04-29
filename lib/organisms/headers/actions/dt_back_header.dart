import 'package:dt_material/dt_material.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class DtBackHeader extends StatelessWidget {
  const DtBackHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: SvgPicture.asset(
            DTIcons.iconBack,
            height: 100,
            width: 100,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        const Expanded(
          child: Text(
            'Volver',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
