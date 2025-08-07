import 'package:flutter/material.dart';

class WarningDetails extends StatelessWidget {
  final String reason;
  final String action;
  final String note;

  const WarningDetails({
    required this.reason,
    required this.action,
    required this.note,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF8F9FA),
        borderRadius: BorderRadius.circular(12),
        border: const Border(left: BorderSide(color: Color(0xFFFF6B6B), width: 4)),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Motivo: $reason', style: const TextStyle(fontSize: 14, color: Colors.black87)),
          const SizedBox(height: 10),
          Text('Acción requerida: $action', style: const TextStyle(fontSize: 14, color: Colors.black87)),
          const SizedBox(height: 10),
          Text(note, style: const TextStyle(fontSize: 14, color: Colors.black54, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}
