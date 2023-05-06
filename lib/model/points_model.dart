class PointsModel {
  List<Data>? data;
  List<Sections>? sections;

  PointsModel({this.data, this.sections});

  PointsModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    if (json['sections'] != null) {
      sections = <Sections>[];
      json['sections'].forEach((v) {
        sections!.add(new Sections.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (this.sections != null) {
      data['sections'] = this.sections!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? x;
  String? y;

  Data({this.id, this.x, this.y});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    x = json['x'];
    y = json['y'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['x'] = this.x;
    data['y'] = this.y;
    return data;
  }
}

class Sections {
  int? id;
  String? x1;
  String? y1;
  String? x2;
  String? y2;
  int? startDate;
  int? endDate;
  String? status;
  int? lifetime;
  String? type;
  Null? description;
  int? price;
  int? contractorId;
  String? createdAt;
  String? updatedAt;

  Sections(
      {this.id,
      this.x1,
      this.y1,
      this.x2,
      this.y2,
      this.startDate,
      this.endDate,
      this.status,
      this.lifetime,
      this.type,
      this.description,
      this.price,
      this.contractorId,
      this.createdAt,
      this.updatedAt});

  Sections.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    x1 = json['x1'];
    y1 = json['y1'];
    x2 = json['x2'];
    y2 = json['y2'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    status = json['status'];
    lifetime = json['lifetime'];
    type = json['type'];
    description = json['description'];
    price = json['price'];
    contractorId = json['contractor_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['x1'] = this.x1;
    data['y1'] = this.y1;
    data['x2'] = this.x2;
    data['y2'] = this.y2;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['status'] = this.status;
    data['lifetime'] = this.lifetime;
    data['type'] = this.type;
    data['description'] = this.description;
    data['price'] = this.price;
    data['contractor_id'] = this.contractorId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
