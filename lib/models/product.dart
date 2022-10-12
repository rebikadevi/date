// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
    Product({
       required this.success,
       required this.msg,
       required this.data,
    });

    bool success;
    String msg;
    Data data;

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        success: json["success"],
        msg: json["msg"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "msg": msg,
        "data": data.toJson(),
    };
}

class Data {
    Data({
       required this.products,
    });

    List<ProductElement> products;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        products: List<ProductElement>.from(json["products"].map((x) => ProductElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
    };
}

class ProductElement {
    ProductElement({
        required this.id,
        required this.name,
        required this.sellingPrice,
        required this.discountedSellingPrice,
        required this.priceUnit,
        required this.active,
        required this.description,
        required this.visible,
        required this.verified,
        required this.thumbnail,
         this.photos,
        required this.barcode,
        required this.createdAt,
        required this.updatedAt,
        required this.productId,
        required this.businessId,
        required this.stockId,
        required this.totalStock,
        required this.sku,
        required this.remainingStock,
        required this.inStock,
    });

    int id;
    String name;
    int sellingPrice;
    int discountedSellingPrice;
    String priceUnit;
    bool active;
    String description;
    bool visible;
    bool verified;
    String thumbnail;
    List<String>? photos;
    String barcode;
    DateTime createdAt;
    DateTime updatedAt;
    int productId;
    int businessId;
    int stockId;
    dynamic totalStock;
    String sku;
    dynamic remainingStock;
    bool inStock;

