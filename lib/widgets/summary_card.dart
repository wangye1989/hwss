import 'package:flutter/material.dart';

class SummaryCard extends StatelessWidget {
  final double days;
  final double hours;
  const SummaryCard(
      {Key? key, required this.days, required this.hours})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.fromLTRB(10, 12, 8, 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.access_time_filled_rounded,
                color: Colors.black45,
                size: 16,
              ),
              const SizedBox(width: 4),
              Text(
                "本周阅读 " + days.toString() + " 天",
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black45,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(width: 20),
              Text(
                hours.toString(),
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
              const Text(
                " 分钟",
                style: TextStyle(fontSize: 14, color: Colors.black87),
              ),
            ],
          )
        ],
      ),
    );
  }
}
