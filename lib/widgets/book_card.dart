import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/book.dart';

class BookCard extends StatelessWidget {
  final Book? book;
  final String? readTime;
  final String? bookName;
  final Function? press;
  final Double? process;

  const BookCard({
    Key? key,
    this.book,
    this.readTime,
    this.bookName,
    this.press,
    this.process,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
          ),
          // 图和文本
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
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
                          "${book!.bookName}",
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
                    value: book!.process,
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
                        "累计 " + "${book!.readTime}" + " 分钟",
                        style: const TextStyle(
                            fontSize: 14, color: Colors.black),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(10))),
                            padding: MaterialStateProperty.all(
                              const EdgeInsets.fromLTRB(20, 4, 20, 4),
                            ),
                            elevation: MaterialStateProperty.all(0)),
                        onPressed: () {
                          Navigator.pushNamed(
                              context, "reading_view_page");
                        },
                        child: const Text(
                          "开始阅读",
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
      ),
    );
  }
}
