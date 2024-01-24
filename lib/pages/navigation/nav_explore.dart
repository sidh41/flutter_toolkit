import 'package:flutter/material.dart';
import 'package:flutter_toolkit/design_System/constants.dart';

class NavExplore extends StatelessWidget {
  const NavExplore({super.key});

  @override
  Widget build(BuildContext context) {
    String title = 'explore';

    return Center(
      child: Container(
        height: double.infinity,
        color: primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.explore,
              color: whiteColor,
              size: xxlFontSize,
            ),
            const SizedBox(width: 8),
            Text(
              title.toUpperCase(),
              style: const TextStyle(color: whiteColor, fontSize: xlFontSize),
            ),
          ],
        ),
      ),
    );
  }
}
