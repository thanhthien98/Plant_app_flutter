import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/screens/home/components/featured_plants.dart';
import 'package:flutter_application_1/screens/home/components/header_with_searchbox.dart';
import 'package:flutter_application_1/screens/home/components/recommend_plant.dart';
import 'package:flutter_application_1/screens/home/components/title_with_more_btn.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recommend",
            press: () {},
          ),
          const RecommendsPlants(),
          TitleWithMoreBtn(
            title: "Feature Plants",
            press: () {},
          ),
          const FeaturedPlants(),
          const SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
