import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/screens/details/details_screen.dart';

class RecommendsPlants extends StatelessWidget {
  const RecommendsPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecommendPlantCard(
            image: "assets/images/image_1.png",
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const DetailScreen())));
            },
            title: "samantha",
            price: 440,
            country: "russia",
          ),
          RecommendPlantCard(
            image: "assets/images/image_1.png",
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const DetailScreen())));
            },
            title: "samantha",
            price: 440,
            country: "russia",
          ),
          RecommendPlantCard(
            image: "assets/images/image_1.png",
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const DetailScreen())));
            },
            title: "samantha",
            price: 440,
            country: "russia",
          ),
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        margin: const EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding * 2.5),
        width: size.width * 0.4,
        child: Column(children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity((0.23)))
                  ]),
              child: Row(
                children: <Widget>[
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "$title\n".toUpperCase(),
                        style: Theme.of(context).textTheme.button),
                    TextSpan(
                        text: "$country".toUpperCase(),
                        style: TextStyle(color: kPrimaryColor.withOpacity(0.5)))
                  ])),
                  const Spacer(),
                  RichText(
                      text: TextSpan(
                          text: "\$$price",
                          style: Theme.of(context)
                              .textTheme
                              .button
                              ?.copyWith(color: kPrimaryColor)))
                ],
              ),
            ),
          )
        ]));
  }
}
