import 'package:dt_material/molecules/cards/details/warning_details.dart';
import 'package:flutter/material.dart';

class WarningCard extends StatelessWidget {
  final String title;
  final String message;
  final IconData icon;
  final Color iconColor;
  final WarningDetails details;
  final List<Widget> actions;
  final String? contactInfo;
  final Widget? logo;

  const WarningCard({
    required this.title,
    required this.message,
    required this.icon,
    required this.iconColor,
    required this.details,
    required this.actions,
    this.contactInfo,
    this.logo,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 500),
      padding: const EdgeInsets.all(40),
      // decoration: BoxDecoration(
      //   color: Colors.white,
      //   borderRadius: BorderRadius.circular(16),
      //   boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 30)],
      // ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (logo != null) ...[
            logo!,
            const SizedBox(height: 30),
          ],
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: iconColor,
              shape: BoxShape.circle,
              boxShadow: [BoxShadow(color: iconColor.withOpacity(0.3), blurRadius: 30)],
            ),
            child: Icon(icon, color: Colors.white, size: 36),
          ),
          const SizedBox(height: 30),
          Text(title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 15),
          Text(
            message,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
          const SizedBox(height: 30),
          details,
          const SizedBox(height: 30),
          Wrap(
            spacing: 15,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: actions,
          ),
          if (contactInfo != null) ...[
            const SizedBox(height: 20),
            Text(
              contactInfo!,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ],
        ],
      ),
    );
  }
}
