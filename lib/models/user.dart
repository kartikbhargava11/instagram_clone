class User {
  final String name;
  final String imageUrl;
  final String username;
  final bool online;
  final String lastOnline;

  User({
    required this.name,
    required this.imageUrl,
    required this.username,
    this.online = true,
    this.lastOnline = "Active Now"
  });
}