import '../../shared/models/base.dart';

class UserModel extends BaseModel {
  final String firstName;
  final String lastName;
  final String email;
  final String profilePicture;

  UserModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.profilePicture,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'profile_picture': profilePicture,
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      profilePicture: json['profile_picture'] as String,
    );
  }
}
