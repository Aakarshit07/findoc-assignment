import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/image_model.dart';

class ImageRepository {
  Future<List<ImageModel>> fetchImages() async {
    final response = await http.get(
      Uri.parse('https://picsum.photos/v2/list?page=1&limit=10'),
    );

    final List data = jsonDecode(response.body);
    return data.map((json) => ImageModel.fromJson(json)).toList();
  }
}
