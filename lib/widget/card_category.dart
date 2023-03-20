import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery/shared/theme.dart';

class CardCategory extends StatelessWidget {
  const CardCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      width: 120,
      height: 180,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(18.0),
        ),
      ),
      child: Stack(
        children: [
          Container(
            transform: Matrix4.translationValues(0.0, -7, 0),
            width: 120,
            height: 100,
            child: SvgPicture.asset(
              'assets/svg/main_shape.svg',
              semanticsLabel: 'A red up arrow',
              fit: BoxFit.fitWidth,
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // uncoment 4
                const SizedBox(height: 35),

                // uncoment 7

                CircleAvatar(
                  radius: 28.0,
                  backgroundColor: successColor,
                  child: Image.asset(
                    "assets/icon/restaurant.png",
                    width: 40.0,
                    height: 40.0,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 10),
                // uncoment 6

                const Text(
                  "Restaurant",
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                // uncoment 5

                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                    color: primaryColor,
                  ),
                  child: const Icon(
                    Icons.chevron_right,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
