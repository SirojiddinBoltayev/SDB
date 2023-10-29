class AllProductResponse {
  List<int>? subCats;
  List<CategoryBrands>? categoryBrands;
  List<CategoryAttributes>? categoryAttributes;
  Pagination? pagination;
  List<Products>? products;

  AllProductResponse(
      {this.subCats,
        this.categoryBrands,
        this.categoryAttributes,
        this.pagination,
        this.products});

  AllProductResponse.fromJson(Map<String, dynamic> json) {
    if (json['subCats'] != null) {
      subCats = <int>[];
      json['subCats'].forEach((v) {
        subCats!.add(v);
      });
    }
    if (json['categoryBrands'] != null) {
      categoryBrands = <CategoryBrands>[];
      json['categoryBrands'].forEach((v) {
        categoryBrands!.add(CategoryBrands.fromJson(v));
      });
    }
    if (json['categoryAttributes'] != null) {
      categoryAttributes = <CategoryAttributes>[];
      json['categoryAttributes'].forEach((v) {
        categoryAttributes!.add(CategoryAttributes.fromJson(v));
      });
    }
    pagination = json['pagination'] != null
        ? Pagination.fromJson(json['pagination'])
        : null;
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(Products.fromJson(v));
      });
    }
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = Map<String, dynamic>();
  //   if (subCats != null) {
  //     data['subCats'] = subCats;
  //   }
  //   if (this.categoryBrands != null) {
  //     data['categoryBrands'] =
  //         this.categoryBrands!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.categoryAttributes != null) {
  //     data['categoryAttributes'] =
  //         this.categoryAttributes!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.pagination != null) {
  //     data['pagination'] = this.pagination!.toJson();
  //   }
  //   if (this.products != null) {
  //     data['products'] = this.products!.map((v) => v.toJson()).toList();
  //   }
  //   return data;
  // }
}

class CategoryBrands {
  int? id;
  String? nameUz;
  String? nameRu;
  String? image;
  int? count;

  CategoryBrands({this.id, this.nameUz, this.nameRu, this.image, this.count});

  CategoryBrands.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nameUz = json['name_uz'];
    nameRu = json['name_ru'];
    image = json['image'];
    count = json['count'];
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['id'] = this.id;
  //   data['name_uz'] = this.nameUz;
  //   data['name_ru'] = this.nameRu;
  //   data['image'] = this.image;
  //   data['count'] = this.count;
  //   return data;
  // }
}

class CategoryAttributes {
  int? id;
  String? nameUz;
  String? nameRu;
  int? isFilterable;
  List<Values>? values;

  CategoryAttributes(
      {this.id, this.nameUz, this.nameRu, this.isFilterable, this.values});

  CategoryAttributes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nameUz = json['name_uz'];
    nameRu = json['name_ru'];
    isFilterable = json['is_filterable'];
    if (json['values'] != null) {
      values = <Values>[];
      json['values'].forEach((v) {
        values!.add(Values.fromJson(v));
      });
    }
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = <String, dynamic>{};
  //   data['id'] = this.id;
  //   data['name_uz'] = this.nameUz;
  //   data['name_ru'] = this.nameRu;
  //   data['is_filterable'] = this.isFilterable;
  //   if (this.values != null) {
  //     data['values'] = this.values!.map((v) => v.toJson()).toList();
  //   }
  //   return data;
  // }
}

class Values {
  int? valueId;
  int? attributeId;
  String? valueUz;
  String? valueRu;
  int? count;

  Values(
      {this.valueId, this.attributeId, this.valueUz, this.valueRu, this.count});

  Values.fromJson(Map<String, dynamic> json) {
    valueId = json['value_id'];
    attributeId = json['attribute_id'];
    valueUz = json['value_uz'];
    valueRu = json['value_ru'];
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['value_id'] = this.valueId;
    data['attribute_id'] = this.attributeId;
    data['value_uz'] = this.valueUz;
    data['value_ru'] = this.valueRu;
    data['count'] = this.count;
    return data;
  }
}

class Pagination {
  int? total;
  int? current;
  int? perPage;
  int? totalPages;
  int? next;
  int? previous;

  Pagination(
      {this.total,
        this.current,
        this.perPage,
        this.totalPages,
        this.next,
        this.previous});

  Pagination.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    current = json['current'];
    perPage = json['per_page'];
    totalPages = json['total_pages'];
    next = json['next'];
    previous = json['previous'];
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = <String, dynamic>{};
  //   data['total'] = this.total;
  //   data['current'] = this.current;
  //   data['per_page'] = this.perPage;
  //   data['total_pages'] = this.totalPages;
  //   data['next'] = this.next;
  //   data['previous'] = this.previous;
  //   return data;
  // }
}

class Products {
  int? id;
  int? productId;
  String? slug;
  String? nameUz;
  String? nameRu;
  String? descShortRu;
  String? descShortUz;
  String? descriptionRu;
  String? descriptionUz;
  int? quantity;
  int? price;
  int? isRecommended;
  int? isPopular;
  int? isNew;
  int? isStock;
  int? isDiscounted;
  String? image;
  List<String>? images;
  String? discountType;
  int? previousPrice;
  int? discount;
  int? views;
  int? orderCount;
  int? status;
  String? createdAt;
  String? updatedAt;
  Brand? brand;
  Brand? category;

  Products(
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

  Products.fromJson(Map<String, dynamic> json) {
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
    brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
    category =
    json['category'] != null ? Brand.fromJson(json['category']) : null;
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = <String, dynamic>{};
  //   data['id'] = this.id;
  //   data['product_id'] = this.productId;
  //   data['slug'] = this.slug;
  //   data['name_uz'] = this.nameUz;
  //   data['name_ru'] = this.nameRu;
  //   data['desc_short_ru'] = this.descShortRu;
  //   data['desc_short_uz'] = this.descShortUz;
  //   data['description_ru'] = this.descriptionRu;
  //   data['description_uz'] = this.descriptionUz;
  //   data['quantity'] = this.quantity;
  //   data['price'] = this.price;
  //   data['is_recommended'] = this.isRecommended;
  //   data['is_popular'] = this.isPopular;
  //   data['is_new'] = this.isNew;
  //   data['is_stock'] = this.isStock;
  //   data['is_discounted'] = this.isDiscounted;
  //   data['image'] = this.image;
  //   data['images'] = this.images;
  //   data['discount_type'] = this.discountType;
  //   data['previous_price'] = this.previousPrice;
  //   data['discount'] = this.discount;
  //   data['views'] = this.views;
  //   data['order_count'] = this.orderCount;
  //   data['status'] = this.status;
  //   data['created_at'] = this.createdAt;
  //   data['updated_at'] = this.updatedAt;
  //   if (this.brand != null) {
  //     data['brand'] = this.brand!.toJson();
  //   }
  //   if (this.category != null) {
  //     data['category'] = category!.toJson();
  //   }
  //   return data;
  // }
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

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = <String, dynamic>{};
  //   data['id'] = id;
  //   data['name_uz'] = nameUz;
  //   data['name_ru'] = nameRu;
  //   return data;
  // }
}
