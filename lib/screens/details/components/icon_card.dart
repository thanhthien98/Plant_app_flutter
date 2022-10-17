import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_svg/svg.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      padding: const EdgeInsets.all(kDefaultPadding / 2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 10),
                blurRadius: 22,
                color: kPrimaryColor.withOpacity(0.22))
          ]),
      child: SvgPicture.asset(icon),
    );
  }
}
