class Livro{
  int id;
  String title;
  String subtitle;
  int autorId; // Adicione esse campo
  int editoraId; // Adicione esse campo

  Livro({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.autorId,
    required this.editoraId,
  });

  factory Livro.fromJson(Map<String, dynamic> json) {
    return Livro(
      id: json['id'],
      title: json['title'],
      subtitle: json['subtitle'],
      autorId: json['autorId'],
      editoraId: json['editoraId'],
    );
  }
}
