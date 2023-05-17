class PostMessage {
  PostMessage({
      this.name, 
      this.email, 
      this.subject, 
      this.message,});

  PostMessage.fromJson(dynamic json) {
    name = json['name'];
    email = json['email'];
    subject = json['subject'];
    message = json['message'];
  }
  String? name;
  String? email;
  String? subject;
  String? message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['email'] = email;
    map['subject'] = subject;
    map['message'] = message;
    return map;
  }
  String toParams() =>
      "?name=$name&email=$email&subject=$subject"
          "&message=$message";

}