class UserModel {
  final String uid;
  final String userName;

  UserModel({
    required this.uid,
    required this.userName,
  });
  UserModel.fromJson(Map<String, dynamic> json)
      : uid = json["userId"],
        userName = json['userName'];

  Map<String, dynamic> toJson() {
    return {
      "userId": uid,
      "userName": userName,
    };
  }
}
