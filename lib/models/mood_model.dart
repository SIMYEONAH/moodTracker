class MoodModel {
  final String uid;
  final String mood;
  final String content;
  final String email;
  final String posttime;

  MoodModel({
    required this.email,
    required this.uid,
    required this.mood,
    required this.content,
    required this.posttime,
  });

  MoodModel.empty()
      : uid = "",
        mood = "",
        content = "",
        email = "",
        posttime = "";

  Map<String, String> toJson() {
    return {
      "uid": uid,
      "mood": mood,
      "content": content,
      "email": email,
      "posttime": posttime,
    };
  }

  MoodModel.fromJson(Map<String, dynamic> json)
      : uid = json["uid"],
        mood = json["mood"],
        content = json["content"],
        email = json["email"],
        posttime = json['posttime'];
}
