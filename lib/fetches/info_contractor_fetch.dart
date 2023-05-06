import 'dart:convert';

import 'package:cargo_app/model/info_contractor_model.dart';

import '../model/points_model.dart';
import '../services/service.dart';

Future<InfoContractorModel> fetchInfoContractor() async {
  final response = await AuthClient().getInfoContractor();

  return InfoContractorModel.fromJson(jsonDecode(response));
}
