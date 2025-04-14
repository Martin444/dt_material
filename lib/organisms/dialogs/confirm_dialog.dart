import 'package:flutter/material.dart';

import '../../dt_material.dart';

class ConfirmDialog extends StatelessWidget {
  final String title;
  final Function()? onCancel;
  final Function()? onAcept;
  const ConfirmDialog({
    super.key,
    required this.title,
    this.onCancel,
    this.onAcept,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: DTTextStyle.title1,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: onCancel,
                  child: const Text('Cancelar'),
                ),
                TextButton(
                  onPressed: onAcept,
                  child: Text(
                    'Aceptar',
                    style: DTTextStyle.redirectLink1.copyWith(fontSize: 15),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
