import 'package:dt_material/dt_material.dart';
import 'package:flutter/material.dart';

enum StatusPageType {
  error,
  waiting,
  success,
  canceled,
}

class StatusPage extends StatelessWidget {
  final StatusPageType status;
  final String? statusMessage;
  final Widget? bodyStatusData;
  final Widget? buttonAction;

  const StatusPage({
    super.key,
    required this.status,
    this.statusMessage,
    this.bodyStatusData,
    this.buttonAction,
  });

  IconData _getStatusIcon(StatusPageType status) {
    switch (status) {
      case StatusPageType.error:
        return Icons.error_outline;
      case StatusPageType.waiting:
        return Icons.hourglass_empty;
      case StatusPageType.success:
        return Icons.check_circle_outline;
      case StatusPageType.canceled:
        return Icons.cancel_outlined;
    }
  }

  Color _getStatusColor(StatusPageType status) {
    switch (status) {
      case StatusPageType.error:
        return Colors.red;
      case StatusPageType.waiting:
        return Colors.grey;
      case StatusPageType.success:
        return Colors.green;
      case StatusPageType.canceled:
        return Colors.orange;
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final icon = _getStatusIcon(status);
    final color = _getStatusColor(status);

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      icon,
                      size: 80,
                      color: color,
                    ),
                    Text(
                      statusMessage ?? '',
                      style: DTTextStyle.statusTitlePage,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: bodyStatusData ?? const SizedBox.shrink(),
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: buttonAction ?? const SizedBox.shrink(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
