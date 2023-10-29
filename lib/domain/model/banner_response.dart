class BannerResponse {
  List<Events>? events;

  BannerResponse({this.events});

  BannerResponse.fromJson(Map<String, dynamic> json) {
    if (json['events'] != null) {
      events = <Events>[];
      json['events'].forEach((v) {
        events!.add(Events.fromJson(v));
      });
    }
  }

}

class Events {
  int? id;
  String? titleUz;
  String? titleRu;
  String? slug;
  String? url;
  String? image;
  String? position;

  Events(
      {this.id,
        this.titleUz,
        this.titleRu,
        this.slug,
        this.url,
        this.image,
        this.position});

  Events.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    titleUz = json['title_uz'];
    titleRu = json['title_ru'];
    slug = json['slug'];
    url = json['url'];
    image = json['image'];
    position = json['position'];
  }

}
