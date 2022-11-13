import 'package:flutter/material.dart';
import 'package:fugi_furniture_shop/screen/widget/card.dart';
import 'package:fugi_furniture_shop/screen/widget/widget_categories.dart';
import 'package:fugi_furniture_shop/themes/constant_color.dart';
import 'package:fugi_furniture_shop/themes/font_style.dart';

import '../widget/bottom_navigationbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int _selectedIndex = 0;
  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  double edge = 24;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: ListView(
          children: [
            Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const ImageIcon(
                  AssetImage(
                    "assets/png/iconleft.png",
                  ),
                  size: 24.0,
                ),
                const Spacer(),
                Text(
                  "Home",
                  style: blackTextStyle,
                ),
                const Spacer(),
                Icon(
                  Icons.search_outlined,
                  color: mainTextColor,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Discover the most \nmodern furniture",
              style: blackTextStyle.copyWith(fontSize: 22),
            ),
            const SizedBox(
              height: 30,
            ),
            const CategoriesWidget(),
            const SizedBox(
              height: 30,
            ),
            const CardWidget(),
            const SizedBox(
              height: 30,
            ),
            const CardWidget(),
            const SizedBox(
              height: 30,
            ),
            const CardWidget(),
            const SizedBox(
              height: 30,
            ),
            const CardWidget(),
            const SizedBox(
              height: 30,
            ),
            const CardWidget(),
            const SizedBox(
              height: 30,
            ),
            const CardWidget(),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 52,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(horizontal: edge),
        decoration: BoxDecoration(
          // color: const Color(0xffF6F7F8),
          color: buttonColor,
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            BottomNavbarItem(
              imageUrl: 'assets/png/modern.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/png/modern.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/png/modern.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/png/modern.png',
              isActive: false,
            )
          ],
        ),
      ),
    );
  }
}
