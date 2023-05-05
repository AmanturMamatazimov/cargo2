import 'package:cargo_app/fetches/points_fetch.dart';
import 'package:cargo_app/services/map_service.dart';
import 'package:cargo_app/views/sendFormData/hotKeshAdd.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart' as mp;
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart' as loc;

import '../model/points_model.dart';

class SPPage extends StatefulWidget {
  const SPPage({Key? key}) : super(key: key);

  @override
  State<SPPage> createState() => _SPPageState();
}

class _SPPageState extends State<SPPage> {
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
  // late Future<PointsModel> futurePoints;

  @override
  void initState() {
    super.initState();
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
              if (markers.length > 0)
                Positioned(
                  left: 20,
                  bottom: 20,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SendFormData(
                              latLng: markers.elementAt(0).position),
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

    markers.add(Marker(
        markerId: MarkerId('marker$markersId'),
        position: tapPosition,
        icon: BitmapDescriptor.defaultMarker));
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
