import 'package:flutter/cupertino.dart';
import 'package:news/models/category_model.dart';

List<CategoryModel> getCategories() {

  List<CategoryModel> category = new List<CategoryModel>();
  CategoryModel categoryModel = new CategoryModel();
  //1
  categoryModel.categoryName = "Business";
  categoryModel.imageUrl = "https://images.unsplash"
      ".com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2"
      ".1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1651&q=80";
  category.add(categoryModel);

  //2
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Sport";
  categoryModel.imageUrl = "https://images.unsplash"
  ".com/photo-1483721310020-03333e577078?ixlib=rb-1.2"
  ".1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60";
  category.add(categoryModel);

  //3
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "HealthCare";
  categoryModel.imageUrl = "https://images.unsplash"
      ".com/photo-1505751172876-fa1923c5c528?ixlib=rb-1.2"
      ".1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60";
  category.add(categoryModel);

  //4
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Technology";
  categoryModel.imageUrl = "https://images.unsplash"
      ".com/photo-1498050108023-c5249f4df085?ixlib=rb-1.2"
      ".1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60";
  category.add(categoryModel);

  return category;
}