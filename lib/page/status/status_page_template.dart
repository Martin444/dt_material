import 'package:dt_material/dt_material.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class StatePageTemplate extends StatelessWidget {
  final String? iconUrl;
  final String? title;
  final String? message;
  final ButtonPrimary? buttonConfirm;

  /// Constructor for [StatePageTemplate].
  ///
  /// [iconUrl] is the URL of the icon to be displayed.
  ///

  const StatePageTemplate({
    super.key,
    this.iconUrl,
    this.title,
    this.message,
    this.buttonConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            const SizedBox(height: 20),
            if (iconUrl != null)
              Center(
                child: SvgPicture.asset(iconUrl!),
              ),
            const SizedBox(height: 20),
            if (title != null)
              Center(
                child: Text(
                  title!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            const SizedBox(height: 10),
            if (message != null)
              Center(
                child: Text(
                  message!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
          ],
        ),
        Column(
          children: [
            buttonConfirm ?? const SizedBox(),
            const SizedBox(height: 20),
          ],
        )
      ],
    );
  }
}
