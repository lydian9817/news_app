class Source {
  final String? id;
  final String? name;

  Source({required this.id, required this.name});

  factory Source.fromJson(Map<String?,dynamic> json) {
    if (json['id'] != null && json['name'] != null) {
      return Source(
        id: json['id'] as String,
        name: json['name'] as String,
      );
    } else {
      return Source(id: 'no id ', name: 'no name');
    }
  }

  String? getId() {
    return id;
  }

  String? getName() {
    return name;
  }
}
