class Livro {
  int id;
  String title;
  String subtitle;

  Livro({
    required this.id,
    required this.title,
    required this.subtitle,
  });

  factory Livro.fromJson(Map<String, dynamic> json) {
    return Livro(
      id: json['id'],
      title: json['title'],
      subtitle: json['subtitle'],
    );
  }
}