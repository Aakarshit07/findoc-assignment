class ImageModel {
  final String id;
  final String author;

  ImageModel({required this.id, required this.author});

  factory ImageModel.fromJson(Map<String, dynamic> json) {
    return ImageModel(
      id: json['id'].toString(),
      author: json['author'] ?? 'Unknown',
    );
  }
}
