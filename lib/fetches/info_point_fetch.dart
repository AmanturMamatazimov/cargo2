import 'dart:convert';

import 'package:cargo_app/model/info_point_model.dart';

import '../model/points_model.dart';
import '../services/service.dart';

Future<InfoPointModel> fetchInfoPoints(String id) async {
  final response = await AuthClient().getInfoPoint(id);

  return InfoPointModel.fromJson(jsonDecode(response));
}
