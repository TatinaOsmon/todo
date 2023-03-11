class TodoModel {
  const TodoModel({
    required this.title,
    this.description,
    required this.isCompleted,
    required this.author,
  });

  final String title;
  final String? description;
  final bool isCompleted;
  final String author;

  set id(String id) {}

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'title': title,
      'description': description,
      'isCompleted': isCompleted,
      'author': author,
    };
  }

  factory TodoModel.fromJson(Map<String, dynamic> map) {
    return TodoModel(
      title: (map["title"] ?? '') as String,
      description: map['description'] != null
          // ignore: unnecessary_cast
          ? map["description"] ?? '' as String
          : null,
      isCompleted: (map["isCompleted"] ?? false) as bool,
      author: (map["author"] ?? '') as String,
    );
  }
}
