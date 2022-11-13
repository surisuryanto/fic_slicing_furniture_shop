import 'package:flutter/material.dart';
import 'package:fugi_furniture_shop/themes/constant_color.dart';

class BottomNavbarItem extends StatelessWidget {
  final String imageUrl;
  final bool isActive;

  const BottomNavbarItem(
      {Key? key, required this.imageUrl, required this.isActive})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Container(
          decoration: BoxDecoration(
            color: buttonColor,
          ),
          child: 
          Image.asset(
            imageUrl,
            width: 26,
          ),
        ),
        const Spacer(),
        // isActive
        //     ? Container(
        //         width: 30,
        //         height: 2,
        //         decoration: const BoxDecoration(
        //             color: Colors.blue,
        //             borderRadius:
        //                 BorderRadius.vertical(top: Radius.circular(1808))),
        //       )
        //     : Container(),
      ],
    );
  }
}
