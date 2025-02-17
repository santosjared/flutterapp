class User {
  final String email;
  final String password;
  final String name;
  final String? avatarUrl;

  User({required this.email, required this.password, required this.name, this.avatarUrl});
} 