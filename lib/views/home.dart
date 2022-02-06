// ignore_for_file: prefer_const_constructors, deprecated_member_use, unnecessary_new, prefer_collection_literals, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_typing_uninitialized_variables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:news/Models/CategoryModel.dart';
import 'package:news/helper/data.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> categories = <CategoryModel>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories = getCategories();
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
      body: Container(
        child: Column(
          children: [
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
            )
          ],
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final imageURL, categoryName;
  CategoryTile({this.imageURL, this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              imageURL,
              width: 120,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.black26,
            ),
            width: 120,
            height: 70,
            child: Text(
              categoryName,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
                letterSpacing: 0.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
