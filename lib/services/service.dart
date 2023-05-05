import 'dart:convert';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:http_parser/src/media_type.dart';
import 'package:shared_preferences/shared_preferences.dart';

// import 'package:image_picker/image_picker.dart';

class AuthClient {
  var client = http.Client();
  var ip = '192.168.1.103';
  var port = 2323;

  Future<dynamic> getProducts() async {
    var uri = Uri(
      scheme: 'http',
      host: ip,
      port: port,
      path: 'Products/Index',
    );

    var response = await client.get(uri);
    if (response.statusCode == 200 || response.statusCode == 201) {
      print(response.body);
      return response.body;
    } else {
      //throw exception and catch it in UI
      print('error not found');
      print(response.statusCode);
      print(response.body);
    }
  }

  Future<dynamic> getPoints() async {
    var uri = Uri(
      scheme: 'http',
      host: ip,
      port: port,
      path: 'api/user/get/points',
    );

    var response = await client.get(uri);
    if (response.statusCode == 200 || response.statusCode == 201) {
      print(response.body);
      return response.body;
    } else {
      //throw exception and catch it in UI
      print('error not found');
      print(response.statusCode);
      print(response.body);
    }
  }

  Future<String> postSingUp(var json) async {
    //var _payload = json.encode(object);
    //var url = Uri.parse('http://192.168.43.33:2323/api/register');
    var uri = Uri(
      scheme: 'http',
      host: ip,
      port: port,
      path: '/api/register',
    );
    var response = await client.post(uri,
        body: jsonEncode(json),
        headers: {"Content-Type": "application/json", "Accept": "*/*"});
    print(response.statusCode);
    if (response.statusCode == 201 || response.statusCode == 200) {
      print(response.statusCode);
      print(response.body);
      return response.body;
    } else {
      print('error not found');
      print(response.body);
      return '';
      //throw exception and catch it in UI
    }
  }

  Future<String> postSingIn(String email, String password) async {
    //var _payload = json.encode(object);

    Map<String, String> json = {"email": email, "password": password};

    var uri = Uri(
      scheme: 'http',
      host: ip,
      port: port,
      path: 'api/auth',
    );
    var response = await client.post(uri,
        body: jsonEncode(json),
        headers: {"Content-Type": "application/json", "Accept": "*/*"});
    print(response.statusCode);
    if (response.statusCode == 201 || response.statusCode == 200) {
      print(response.statusCode);
      print(response.body);
      return response.body;
    } else {
      print('error not found');
      print(response.body);
      return '';
      //throw exception and catch it in UI
    }
  }

  Future<dynamic> getProfileProducts(String email) async {
    // email=email.replaceAll('@', '%40');

    var url = Uri.parse('http://$ip/Products/Index?email=$email');
    var uri = Uri(
        scheme: 'http',
        host: ip,
        port: port,
        path: 'Products/Index',
        queryParameters: {'email': email});
    print('$url\n' + uri.toString());

    var response = await client.get(uri);
    if (response.statusCode == 200 || response.statusCode == 201) {
      print(response.body);
      return response.body;
    } else {
      //throw exception and catch it in UI
      print('error not found');
      print(response.statusCode);
      print(response.body);
    }
  }

  Future<dynamic> getUserData(String email) async {
    var uri = Uri(
        scheme: 'http',
        host: ip,
        port: port,
        path: '/User/GetProfile',
        queryParameters: {'Email': email});
    print(uri.toString());

    var response = await client.get(uri);
    if (response.statusCode == 200 || response.statusCode == 201) {
      print(response.body);
      return response.body;
    } else {
      //throw exception and catch it in UI
      print('error not found');
      print(response.statusCode);
      print(response.body);
    }
  }

  Future<bool> getConfirmEmail(String email) async {
    //var _payload = json.encode(object);

    email = email.replaceAll('@', '%40');
    print(email);

    var url = Uri.parse(
        'http://$ip/User/SendCodeWordToEmailToConfirmEmail?email=$email');
    var uri = Uri(
      scheme: 'http',
      host: ip,
      port: port,
      path: "User/SendCodeWordToEmailToConfirmEmail?email=$email",
    );
    var response = await client.get(url);
    print(response.statusCode);
    if (response.statusCode == 201 || response.statusCode == 200) {
      print(response.statusCode);
      return true;
    } else {
      print('error not found');
      print(response.body);
      return false;
      //throw exception and catch it in UI
    }
  }

  Future<bool> postConfirmEmail(String email, String kod) async {
    //var _payload = json.encode(object);

    Map<String, String> json = {"secretWord": kod, "email": email};

    var uri = Uri(
      scheme: 'http',
      host: ip,
      port: port,
      path: 'User/ConfirmEmail',
    );
    var response = await client.post(uri,
        body: jsonEncode(json),
        headers: {"Content-Type": "application/json", "Accept": "*/*"});
    print(response.statusCode);
    if (response.statusCode == 201 || response.statusCode == 200) {
      print(response.statusCode);
      return true;
    } else {
      print('error not found');
      print(response.body);
      return false;
      //throw exception and catch it in UI
    }
  }

  Future<int> postProductAdd(var json) async {
    //var _payload = json.encode(object);

    var uri = Uri(
      scheme: 'http',
      host: ip,
      port: port,
      path: 'Products/AddWithEmail',
    );

    var response = await client.post(uri,
        body: jsonEncode(json),
        headers: {"Content-Type": "application/json", "Accept": "*/*"});
    print(response.statusCode);
    if (response.statusCode == 201 || response.statusCode == 200) {
      print(response.statusCode);
      return int.parse(response.body);
    } else {
      print('error not found');
      print(response.body);
      return 0;
      //throw exception and catch it in UI
    }
  }

  Future<bool> postProductPhotoAdd(
      XFile file, LatLng lng, int select, String description) async {
    var uri = Uri(
      scheme: 'http',
      host: ip,
      port: port,
      path: 'api/respond',
    );
    var request = http.MultipartRequest('POST', uri);

    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userId = prefs.getString('userId');

//for image and videos and files

// request.files.add(await http.MultipartFile.fromPath("images", path));
    final fileBytes = await file.readAsBytes();
    final httpImage = http.MultipartFile.fromBytes('photo', fileBytes.toList(),
        contentType: MediaType('image', 'jpeg'), filename: file.name);
//for completeing the request
    request.files.add(httpImage);
    request.fields['x'] = lng.latitude.toString();
    request.fields['y'] = lng.longitude.toString();
    request.fields['user_id'] = userId!;
    request.fields['type'] = select == 1
        ? 'sidewalk'
        : select == 2
            ? 'cycle_road'
            : 'road';
    request.fields['description'] = description;
    var response = await request.send();

//for getting and decoding the response into json format
    var responsed = await http.Response.fromStream(response);
// final responseData = json.decode();

    if (response.statusCode == 200) {
      print("SUCCESS");
      print(responsed.body);
      return true;
    } else {
      print(response.statusCode);
      print(responsed.body);
      print("ERROR");
      return false;
    }
  }
}
