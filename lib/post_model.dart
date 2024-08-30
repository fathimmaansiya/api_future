class Post {
  final int id;
  final int userId;
  final String title;
  final String body;

  Post(
      {required this.id,
      required this.body,
      required this.title,
      required this.userId});
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        id: json['id'],
        body: json['body'],
        title: json['title'],
        userId: json['userid']);
  }
}
