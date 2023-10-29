class LoginResponse {
  bool? isOk;
  String? message;

  LoginResponse({this.isOk, this.message});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    isOk = json['isOk'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['isOk'] = isOk;
    data['message'] = message;
    return data;
  }
}
