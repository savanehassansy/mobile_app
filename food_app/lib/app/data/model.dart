class User {
  int? id;
  String? email;
  String? first_name;
  String? last_name;
  String? avatar;

  User(
      {this.id,
      this.email,
      this.first_name,
      this.last_name,
      this.avatar});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    first_name = json['first_name'];
    last_name = json['last_name'];
    avatar = json['avatar'];
  }
}
