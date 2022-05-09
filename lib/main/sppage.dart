import 'package:cargo_app/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SPPage extends StatefulWidget {
  const SPPage({Key? key}) : super(key: key);

  @override
  State<SPPage> createState() => _SPPageState();
}

class _SPPageState extends State<SPPage> {


  late CameraPosition _initialCameraPosition;

  late TextEditingController whereController;
  late TextEditingController selectController;
  int select = 0;

  @override
  void initState() {
    whereController = TextEditingController();
    selectController = TextEditingController();
    _initialCameraPosition = const CameraPosition(
      target: LatLng(42.882004, 74.582748),
      zoom: 11.5,
    );
    super.initState();
  }

  // static const _initialCameraPosition = CameraPosition(
  //     target:  LatLng(42.882004, 74.582748),  zoom: 11.5,);
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Пункты SP'),
      ),





     body: SingleChildScrollView(
      child: Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Column(
      children: <Widget>[
      SizedBox(
      height: 350,
      width: 450,
      child: GoogleMap(
      myLocationEnabled: false,
      zoomControlsEnabled: false,
      initialCameraPosition: _initialCameraPosition,
      ),
      ),
      Center(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
      Container(
      width: 410,
      child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
    children: <Widget>[
    const SizedBox(
    height: 15,
    ),
    Container(
    padding: const EdgeInsets.only(left: 20),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    color: AppColors.filColor,
    ),
    // child: phoneField(),
    ),
    ]
    )
    )
    )
    ]
    )
    )
    ]
    )
    )
     )
    );

  }
}
