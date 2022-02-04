// ignore_for_file: deprecated_member_use, unnecessary_new, prefer_collection_literals, unused_local_variable

import 'package:news/Models/CategoryModel.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> category = <CategoryModel>[];
  CategoryModel categoryModel = new CategoryModel();
  //1

  categoryModel.categoryName = "Buisiness";
  categoryModel.categoryURL =
      "https://images.unsplash.com/photo-1454165804606-c3d57bc86b40?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YnVpc25lc3N8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  //1

  categoryModel.categoryName = "Entertainment";
  categoryModel.categoryURL =
      "https://media.istockphoto.com/photos/the-musicians-were-playing-rock-music-on-stage-there-was-an-audience-picture-id1319479588?b=1&k=20&m=1319479588&s=170667a&w=0&h=bunblYyTDA_vnXu-nY4x4oa7ke6aiiZKntZ5mfr-4aM=";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  //1

  categoryModel.categoryName = "General";
  categoryModel.categoryURL =
      "https://images.unsplash.com/photo-1432821596592-e2c18b78144f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Z2VuZXJhbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  //1

  categoryModel.categoryName = "Health";
  categoryModel.categoryURL =
      "https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aGVhbHRofGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  //1

  categoryModel.categoryName = "Science";
  categoryModel.categoryURL =
      "https://media.istockphoto.com/photos/analyst-working-with-business-analytics-and-data-management-system-on-picture-id1286642964?b=1&k=20&m=1286642964&s=170667a&w=0&h=doK0J0FhFqTF83bb5XggguZgbR-pF16ngrDcr7xG21o=";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  //1

  categoryModel.categoryName = "Sports";
  categoryModel.categoryURL =
      "https://media.istockphoto.com/photos/various-sport-equipments-on-grass-picture-id949190736?b=1&k=20&m=949190736&s=170667a&w=0&h=f3ofVqhbmg2XSVOa3dqmvGtHc4VLA_rtbboRGaC8eNo=";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  //1

  categoryModel.categoryName = "Technology";
  categoryModel.categoryURL =
      "https://images.unsplash.com/photo-1518770660439-4636190af475?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dGVjaG5vbG9neXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60";
  category.add(categoryModel);
  categoryModel = new CategoryModel();
  return category;
}