    factory ProductElement.fromJson(Map<String, dynamic> json) => ProductElement(
        id: json["id"],
        name: json["name"],
        sellingPrice: json["selling_price"],
        discountedSellingPrice: json["discounted_selling_price"],
        priceUnit: json["price_unit"],
        active: json["active"],
        description: json["description"] == null ? null : json["description"],
        visible: json["visible"],
        verified: json["verified"],
        thumbnail: json["thumbnail"],
        photos: json["photos"] == null ? null : List<String>.from(json["photos"].map((x) => x)),
        barcode: json["barcode"] == null ? null : json["barcode"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        productId: json["product_id"],
        businessId: json["business_id"],
        stockId: json["stock_id"],
        totalStock: json["total_stock"],
        sku: json["sku"] == null ? null : json["sku"],
        remainingStock: json["remaining_stock"],
        inStock: json["in_stock"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "selling_price": sellingPrice,
        "discounted_selling_price": discountedSellingPrice,
        "price_unit": priceUnit,
        "active": active,
        "description": description == null ? null : description,
        "visible": visible,
        "verified": verified,
        "thumbnail": thumbnail,
        "photos": photos == null ? null : List<dynamic>.from(photos!.map((x) => x)),
        "barcode": barcode == null ? null : barcode,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "product_id": productId,
        "business_id": businessId,
        "stock_id": stockId,
        "total_stock": totalStock,
        "sku": sku == null ? null : sku,
        "remaining_stock": remainingStock,
        "in_stock": inStock,
    };
}









// // To parse this JSON data, do
// //
// //     final product = productFromJson(jsonString);

// import 'dart:convert';

// List<Product> productFromJson(String str) => List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

// String productToJson(List<Product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class Product {
//     Product({
//         required this.id,
//         required this.name,
//         required this.sellingPrice,
//         required this.discountedSellingPrice,
//         required this.priceUnit,
//         required this.active,
//         required this.description,
//         required this.visible,
//         required this.verified,
//         required this.thumbnail,
//          this.photos,
//         required this.barcode,
//         required this.createdAt,
//         required this.updatedAt,
//         required this.productId,
//         required this.businessId,
//         required this.stockId,
//         required this.totalStock,
//         required this.sku,
//         required this.remainingStock,
//         required this.inStock,
//     });

//     int id;
//     String name;
//     int sellingPrice;
//     int discountedSellingPrice;
//     String priceUnit;
//     bool active;
//     dynamic description;
//     bool visible;
//     bool verified;
//     String thumbnail;
//     List<String>? photos;
//     dynamic barcode;
//     DateTime createdAt;
//     DateTime updatedAt;
//     int productId;
//     int businessId;
//     int stockId;
//     dynamic totalStock;
//     dynamic sku;
//     dynamic remainingStock;
//     bool inStock;

//     factory Product.fromJson(Map<String, dynamic> json) => Product(
//         id: json["id"],
//         name: json["name"],
//         sellingPrice: json["selling_price"],
//         discountedSellingPrice: json["discounted_selling_price"],
//         priceUnit: json["price_unit"],
//         active: json["active"],
//         description: json["description"],
//         visible: json["visible"],
//         verified: json["verified"],
//         thumbnail: json["thumbnail"],
//         photos: json["photos"] == null ? null : List<String>.from(json["photos"].map((x) => x)),
//         barcode: json["barcode"],
//         createdAt: DateTime.parse(json["createdAt"]),
//         updatedAt: DateTime.parse(json["updatedAt"]),
//         productId: json["product_id"],
//         businessId: json["business_id"],
//         stockId: json["stock_id"],
//         totalStock: json["total_stock"],
//         sku: json["sku"],
//         remainingStock: json["remaining_stock"],
//         inStock: json["in_stock"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "selling_price": sellingPrice,
//         "discounted_selling_price": discountedSellingPrice,
//         "price_unit": priceUnit,
//         "active": active,
//         "description": description,
//         "visible": visible,
//         "verified": verified,
//         "thumbnail": thumbnail,
//         "photos": photos == null ? null : List<dynamic>.from(photos!.map((x) => x)),
//         "barcode": barcode,
//         "createdAt": createdAt.toIso8601String(),
//         "updatedAt": updatedAt.toIso8601String(),
//         "product_id": productId,
//         "business_id": businessId,
//         "stock_id": stockId,
//         "total_stock": totalStock,
//         "sku": sku,
//         "remaining_stock": remainingStock,
//         "in_stock": inStock,
//     };
// }




// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

// import 'dart:convert';

// Product productFromJson(String str) => Product.fromJson(json.decode(str));

// String productToJson(Product data) => json.encode(data.toJson());

// class Product {
//     Product({
//         // this.success,
//         // this.msg,
//       required  this.data,
//     });

//     // bool success;
//     // String msg;
//     Data data;

//     factory Product.fromJson(Map<String, dynamic> json) => Product(
//         // success: json["success"],
//         // msg: json["msg"],
//         data: Data.fromJson(json["data"]),
//     );

//     Map<String, dynamic> toJson() => {
//         // "success": success,
//         // "msg": msg,
//         "data": data.toJson(),
//     };
// }

// class Data {
//     Data({
//        required this.products,
//     });

//     List<ProductElement> products;

//     factory Data.fromJson(Map<String, dynamic> json) => Data(
//         products: List<ProductElement>.from(json["products"].map((x) => ProductElement.fromJson(x))),
//     );

//     Map<String, dynamic> toJson() => {
//         "products": List<dynamic>.from(products.map((x) => x.toJson())),
//     };
// }

// class ProductElement {
//     ProductElement({
//         required this.id,
//         required this.name,
//         required this.sellingPrice,
//         required this.discountedSellingPrice,
//         required this.priceUnit,
//         required this.active,
//         required this.description,
//         required this.visible,
//         required this.verified,
//         required this.thumbnail,
//          this.photos,
//         required this.barcode,
//         required this.createdAt,
//         required this.updatedAt,
//         required this.productId,
//         required this.businessId,
//         required this.stockId,
//         required this.totalStock,
//         required this.sku,
//         required this.remainingStock,
//         required this.inStock,
//     });

//     int id;
//     String name;
//     int sellingPrice;
//     int discountedSellingPrice;
//     String priceUnit;
//     bool active;
//     String description;
//     bool visible;
//     bool verified;
//     String thumbnail;
//     List<String>? photos;
//     String barcode;
//     DateTime createdAt;
//     DateTime updatedAt;
//     int productId;
//     int businessId;
//     int stockId;
//     dynamic totalStock;
//     String sku;
//     dynamic remainingStock;
//     bool inStock;

//     factory ProductElement.fromJson(Map<String, dynamic> json) => ProductElement(
//         id: json["id"],
//         name: json["name"],
//         sellingPrice: json["selling_price"],
//         discountedSellingPrice: json["discounted_selling_price"],
//         priceUnit: json["price_unit"],
//         active: json["active"],
//         description: json["description"] == null ? null : json["description"],
//         visible: json["visible"],
//         verified: json["verified"],
//         thumbnail: json["thumbnail"],
//         photos: json["photos"] == null ? null : List<String>.from(json["photos"].map((x) => x)),
//         barcode: json["barcode"] == null ? null : json["barcode"],
//         createdAt: DateTime.parse(json["createdAt"]),
//         updatedAt: DateTime.parse(json["updatedAt"]),
//         productId: json["product_id"],
//         businessId: json["business_id"],
//         stockId: json["stock_id"],
//         totalStock: json["total_stock"],
//         sku: json["sku"] == null ? null : json["sku"],
//         remainingStock: json["remaining_stock"],
//         inStock: json["in_stock"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "selling_price": sellingPrice,
//         "discounted_selling_price": discountedSellingPrice,
//         "price_unit": priceUnit,
//         "active": active,
//         "description": description == null ? null : description,
//         "visible": visible,
//         "verified": verified,
//         "thumbnail": thumbnail,
//         "photos": photos == null ? null : List<dynamic>.from(photos!.map((x) => x)),
//         "barcode": barcode == null ? null : barcode,
//         "createdAt": createdAt.toIso8601String(),
//         "updatedAt": updatedAt.toIso8601String(),
//         "product_id": productId,
//         "business_id": businessId,
//         "stock_id": stockId,
//         "total_stock": totalStock,
//         "sku": sku == null ? null : sku,
//         "remaining_stock": remainingStock,
//         "in_stock": inStock,
//     };
// }




