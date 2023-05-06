import 'package:cargo_app/admin/sppageAdmin.dart';
import 'package:cargo_app/main/menu_page.dart';
import 'package:cargo_app/main/my_orders.dart';
import 'package:cargo_app/main/sppage.dart';
import 'package:cargo_app/main/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Main extends StatefulWidget {
  final role;
  const Main({Key? key, required this.role}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int index = 0;
  late List<Widget> screens;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    screens = (widget.role == 'ROLE_USER')
        ? [const SPPage(), const MyOrders(), const MenuPage()]
        : [
            const spAdminPage(),
            const MyOrders(),
            const MenuPage()
          ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(new FocusNode()),
          child: screens[index]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
            child: BottomNavigationBar(
              elevation: 20,
              currentIndex: index,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.black,
              selectedFontSize: 12,
              unselectedFontSize: 12,
              onTap: (ind) {
                setState(() => index = ind);
              },
              type: BottomNavigationBarType.fixed,
              backgroundColor: Color(0xffF4F4F4),
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.location_on_outlined,
                      color: index == 1 ? Colors.blue : Colors.black,
                    ),
                    label: 'Пункты'),
                BottomNavigationBarItem(

                    // icon: Icon(
                    // Icons.play_arrow_outlined,
                    icon: SvgPicture.asset(
                      'assets/icons/send.svg',
                      color: index == 2 ? Colors.blue : Colors.black,
                    ),
                    label: 'Справочники'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home_outlined,
                      color: index == 3 ? Colors.blue : Colors.black,
                    ),
                    label: 'Меню'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
