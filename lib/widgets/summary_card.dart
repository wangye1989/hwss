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
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.access_time,
                color: Colors.grey,
                size: 16,
              ),
              const SizedBox(width: 4),
              Text(
                "本周已阅读 " + days.toString() + " 天",
                style:
                    const TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(width: 20),
              const Text(
                "共 ",
                style: TextStyle(fontSize: 14, color: Colors.black87),
              ),
              Text(
                hours.toString(),
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
              const Text(
                " 小时",
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
            ],
          )
        ],
      ),
    );
  }
}
