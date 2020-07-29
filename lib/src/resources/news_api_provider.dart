import 'dart:convert';
import 'package:flutter_news_demo/src/resources/repository.dart';
import 'package:http/http.dart' show Client;
import '../models/item_model.dart';

class NewsApiProvider implements Source {
  Client client = Client();

  final _baseUrl = 'https://hacker-news.firebaseio.com/v0';

  Future<List<int>> fetchTopIds() async {
    final response = await client.get('$_baseUrl/topstories.json');

    final ids = json.decode(response.body);

    return ids.cast<int>();
  }

  Future<ItemModel> fetchItem(int id) async {
    final response = await client.get('$_baseUrl/item/$id.json');

    final parsedJson = json.decode(response.body);

    return ItemModel.fromJson(parsedJson);
  }
}
