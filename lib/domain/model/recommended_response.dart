class RecommendedList {
  Pagination? pagination;
  List<RelatedCategories>? relatedCategories;
  List<Products>? products;

  RecommendedList({this.pagination, this.relatedCategories, this.products});

  RecommendedList.fromJson(Map<String, dynamic> json) {
    pagination = json['pagination'] != null
        ? Pagination.fromJson(json['pagination'])
        : null;
    if (json['relatedCategories'] != null) {
      relatedCategories = <RelatedCategories>[];
      json['relatedCategories'].forEach((v) {
        relatedCategories!.add( RelatedCategories.fromJson(v));
      });
    }
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add( Products.fromJson(v));
      });
    }
  }

}

class Pagination {
  int? total;
  int? current;
  int? perPage;
  int? totalPages;
  int? next;
  Null? previous;

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

}

class RelatedCategories {
  int? id;
  String? nameUz;
  String? nameRu;
  Null? image;
  String? slug;
  int? parentId;
  Null? position;
  int? views;
  Null? isFeatured;
  int? status;
  int? priority;

  RelatedCategories(
      {this.id,
        this.nameUz,
        this.nameRu,
        this.image,
        this.slug,
        this.parentId,
        this.position,
        this.views,
        this.isFeatured,
        this.status,
        this.priority});

  RelatedCategories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nameUz = json['name_uz'];
    nameRu = json['name_ru'];
    image = json['image'];
    slug = json['slug'];
    parentId = json['parent_id'];
    position = json['position'];
    views = json['views'];
    isFeatured = json['is_featured'];
    status = json['status'];
    priority = json['priority'];
  }

}

class Products {
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

}
