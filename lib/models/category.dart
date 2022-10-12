import 'dart:convert';

List<Category> categoryFromJson(String str) => List<Category>.from(json.decode(str).map((x) => Category.fromJson(x)));

String categoryToJson(List<Category> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Category {
    Category({
    required this.name,
    required this.description,
    required this.id,
    required this.thumbnail,
    required this.order,
    });

    String name;
    dynamic description;
    int id;
    String thumbnail;
    int order;

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        name: json["name"],
        description: json["description"],
        id: json["id"],
        thumbnail: json["thumbnail"],
        order: json["order"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "id": id,
        "thumbnail": thumbnail,
        "order": order,
    };
}
