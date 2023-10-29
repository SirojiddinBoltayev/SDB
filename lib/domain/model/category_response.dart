// To parse this JSON data, do
//
//     final categoryList = categoryListFromJson(jsonString);

import 'dart:convert';

class CategoryResponse {
  CategoryResponse({
    this.isOk,
    this.categories,
  });

  bool? isOk;
  List<Category>? categories;

  factory CategoryResponse.fromRawJson(String str) => CategoryResponse.fromJson(json.decode(str));


  factory CategoryResponse.fromJson(Map<String, dynamic> json) => CategoryResponse(
    isOk: json["isOk"],
    categories: json["categories"] == null ? [] : List<Category>.from(json["categories"]!.map((x) => Category.fromJson(x))),
  );

}

class Category {
  Category({
    this.id,
    this.nameUz,
    this.nameRu,
    this.image,
    this.slug,
    this.parentId,
    this.position,
    this.views,
    this.isFeatured,
    this.status,
    this.priority,
    this.children,
  });

  int? id;
  String? nameUz;
  String? nameRu;
  String? image;
  String? slug;
  int? parentId;
  dynamic position;
  int? views;
  int? isFeatured;
  int? status;
  int? priority;
  List<Child>? children;

  factory Category.fromRawJson(String str) => Category.fromJson(json.decode(str));


  factory Category.fromJson(Map<String, dynamic> json) => Category(
    id: json["id"],
    nameUz: json["name_uz"],
    nameRu: json["name_ru"],
    image: json["image"],
    slug: json["slug"],
    parentId: json["parent_id"],
    position: json["position"],
    views: json["views"],
    isFeatured: json["is_featured"],
    status: json["status"],
    priority: json["priority"],
    children: json["children"] == null ? [] : List<Child>.from(json["children"]!.map((x) => Child.fromJson(x))),
  );

}

class Child {
  Child({
    this.id,
    this.nameUz,
    this.nameRu,
    this.image,
    this.slug,
    this.parentId,
    this.position,
    this.views,
    this.isFeatured,
    this.status,
    this.priority,
    this.children,
  });

  int? id;
  String? nameUz;
  String? nameRu;
  String? image;
  String? slug;
  int? parentId;
  dynamic position;
  int? views;
  int? isFeatured;
  int? status;
  int? priority;
  List<Child>? children;

  factory Child.fromRawJson(String str) => Child.fromJson(json.decode(str));


  factory Child.fromJson(Map<String, dynamic> json) => Child(
    id: json["id"],
    nameUz: json["name_uz"],
    nameRu: json["name_ru"],
    image: json["image"],
    slug: json["slug"],
    parentId: json["parent_id"],
    position: json["position"],
    views: json["views"],
    isFeatured: json["is_featured"],
    status: json["status"],
    priority: json["priority"],
    children: json["children"] == null ? [] : List<Child>.from(json["children"]!.map((x) => Child.fromJson(x))),
  );

}



