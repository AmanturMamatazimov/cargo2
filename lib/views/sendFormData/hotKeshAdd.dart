import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

import 'package:image_picker/image_picker.dart';

import '../../main/main.dart';
import '../../services/service.dart';

class SendFormData extends StatefulWidget {
  final LatLng latLng;
  const SendFormData({Key? key, required this.latLng}) : super(key: key);

  @override
  _SendFormDataState createState() => _SendFormDataState();
}

class _SendFormDataState extends State<SendFormData> {
  late String emailGet;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  String hintText = 'Введите описания';

  List<XFile> imageFile = [];
  late XFile imageFileCamera;
  final ImagePicker _picker = ImagePicker();
  int select = 0;

  TextEditingController price = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController description = TextEditingController();

  Widget bottomSheet() {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          const Text(
            "Выберите фото",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            InkWell(
              onTap: () {
                print('Camera');
                takePhotoCamera();
                print(imageFileCamera.path);
              },
              child: Ink(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    const Icon(Icons.camera),
                    const SizedBox(height: 10),
                    const Text("Камера")
                  ],
                ),
              ),
            ),
            const SizedBox(width: 20),
            InkWell(
              onTap: () async {
                print('Galery');
                await takePhotoGalery();
                print(imageFile[0].path);
              },
              child: Ink(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    const Icon(Icons.image),
                    const SizedBox(height: 10),
                    const Text("Гелерея")
                  ],
                ),
              ),
            ),

            /*IconButton(onPressed: (){
              takePhoto(ImageSource.camera);
            }, icon: Icon(Icons.camera),
            ),*/

            /*Expanded(
              child: ElevatedButton.icon(

                icon: Icon(Icons.camera),
                onPressed: () {
                  takePhoto(ImageSource.camera);
                },
                label: Text(''),
              ),
            ),*/
            /*IconButton(onPressed: (){takePhoto(ImageSource.gallery);}, icon: Icon(Icons.image),),*/
            /*Expanded(
              child: ElevatedButton.icon(
                icon: Icon(Icons.image),
                onPressed: () {
                  takePhoto(ImageSource.gallery);
                },
                label: Text(''),
              ),
            ),*/
          ])
        ],
      ),
    );
  }

  Future<void> takePhotoGalery() async {
    /*final pickedFile = await _picker.getImage(
      source: source
    );*/
    final List<XFile> images = await _picker.pickMultiImage();
    setState(() {
      imageFile.addAll(images);
    });
  }

  void takePhotoCamera() async {
    /*final pickedFile = await _picker.getImage(
      source: source
    );*/
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      imageFile.add(photo!);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          // Container(
          //   width: 142,
          //   height: 142,
          //   padding: EdgeInsets.all(9),
          //   decoration: BoxDecoration(
          //       shape: BoxShape.circle,
          //       color: Colors.white,
          //       boxShadow: [
          //         BoxShadow(
          //             blurRadius: 5,
          //             offset: Offset(0, 0),
          //             color: Color(0x26000000))
          //       ]),
          //   child: Container(
          //     padding: EdgeInsets.all(9),
          //     decoration: BoxDecoration(
          //         shape: BoxShape.circle,
          //         color: Colors.white,
          //         boxShadow: [
          //           BoxShadow(
          //               blurRadius: 5,
          //               offset: Offset(0, 0),
          //               color: Color(0x26000000))
          //         ]),
          //     child: Stack(
          //       children: [
          //         Container(
          //           padding: EdgeInsets.all(8),
          //           decoration: BoxDecoration(
          //             color: Colors.white,
          //             shape: BoxShape.circle,
          //             border: Border.all(
          //                 width: 0.5,
          //                 color: Color(0xFF929292).withOpacity(0.37)),
          //             boxShadow: [
          //               BoxShadow(
          //                   blurRadius: 16,
          //                   offset: Offset(0, 0),
          //                   color: Color(0x33000000))
          //             ],
          //             image: DecorationImage(
          //                 image: AssetImage('assets/img/hotKesh/addIcon.png')),
          //           ),
          //         ),
          //         Positioned(
          //           top: 0,
          //           right: 85,
          //           child: GestureDetector(
          //             onTap: (){},
          //             child: Container(
          //               padding: EdgeInsets.all(9),
          //               decoration: BoxDecoration(
          //                 shape: BoxShape.circle,
          //                 color: Colors.blue,
          //               ),
          //               child: Image.asset(
          //                 'assets/img/prof/editingIcon.png',
          //                 width: 15,
          //                 height: 15,
          //               ),
          //             ),
          //           ),
          //         )
          //       ],
          //     ),
          //   ),
          // ),
          // SizedBox(height: 17),
          // Text('Загрузить аватар',textAlign: TextAlign.center,style: TextStyle(color: Color(0xFF515151),fontSize: 16,fontWeight: FontWeight.w400)),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text('Подать объявление',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w400)),
          ),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.only(left: 39.0),
            child: Text('Загрузите фото',
                style: TextStyle(
                    color: Color(0xFF515151),
                    fontSize: 16,
                    fontWeight: FontWeight.w400)),
          ),
          const SizedBox(height: 7),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (imageFile.length > 0)
                  Container(
                    height: 80,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, _) =>
                          const SizedBox(width: 5),
                      itemCount: imageFile.length,
                      itemBuilder: (context, index) => Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.blue,
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: FileImage(File(imageFile[index].path)),
                            )),
                      ),
                    ),
                  ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: ((builder) => bottomSheet()),
                    );
                  },
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.blue,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(Icons.add, color: Colors.blue, size: 25),
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 19.0),
                  child: Text('Название',
                      style: TextStyle(
                          color: Color(0xFF515151),
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                ),
                const SizedBox(height: 7),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 19),
                  height: 45,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.blue),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: name,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Название объявления',
                        hintStyle: TextStyle(
                          color: Color(0xFFA6A6A6),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 19.0),
                  child: Text('Описания объявления',
                      style: TextStyle(
                          color: Color(0xFF515151),
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                ),
                const SizedBox(height: 7),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 19),
                  height: 90,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.blue),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: description,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Введите описание',
                        hintStyle: TextStyle(
                          color: Color(0xFFA6A6A6),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (select == 1)
                            select = 0;
                          else
                            select = 1;
                        });
                      },
                      child: Container(
                          width: 105,
                          height: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color:
                                select == 1 ? Colors.blue : Color(0xffEDEDEF),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(FontAwesomeIcons.shoePrints,
                                  size: 18,
                                  color: select == 1
                                      ? Colors.white
                                      : Colors.black),
                              Text('Тротуар',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: select == 1
                                          ? Colors.white
                                          : Color(0xFF444444)))
                            ],
                          )),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (select == 2)
                            select = 0;
                          else
                            select = 2;
                        });
                      },
                      child: Container(
                          width: 105,
                          height: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color:
                                select == 2 ? Colors.blue : Color(0xffEDEDEF),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                FontAwesomeIcons.bicycle,
                                size: 20,
                                color:
                                    select == 2 ? Colors.white : Colors.black,
                              ),
                              Text(
                                'Велодорожка',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: select == 2
                                        ? Colors.white
                                        : Color(0xFF444444)),
                              )
                            ],
                          )),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (select == 3)
                            select = 0;
                          else
                            select = 3;
                        });
                      },
                      child: Container(
                          width: 105,
                          height: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color:
                                select == 3 ? Colors.blue : Color(0xffEDEDEF),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(FontAwesomeIcons.car,
                                  size: 18,
                                  color: select == 3
                                      ? Colors.white
                                      : Colors.black),
                              Text('Дорожный',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: select == 3
                                          ? Colors.white
                                          : Color(0xFF444444)))
                            ],
                          )),
                    ),
                  ],
                ),
                const SizedBox(height: 49),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: Container(
                        width: 125,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1, color: Colors.blue)),
                        child: const Center(
                          child: Text('Отменить',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 14)),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () async {
                        print('basyldy');
                        bool ans2 = await AuthClient().postProductPhotoAdd(
                            imageFile[0],
                            widget.latLng,
                            select,
                            description.text);
                        if (ans2) {
                          Fluttertoast.showToast(
                              msg: 'Успешно добавлено!',
                              fontSize: 18,
                              gravity: ToastGravity.BOTTOM,
                              backgroundColor: Colors.green,
                              textColor: Colors.white);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Main(),
                            ),
                          );
                        } else {
                          Fluttertoast.showToast(
                              msg: 'Вышла ошибка!',
                              fontSize: 18,
                              gravity: ToastGravity.BOTTOM,
                              backgroundColor: Colors.red,
                              textColor: Colors.white);
                        }
                      },
                      /* {
                        String descriptionText =
                            name.text + 'name' + description.text;
                        var json = {
                          "description": descriptionText,
                          "price": price.text,
                          "categoryId": 1,
                          "userEmail": emailGet
                        };
                        int ans = await AuthClient().postProductAdd(json);
                        if (ans != 0) {
                          print(imageFile[0].path);
                          bool ans2 = await AuthClient()
                              .postProductPhotoAdd(imageFile[0], ans);
                          if (ans2) {
                            Fluttertoast.showToast(
                                msg: 'Успешно добавлено!',
                                fontSize: 18,
                                gravity: ToastGravity.BOTTOM,
                                backgroundColor: Colors.green,
                                textColor: Colors.white);
                            Provider.of<SelectTabProvider>(context,
                                    listen: false)
                                .toggleSelect(Dashboard(), 0);
                          } else {
                            Fluttertoast.showToast(
                                msg: 'Вышла ошибка!',
                                fontSize: 18,
                                gravity: ToastGravity.BOTTOM,
                                backgroundColor: Colors.red,
                                textColor: Colors.white);
                          }
                        } else {
                          Fluttertoast.showToast(
                              msg: 'Error!',
                              fontSize: 18,
                              gravity: ToastGravity.BOTTOM,
                              backgroundColor: Colors.red,
                              textColor: Colors.white);
                        }
                      }*/
                      child: Container(
                        width: 125,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                            child: Text(
                          'Отправить',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 90),
        ],
      ),
    );
  }
}
