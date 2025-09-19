import 'package:flutter/material.dart';

class HealthCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final String unit;
  final Color iconColor;
  final Color backgroundColor;

  const HealthCard({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    required this.unit,
    required this.iconColor,
    required this.backgroundColor,
    });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
