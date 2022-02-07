// ignore_for_file: unused_local_variable

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:news/Models/ArticleModel.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> news = [];

  Future getnews() async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=in&apiKey=71c74a60b4464131a43d7d6ad10a00fe";

    var response = await http.get(Uri.parse(url));
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element["description"] != null) {
          ArticleModel articleModel = ArticleModel(
              description: element["description"],
              title: element["title"],
              url: element["url"],
              urlToImage: element["urlToImage"]);
          news.add(articleModel);
        }
      });
    }
  }
}

class CategoryNewsClass {
  List<ArticleModel> categorynews = [];
  final String category;
  CategoryNewsClass({required this.category});

  Future getnews() async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=71c74a60b4464131a43d7d6ad10a00fe";

    var response = await http.get(Uri.parse(url));
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element["description"] != null) {
          ArticleModel articleModel = ArticleModel(
              description: element["description"],
              title: element["title"],
              url: element["url"],
              urlToImage: element["urlToImage"]);
          categorynews.add(articleModel);
        }
      });
    }
  }
}
