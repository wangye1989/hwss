class Book {
  final String? bookName, readTime;
  final int? id;
  final double? process;
  Book({
    this.id,
    this.readTime,
    this.bookName,
    this.process,
  });
}

List<Book> books = [
  Book(id: 1, readTime: "54", bookName: "乔布斯在斯坦福的演讲", process: 0.5),
  Book(id: 2, readTime: "18", bookName: "雅思听力01", process: 0.4),
  Book(
      id: 3, readTime: "24", bookName: "Figma 大会的主题演讲", process: 0.1),
  Book(id: 4, readTime: "34", bookName: "2021苹果秋季发布会", process: 0.2),
];
