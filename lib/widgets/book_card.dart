import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  final String? readingTime;
  final String bookName;
  final Function()? readNow;

  const BookCard({
    Key? key,
    required this.bookName,
    this.readingTime,
    this.readNow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
        ),
        // 图和文本
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                  offset: Offset(0.0, 16.0), //阴影xy轴偏移量
                  blurRadius: 32.0, //阴影模糊程度
                  spreadRadius: 1 //阴影扩散程度
                  )
            ],
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                height: 120,
                padding: const EdgeInsets.fromLTRB(24, 20, 8, 32),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        bookName,
                        style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                        maxLines: 2,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.more_vert_rounded,
                        size: 24,
                        color: Colors.black45,
                      ),
                      padding: const EdgeInsets.all(4),
                      onPressed: () {},
                    )
                  ],
                ),
              ),

              // 进度条
              SizedBox(
                height: 2,
                child: LinearProgressIndicator(
                  value: 0.5,
                  backgroundColor: Colors.white,
                  color: Colors.grey[400],
                ),
              ),
              Container(
                color: Colors.grey[50],
                padding: const EdgeInsets.fromLTRB(16, 8, 14, 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "累计 " + readingTime.toString() + " 分钟",
                      style: const TextStyle(
                          fontSize: 14, color: Colors.black),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(20))),
                          padding: MaterialStateProperty.all(
                            const EdgeInsets.fromLTRB(20, 4, 20, 4),
                          ),
                          elevation: MaterialStateProperty.all(0)),
                      onPressed: () {
                        Navigator.pushNamed(
                            context, "reading_view_page");
                      },
                      child: const Text(
                        "开始跟读",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
