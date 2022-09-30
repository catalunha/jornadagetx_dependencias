class AuthModel {
  String name;
  String email;
  AuthModel({
    required this.name,
    required this.email,
  });

  @override
  String toString() => 'AuthModel(name: $name, email: $email)';
}
