class VerifyResponse {
  bool? isOk;
  String? accessToken;
  String? refreshToken;

  VerifyResponse({this.isOk, this.accessToken, this.refreshToken});

  VerifyResponse.fromJson(Map<String, dynamic> json) {
    isOk = json['isOk'];
    accessToken = json['accessToken'];
    refreshToken = json['refreshToken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['isOk'] = isOk;
    data['accessToken'] = accessToken;
    data['refreshToken'] = refreshToken;
    return data;
  }
}
