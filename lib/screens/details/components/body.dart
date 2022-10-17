import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/screens/details/components/icon_card.dart';
import 'package:flutter_application_1/screens/details/components/image_and_icons.dart';
import 'package:flutter_application_1/screens/details/components/title_and_price.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(size: size),
          const TitleAndPrice(
            title: "angelica",
            country: "Russia",
            price: 440,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
                SizedBox(
                  width: size.width / 2,
                  height: 84,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: kPrimaryColor,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20)))),
                    child: const Text(
                      "Buy Now",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Expanded(
                    child: TextButton(
                  child: const Text(
                    "Description",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {},
                ))
              ],
            ),
          ),
          const SizedBox(height: kDefaultPadding * 2)
        ],
      ),
    );
  }
}
