import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news/views/category_news.dart';

class CategoryTile extends StatelessWidget {
  final String imageURL, categoryName;
  CategoryTile({required this.imageURL, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector( onTap: () {
      Navigator.push(context,
            MaterialPageRoute(builder: (context) => CategoryNews(categoryURL: categoryName.toLowerCase() ,)));
      
      
    },
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: CachedNetworkImage(
                
                width: 120,
                height: 70,
                fit: BoxFit.cover, imageUrl: imageURL,
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
      ),
    );
  }
}