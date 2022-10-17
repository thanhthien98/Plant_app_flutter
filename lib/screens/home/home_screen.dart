import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/my_bottom_nav_bar.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/screens/home/components/body.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/menu.svg'),
        onPressed: () {},
      ),
      backgroundColor: kPrimaryColor,
    );
  }
}
