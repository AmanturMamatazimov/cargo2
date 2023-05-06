import 'package:cargo_app/model/info_contractor_model.dart';
import 'package:cargo_app/services/service.dart';
import 'package:flutter/material.dart';

class SelectContractor extends StatelessWidget {
  late Future<InfoContractorModel> futureInfoContractor;
  Data? data;
  SelectContractor({Key? key, required data}) : super(key: key);

  static const styleHeader =
      TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black);
  static const styleBase =
      TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Colors.black);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name",
              style: styleHeader,
            ),
            Text(
              "${data?.name}",
              style: styleBase,
            ),
            Text(
              "Type",
              style: styleHeader,
            ),
            Text(
              "${data?.type}",
              style: styleBase,
            ),
            Text(
              "Country",
              style: styleHeader,
            ),
            Text(
              "${data?.country}",
              style: styleBase,
            ),
            Text(
              "iNN",
              style: styleHeader,
            ),
            Text(
              "${data?.iNN}",
              style: styleBase,
            ),
            Text(
              "Created At",
              style: styleHeader,
            ),
            Text(
              "${data?.createdAt}",
              style: styleBase,
            ),
            Text(
              "Updated At",
              style: styleHeader,
            ),
            Text(
              "${data?.updatedAt}",
              style: styleBase,
            ),
          ],
        ),
      ),
    );
  }
}
