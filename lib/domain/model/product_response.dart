class ProductResponse {
  Product? product;
  List<RecommendedProducts>? recommendedProducts;

  ProductResponse({this.product, this.recommendedProducts});

  ProductResponse.fromJson(Map<String, dynamic> json) {
    product =
    json['product'] != null ? Product.fromJson(json['product']) : null;
    if (json['recommendedProducts'] != null) {
      recommendedProducts = <RecommendedProducts>[];
      json['recommendedProducts'].forEach((v) {
        recommendedProducts!.add(RecommendedProducts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (product != null) {
      data['product'] = product!.toJson();
    }
    if (recommendedProducts != null) {
      data['recommendedProducts'] =
          this.recommendedProducts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Product {
  int? id;
  Null? productId;
  String? slug;
  String? nameUz;
  String? nameRu;
  Null? descShortRu;
  Null? descShortUz;
  String? descriptionRu;
  String? descriptionUz;
  int? quantity;
  int? price;
  int? isRecommended;
  int? isPopular;
  int? isNew;
  int? isStock;
  int? isDiscounted;
  Null? image;
  List<String>? images;
  Null? discountType;
  int? previousPrice;
  int? discount;
  int? views;
  Null? orderCount;
  int? status;
  String? createdAt;
  String? updatedAt;
  Brand? brand;
  Brand? category;
  List<Attributes>? attributes;

  Product(
      {this.id,
        this.productId,
        this.slug,
        this.nameUz,
        this.nameRu,
        this.descShortRu,
        this.descShortUz,
        this.descriptionRu,
        this.descriptionUz,
        this.quantity,
        this.price,
        this.isRecommended,
        this.isPopular,
        this.isNew,
        this.isStock,
        this.isDiscounted,
        this.image,
        this.images,
        this.discountType,
        this.previousPrice,
        this.discount,
        this.views,
        this.orderCount,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.brand,
        this.category,
        this.attributes});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productId = json['product_id'];
    slug = json['slug'];
    nameUz = json['name_uz'];
    nameRu = json['name_ru'];
    descShortRu = json['desc_short_ru'];
    descShortUz = json['desc_short_uz'];
    descriptionRu = json['description_ru'];
    descriptionUz = json['description_uz'];
    quantity = json['quantity'];
    price = json['price'];
    isRecommended = json['is_recommended'];
    isPopular = json['is_popular'];
    isNew = json['is_new'];
    isStock = json['is_stock'];
    isDiscounted = json['is_discounted'];
    image = json['image'];
    images = json['images'].cast<String>();
    discountType = json['discount_type'];
    previousPrice = json['previous_price'];
    discount = json['discount'];
    views = json['views'];
    orderCount = json['order_count'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    brand = json['brand'] != null ? new Brand.fromJson(json['brand']) : null;
    category =
    json['category'] != null ? new Brand.fromJson(json['category']) : null;
    if (json['attributes'] != null) {
      attributes = <Attributes>[];
      json['attributes'].forEach((v) {
        attributes!.add(new Attributes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['product_id'] = this.productId;
    data['slug'] = this.slug;
    data['name_uz'] = this.nameUz;
    data['name_ru'] = this.nameRu;
    data['desc_short_ru'] = this.descShortRu;
    data['desc_short_uz'] = this.descShortUz;
    data['description_ru'] = this.descriptionRu;
    data['description_uz'] = this.descriptionUz;
    data['quantity'] = this.quantity;
    data['price'] = this.price;
    data['is_recommended'] = this.isRecommended;
    data['is_popular'] = this.isPopular;
    data['is_new'] = this.isNew;
    data['is_stock'] = this.isStock;
    data['is_discounted'] = this.isDiscounted;
    data['image'] = this.image;
    data['images'] = this.images;
    data['discount_type'] = this.discountType;
    data['previous_price'] = this.previousPrice;
    data['discount'] = this.discount;
    data['views'] = this.views;
    data['order_count'] = this.orderCount;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.brand != null) {
      data['brand'] = this.brand!.toJson();
    }
    if (this.category != null) {
      data['category'] = this.category!.toJson();
    }
    if (this.attributes != null) {
      data['attributes'] = this.attributes!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Brand {
  int? id;
  String? nameUz;
  String? nameRu;

  Brand({this.id, this.nameUz, this.nameRu});

  Brand.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nameUz = json['name_uz'];
    nameRu = json['name_ru'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name_uz'] = this.nameUz;
    data['name_ru'] = this.nameRu;
    return data;
  }
}

class Attributes {
  int? attributeId;
  String? attributeUz;
  String? attributeRu;
  int? valueId;
  String? valueUz;
  String? valueRu;

  Attributes(
      {this.attributeId,
        this.attributeUz,
        this.attributeRu,
        this.valueId,
        this.valueUz,
        this.valueRu});

  Attributes.fromJson(Map<String, dynamic> json) {
    attributeId = json['attribute_id'];
    attributeUz = json['attribute_uz'];
    attributeRu = json['attribute_ru'];
    valueId = json['value_id'];
    valueUz = json['value_uz'];
    valueRu = json['value_ru'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['attribute_id'] = this.attributeId;
    data['attribute_uz'] = this.attributeUz;
    data['attribute_ru'] = this.attributeRu;
    data['value_id'] = this.valueId;
    data['value_uz'] = this.valueUz;
    data['value_ru'] = this.valueRu;
    return data;
  }
}

class RecommendedProducts {
  int? id;
  Null? productId;
  String? slug;
  String? nameUz;
  String? nameRu;
  Null? descShortRu;
  Null? descShortUz;
  String? descriptionRu;
  String? descriptionUz;
  int? quantity;
  int? price;
  int? isRecommended;
  int? isPopular;
  int? isNew;
  int? isStock;
  int? isDiscounted;
  Null? image;
  List<String>? images;
  Null? discountType;
  int? previousPrice;
  int? discount;
  int? views;
  Null? orderCount;
  int? status;
  String? createdAt;
  String? updatedAt;
  Brand? brand;
  Brand? category;

  RecommendedProducts(
      {this.id,
        this.productId,
        this.slug,
        this.nameUz,
        this.nameRu,
        this.descShortRu,
        this.descShortUz,
        this.descriptionRu,
        this.descriptionUz,
        this.quantity,
        this.price,
        this.isRecommended,
        this.isPopular,
        this.isNew,
        this.isStock,
        this.isDiscounted,
        this.image,
        this.images,
        this.discountType,
        this.previousPrice,
        this.discount,
        this.views,
        this.orderCount,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.brand,
        this.category});

  RecommendedProducts.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productId = json['product_id'];
    slug = json['slug'];
    nameUz = json['name_uz'];
    nameRu = json['name_ru'];
    descShortRu = json['desc_short_ru'];
    descShortUz = json['desc_short_uz'];
    descriptionRu = json['description_ru'];
    descriptionUz = json['description_uz'];
    quantity = json['quantity'];
    price = json['price'];
    isRecommended = json['is_recommended'];
    isPopular = json['is_popular'];
    isNew = json['is_new'];
    isStock = json['is_stock'];
    isDiscounted = json['is_discounted'];
    image = json['image'];
    images = json['images'].cast<String>();
    discountType = json['discount_type'];
    previousPrice = json['previous_price'];
    discount = json['discount'];
    views = json['views'];
    orderCount = json['order_count'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    brand = json['brand'] != null ? new Brand.fromJson(json['brand']) : null;
    category =
    json['category'] != null ? new Brand.fromJson(json['category']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['product_id'] = this.productId;
    data['slug'] = this.slug;
    data['name_uz'] = this.nameUz;
    data['name_ru'] = this.nameRu;
    data['desc_short_ru'] = this.descShortRu;
    data['desc_short_uz'] = this.descShortUz;
    data['description_ru'] = this.descriptionRu;
    data['description_uz'] = this.descriptionUz;
    data['quantity'] = this.quantity;
    data['price'] = this.price;
    data['is_recommended'] = this.isRecommended;
    data['is_popular'] = this.isPopular;
    data['is_new'] = this.isNew;
    data['is_stock'] = this.isStock;
    data['is_discounted'] = this.isDiscounted;
    data['image'] = this.image;
    data['images'] = this.images;
    data['discount_type'] = this.discountType;
    data['previous_price'] = this.previousPrice;
    data['discount'] = this.discount;
    data['views'] = this.views;
    data['order_count'] = this.orderCount;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.brand != null) {
      data['brand'] = this.brand!.toJson();
    }
    if (this.category != null) {
      data['category'] = this.category!.toJson();
    }
    return data;
  }
}
