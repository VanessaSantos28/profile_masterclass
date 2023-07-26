import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final String appBarTitle;

  const AppBarWidget({super.key, required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff121517),
      title: Row(
        children: [
          Image.asset(
            "assets/images/logo.png",
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                appBarTitle,
                style: const TextStyle(
                  color: Color(0XFFEDF4F8),
                  fontFamily: "Poppins",
                  fontSize: 20,
                ),
              ),
              const Text(
                "Flutterando Masterclass",
                style: TextStyle(
                  color: Color(0XFFEDF4F8),
                  fontFamily: "Poppins-Medium",
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 130,
          ),
          const Icon(
            Icons.dark_mode,
            color: Colors.white,
            size: 35,
          )
        ],
      ),
    );
  }
}
