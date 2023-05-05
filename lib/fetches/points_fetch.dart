import 'dart:convert';

import '../model/points_model.dart';
import '../services/service.dart';

Future<PointsModel> fetchPoints() async {
  final response = await AuthClient().getPoints();

  return PointsModel.fromJson(jsonDecode(response));
}
