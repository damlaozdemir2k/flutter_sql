class User {
  String? userName;
  int? age;
  bool? isMarried;

  User({this.userName, this.age, this.isMarried});

  User.fromJson(Map<String, dynamic> json) {
    userName = json['userName'];
    age = json['age'];
    isMarried = json['isMarried'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userName'] = this.userName;
    data['age'] = this.age;
    data['isMarried'] = this.isMarried;
    return data;
  }
}
