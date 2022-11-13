import 'package:flutter/material.dart';
import 'package:fugi_furniture_shop/themes/constant_color.dart';
import 'package:fugi_furniture_shop/themes/font_style.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 243,
        width: 185,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Center(
                  child: Image.asset(
                    "assets/png/stylechair.png",
                    width: 185.0,
                    height: 163.0,
                    fit: BoxFit.cover,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isFavorite == true;
                    });
                    debugPrint(isFavorite.toString());
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 34,
                        height: 34,
                        decoration: BoxDecoration(
                          color: bgColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.favorite_outline,
                          color: isFavorite ? Colors.grey : Colors.red,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8,
                right: 8,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Stylist Chair",
                    style: blackTextStyle,
                  ),
                  Row(
                    children: [
                      Text(
                        "\$240",
                        style: blackTextStyle.copyWith(
                          color: mainTextColor,
                          fontSize: 30,
                        ),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.star_border,
                        color: Colors.amber[300],
                        size: 15,
                      ),
                      Text(
                        "4.7",
                        style: blackTextStyle.copyWith(
                          color: mainTextColor,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
