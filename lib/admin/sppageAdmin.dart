import 'package:cargo_app/fetches/points_fetch.dart';
import 'package:cargo_app/model/info_point_model.dart';
import 'package:cargo_app/services/map_service.dart';
import 'package:cargo_app/services/service.dart';
import 'package:cargo_app/views/sendFormData/hotKeshAdd.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart' as mp;
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart' as loc;

import '../fetches/info_point_fetch.dart';
import '../model/points_model.dart';

class spAdminPage extends StatefulWidget {
  const spAdminPage({Key? key}) : super(key: key);

  @override
  State<spAdminPage> createState() => _spAdminPageState();
}

class _spAdminPageState extends State<spAdminPage> {
  late CameraPosition _initialCameraPosition = const CameraPosition(
    target: LatLng(42.882004, 74.582748),
    zoom: 11.5,
  );

  late TextEditingController whereController = TextEditingController();
  late TextEditingController selectController = TextEditingController();
  int select = 0;
  loc.LocationData? currentLocation;
  mp.MapController? mapController;
  Set<Marker> markers = {};
  late Future<PointsModel> futurePoints;
  late Future<InfoPointModel> futureInfoPoint;

  @override
  void initState() {
    super.initState();
    futurePoints = fetchPoints();
  }

  Future<LatLng> getMyCoordsLocator() async {
    loc.LocationData? data = await MapService.getLocation();
    LatLng _latLng;
    if (data != null) {
      print(data.toString() + '123234');
      _latLng = LatLng(data.latitude!, data.longitude!);
    } else {
      _latLng = const LatLng(37.4219983, -122.084);
    }
    return _latLng;
  }

  // static const _initialCameraPosition = CameraPosition(
  //     target:  LatLng(42.882004, 74.582748),  zoom: 11.5,);
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Пункты SP'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Stack(children: [
              FutureBuilder(
                future: getMyCoordsLocator(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (snapshot.hasData) {
                    return GoogleMap(
                      markers: markers,
                      myLocationEnabled: true,
                      myLocationButtonEnabled: true,
                      initialCameraPosition: CameraPosition(
                          target: snapshot.data as LatLng, zoom: 16),
                      mapType: MapType.normal,
                      onTap: _handleTap,
                      onMapCreated: (controller) {
                        mapController = controller as mp.MapController;
                      },
                    );
                  }
                  return const Center(child: CircularProgressIndicator());
                },
              ),
              if (markers.length > 1)
                Positioned(
                  left: 20,
                  bottom: 20,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              SendFormData(latLng: markers.last.position),
                        ),
                      );
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.blue),
                      child: const Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              FutureBuilder<PointsModel>(
                future: futurePoints,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    var path = snapshot.data!;
                    for (var i = 0; i < path.data!.length; i++) {
                      markers.add(Marker(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  futureInfoPoint = fetchInfoPoints(
                                      path.data![i].id.toString());
                                  var like = false;
                                  return FutureBuilder<InfoPointModel>(
                                    future: futureInfoPoint,
                                    builder: (context, snapshot2) {
                                      if (snapshot2.hasError) {
                                        return const Center(
                                            child: CircularProgressIndicator());
                                      }
                                      if (snapshot2.hasData) {
                                        var cut = snapshot2.data;
                                        return Container(
                                          padding: EdgeInsets.all(20),
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              2,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                      decoration: BoxDecoration(
                                                          image: DecorationImage(
                                                              image: NetworkImage('http://' +
                                                                  AuthClient()
                                                                      .ip +
                                                                  ':' +
                                                                  AuthClient()
                                                                      .port
                                                                      .toString() +
                                                                  '/storage/' +
                                                                  cut!.data!
                                                                      .photo!),
                                                              fit:
                                                                  BoxFit.cover),
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          6))),
                                                      width: 150,
                                                      height: 150),
                                                  SizedBox(width: 40),
                                                  Column(
                                                    children: [
                                                      IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                              Icons.thumb_up,
                                                              color: like ==
                                                                      false
                                                                  ? Colors.grey
                                                                  : Colors
                                                                      .red)),
                                                      Text(cut!.data!.likes!
                                                          .toString())
                                                    ],
                                                  ),
                                                  SizedBox(width: 10),
                                                  Column(
                                                    children: [
                                                      IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                              Icons.thumb_down,
                                                              color: like ==
                                                                      false
                                                                  ? Colors.grey
                                                                  : Colors
                                                                      .blue)),
                                                      Text(cut!.data!.dislikes!
                                                          .toString())
                                                    ],
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 20),
                                              Text(cut!.data!.userName!),
                                              SizedBox(height: 20),
                                              Text(cut!.data!.description!),
                                              SizedBox(height: 20),
                                              Text(cut!.data!.date!),
                                            ],
                                          ),
                                        );
                                      }
                                      return const Center(
                                          child: CircularProgressIndicator());
                                    },
                                  );
                                });
                          },
                          markerId: MarkerId(path.data![i].id.toString()),
                          position: LatLng(double.parse(path.data![i].x!),
                              double.parse(path.data![i].y!))));
                    }
                    return Container();
                  }
                  return const Center(child: SizedBox());
                },
              ),
            ])),
      ),
    );
  }

  late List<String> locationXY;

  int markersId = 0;
  void _handleTap(LatLng tapPosition) async {
    final location = loc.Location();
    try {
      currentLocation = await location.getLocation();
    } catch (e) {
      currentLocation = null;
    }
    if (markersId <= 1) {
      markers.add(Marker(
          markerId: MarkerId('marker$markersId'),
          position: tapPosition,
          icon: BitmapDescriptor.defaultMarker));
      markersId++;
    }

    setState(() {});
    // _onMar(tapPosition);
    //markersId++;
    locationXY.add(tapPosition.longitude.toString());
    locationXY.add(tapPosition.latitude.toString());

    var json = {
      'x': locationXY.elementAt(0),
      'y': '',
      'photo': '',
      'user_id': '',
      'type': '',
      'description': ''
    };
    print(tapPosition);
  }
/*
  Future<void> _onMar(LatLng tapPosition) async {
    List<Placemark> placemark = await placemarkFromCoordinates(
        tapPosition.latitude, tapPosition.longitude);
    var first = placemark.first.name;
    print(first.toString());
  }
  */
/*
  Future<void> _onMarkerTapped(Marker marker) async {
    final coordinates =
        Coordinates(marker.position.latitude, marker.position.longitude);
    final addresses = await geocoding.findAddressesFromCoordinates(coordinates);

    if (addresses.isNotEmpty) {
      final firstAddress = addresses.first;
      final street = firstAddress.thoroughfare;

      if (street != null) {
        print(street);
      } else {
        print('Улица не найдена');
      }
    } else {
      print('Адрес не найден');
    }
  }
  */
}
