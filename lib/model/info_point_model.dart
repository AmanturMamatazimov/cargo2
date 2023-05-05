class InfoPointModel {
  Data? data;

  InfoPointModel({this.data});

  InfoPointModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? userId;
  String? userName;
  String? x;
  String? y;
  String? photo;
  String? description;
  String? date;
  int? likes;
  int? dislikes;

  Data(
      {this.userId,
        this.userName,
        this.x,
        this.y,
        this.photo,
        this.description,
        this.date,
        this.likes,
        this.dislikes});

  Data.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    userName = json['user_name'];
    x = json['x'];
    y = json['y'];
    photo = json['photo'];
    description = json['description'];
    date = json['date'];
    likes = json['likes'];
    dislikes = json['dislikes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['user_name'] = this.userName;
    data['x'] = this.x;
    data['y'] = this.y;
    data['photo'] = this.photo;
    data['description'] = this.description;
    data['date'] = this.date;
    data['likes'] = this.likes;
    data['dislikes'] = this.dislikes;
    return data;
  }
}
