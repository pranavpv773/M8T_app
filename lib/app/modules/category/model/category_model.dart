// To parse this JSON data, do
//
//     final categoryModel = categoryModelFromJson(jsonString);

import 'dart:convert';

CategoryModel categoryModelFromJson(String str) =>
    CategoryModel.fromJson(json.decode(str));

String categoryModelToJson(CategoryModel data) => json.encode(data.toJson());

class CategoryModel {
  CategoryModel({
    this.status,
    this.message,
    this.data,
  });

  String? status;
  String? message;
  Data? data;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        status: json["status"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data!.toJson(),
      };
}

class Data {
  Data({
    this.totalHits,
    this.results,
  });

  int? totalHits;
  List<Result>? results;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        totalHits: json["totalHits"],
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "totalHits": totalHits,
        "results": List<dynamic>.from(results!.map((x) => x.toJson())),
      };
}

class Result {
  Result({
    this.grams,
    this.id,
    this.categoryId,
    this.skuid,
    this.title,
    this.product,
    this.remark,
    this.carrot,
    this.wastage,
    this.making,
    this.price,
    this.image,
    this.status,
    this.createdAt,
    this.v,
  });

  int? grams;
  String? id;
  CategoryId? categoryId;
  String? skuid;
  String? title;
  String? product;
  String? remark;
  int? carrot;
  int? wastage;
  int? making;
  int? price;
  String? image;
  String? status;
  DateTime? createdAt;
  int? v;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        grams: json["grams"],
        id: json["_id"],
        categoryId: CategoryId.fromJson(json["category_id"]),
        skuid: json["skuid"],
        title: json["title"],
        product: json["product"],
        remark: json["remark"],
        carrot: json["carrot"],
        wastage: json["wastage"],
        making: json["making"],
        price: json["price"],
        image: json["image"],
        status: json["status"],
        createdAt: DateTime.parse(json["createdAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "grams": grams,
        "_id": id,
        "category_id": categoryId!.toJson(),
        "skuid": skuid,
        "title": title,
        "product": product,
        "remark": remark,
        "carrot": carrot,
        "wastage": wastage,
        "making": making,
        "price": price,
        "image": image,
        "status": status,
        "createdAt": createdAt!.toIso8601String(),
        "__v": v,
      };
}

class CategoryId {
  CategoryId({
    this.id,
    this.name,
    this.status,
    this.createdAt,
    this.v,
  });

  String? id;
  String? name;
  String? status;
  DateTime? createdAt;
  int? v;

  factory CategoryId.fromJson(Map<String, dynamic> json) => CategoryId(
        id: json["_id"],
        name: json["name"],
        status: json["status"],
        createdAt: DateTime.parse(json["createdAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "status": status,
        "createdAt": createdAt!.toIso8601String(),
        "__v": v,
      };
}
