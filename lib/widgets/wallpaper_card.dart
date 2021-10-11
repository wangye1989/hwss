import 'package:flutter/material.dart';

class WallPaperCard extends StatelessWidget {
  final String cardTitle;
  final String imageUrl;
  final String timeStamp;
  const WallPaperCard(
      {Key? key,
      required this.cardTitle,
      required this.imageUrl,
      required this.timeStamp})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
          child: Text(
            timeStamp,
            style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
          ),
        ),
        // 图和文本
        Card(
          elevation: 16,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(16),
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              Image.network(imageUrl),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(16, 14, 14, 16),
                child: Expanded(
                  child: Text(
                    cardTitle,
                    style: const TextStyle(
                        fontSize: 16, color: Colors.black),
                    maxLines: 2,
                  ),
                ),
              ),
            ],
          ),
        ),
        // 底部 footer
      ],
    );
  }
}
