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
    return Container(
      width: 160,
      height: 140,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(29)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, color: iconColor, size: 20,),
              const SizedBox(width: 6,),
              Text(
                label,
                style: TextStyle(
                  color: iconColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                value,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: iconColor,
                ),
              ),
              const SizedBox(width: 8,),
              Text(
                unit,
                style: TextStyle(
                  fontSize: 14,
                  color: iconColor,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
