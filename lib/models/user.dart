import 'package:meta/meta.dart';

class User {
  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final String avatar;

  User({
    @required this.id,
    @required this.email,
    @required this.firstName,
    @required this.lastName,
    @required this.avatar,
  });

  User.fromJSON(Map<String, dynamic> json)
      : id = json['id'],
        email = json['email'],
        firstName = json['first_name'],
        lastName = json['last_name'],
        avatar = json['avatar'];
}
