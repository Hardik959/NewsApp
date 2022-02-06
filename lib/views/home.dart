// ignore_for_file: prefer_const_constructors, deprecated_member_use, unnecessary_new, prefer_collection_literals, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_typing_uninitialized_variables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:news/Models/ArticleModel.dart';
import 'package:news/Models/CategoryModel.dart';
import 'package:news/helper/data.dart';
import 'package:news/helper/news.dart';
import 'package:news/views/Tiles/blogtile.dart';
import 'package:news/views/Tiles/categorytile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> categories = <CategoryModel>[];
  List<ArticleModel> articles = <ArticleModel>[];
  bool _loading = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories = getCategories();
    getNews();
  }

  getNews() async {
    News newsclass = News();
    await newsclass.getnews();
    articles = newsclass.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              "Times",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "News",
              style: TextStyle(color: Colors.lightBlue),
            ),
          ],
        ),
        elevation: 0.0,
      ),
      body: _loading
          ? Center(
              child: Container(
                child: CircularProgressIndicator(),
              ),
            )
          : SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    // CATEGORIES
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      height: 90,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: categories.length,
                          itemBuilder: (context, index) {
                            return CategoryTile(
                              imageURL: categories[index].categoryURL,
                              categoryName: categories[index].categoryName,
                            );
                          }),
                    ),

                    //ARTICLES
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: ListView.builder(
                        physics: ClampingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: articles.length,
                          itemBuilder: (context, index) {
                            return BlogTile(
                              imgURL: articles[index].urlToImage,
                              title: articles[index].title,
                              desc: articles[index].description,
                            );
                          }),
                    ),
                    // Articles
                  ],
                ),
              ),
            ),
    );
  }
}
