class AboutMeModel {
  bool? isOk;
  Page? page;

  AboutMeModel({this.isOk, this.page});

  AboutMeModel.fromJson(Map<String, dynamic> json) {
    isOk = json['isOk'];
    page = json['page'] != null ? Page.fromJson(json['page']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['isOk'] = isOk;
    if (page != null) {
      data['page'] = page!.toJson();
    }
    return data;
  }
}

class Page {
  int? id;
  String? titleRu;
  String? titleUz;
  String? slug;
  String? contentRu;
  String? contentUz;

  Page(
      {this.id,
        this.titleRu,
        this.titleUz,
        this.slug,
        this.contentRu,
        this.contentUz});

  Page.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    titleRu = json['title_ru'];
    titleUz = json['title_uz'];
    slug = json['slug'];
    contentRu = json['content_ru'];
    contentUz = json['content_uz'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title_ru'] = titleRu;
    data['title_uz'] = titleUz;
    data['slug'] = slug;
    data['content_ru'] = contentRu;
    data['content_uz'] = contentUz;
    return data;
  }
}
