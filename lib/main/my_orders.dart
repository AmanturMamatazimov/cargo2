import 'package:cargo_app/fetches/info_contractor_fetch.dart';
import 'package:cargo_app/main/select_contractor.dart';
import 'package:cargo_app/model/info_contractor_model.dart';
import 'package:flutter/material.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  late Future<InfoContractorModel> futureInfoContractor;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureInfoContractor = fetchInfoContractor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Справочники/подрядчик'),
      ),
      body: FutureBuilder<InfoContractorModel>(
        future: futureInfoContractor,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.data!.length!,
              itemBuilder: (context, int index) {
                return Container(
                  margin: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(12.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SelectContractor(
                              data: snapshot.data!.data!.elementAt(index).id),
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child:
                          Text("${snapshot.data!.data!.elementAt(index).name}"),
                    ),
                  ),
                );
              },
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
